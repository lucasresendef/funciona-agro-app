import 'package:field_management_app/core/auth/local_auth_service.dart';
import 'package:field_management_app/core/storage/remember_me_service.dart';
import 'package:field_management_app/features/auth/domain/entities/auth_models.dart';
import 'package:field_management_app/features/auth/presentation/controllers/auth_controller.dart';
import 'package:formz/formz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

enum LoginValidationError { empty }

class UsernameInput extends FormzInput<String, LoginValidationError> {
  const UsernameInput.pure() : super.pure('');

  const UsernameInput.dirty([super.value = '']) : super.dirty();

  @override
  LoginValidationError? validator(String value) {
    if (value.trim().isEmpty) {
      return LoginValidationError.empty;
    }

    return null;
  }
}

class PasswordInput extends FormzInput<String, LoginValidationError> {
  const PasswordInput.pure() : super.pure('');

  const PasswordInput.dirty([super.value = '']) : super.dirty();

  @override
  LoginValidationError? validator(String value) {
    if (value.trim().isEmpty) {
      return LoginValidationError.empty;
    }

    return null;
  }
}

class LoginFormState {
  const LoginFormState({
    this.username = const UsernameInput.pure(),
    this.password = const PasswordInput.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.rememberMe = true,
    this.hasRememberedCredentials = false,
  });

  final UsernameInput username;
  final PasswordInput password;
  final FormzSubmissionStatus status;
  final bool rememberMe;
  final bool hasRememberedCredentials;

  bool get isValid => Formz.validate([username, password]);

  LoginFormState copyWith({
    UsernameInput? username,
    PasswordInput? password,
    FormzSubmissionStatus? status,
    bool? rememberMe,
    bool? hasRememberedCredentials,
  }) {
    return LoginFormState(
      username: username ?? this.username,
      password: password ?? this.password,
      status: status ?? this.status,
      rememberMe: rememberMe ?? this.rememberMe,
      hasRememberedCredentials:
          hasRememberedCredentials ?? this.hasRememberedCredentials,
    );
  }
}

final loginFormControllerProvider =
    StateNotifierProvider<LoginFormController, LoginFormState>((ref) {
      return LoginFormController(ref);
    });

class LoginFormController extends StateNotifier<LoginFormState> {
  LoginFormController(this._ref) : super(const LoginFormState());

  final Ref _ref;
  RememberMeService get _rememberMeService =>
      _ref.read(rememberMeServiceProvider);
  LocalAuthService get _localAuthService => _ref.read(localAuthServiceProvider);

  Future<void> init() async {
    try {
      final remembered = await _rememberMeService.readCredentials();
      state = state.copyWith(hasRememberedCredentials: remembered != null);
    } catch (_) {
      state = state.copyWith(hasRememberedCredentials: false);
    }
  }

  void updateUsername(String value) {
    final username = UsernameInput.dirty(value);
    state = state.copyWith(
      username: username,
      status: FormzSubmissionStatus.initial,
    );
  }

  void updatePassword(String value) {
    final password = PasswordInput.dirty(value);
    state = state.copyWith(
      password: password,
      status: FormzSubmissionStatus.initial,
    );
  }

  void setRememberMe(bool value) {
    state = state.copyWith(rememberMe: value);
  }

  Future<void> submit() async {
    final username = UsernameInput.dirty(state.username.value);
    final password = PasswordInput.dirty(state.password.value);
    final isValid = Formz.validate([username, password]);

    state = state.copyWith(
      username: username,
      password: password,
      status: isValid
          ? FormzSubmissionStatus.inProgress
          : FormzSubmissionStatus.failure,
    );

    if (!isValid) {
      return;
    }

    await _ref
        .read(authControllerProvider.notifier)
        .login(
          LoginCredentials(
            username: username.value.trim(),
            password: password.value,
          ),
        );

    final authState = _ref.read(authControllerProvider);
    if (authState.hasError) {
      state = state.copyWith(status: FormzSubmissionStatus.failure);
      return;
    }

    if (state.rememberMe) {
      await _rememberMeService.saveCredentials(
        username: username.value.trim(),
        password: password.value,
      );
    } else {
      await _rememberMeService.clearCredentials();
    }

    state = state.copyWith(
      status: FormzSubmissionStatus.success,
      hasRememberedCredentials: state.rememberMe,
    );
  }

  Future<void> loginWithDeviceAuth() async {
    LoginRememberedCredentials? remembered;
    try {
      remembered = await _rememberMeService.readCredentials();
    } catch (_) {
      state = state.copyWith(status: FormzSubmissionStatus.failure);
      return;
    }
    if (remembered == null) {
      state = state.copyWith(hasRememberedCredentials: false);
      return;
    }

    final canAuthenticate = await _localAuthService.canAuthenticate();
    if (!canAuthenticate) {
      state = state.copyWith(status: FormzSubmissionStatus.failure);
      return;
    }

    final authenticated = await _localAuthService.authenticate();
    if (!authenticated) {
      state = state.copyWith(status: FormzSubmissionStatus.failure);
      return;
    }

    state = state.copyWith(status: FormzSubmissionStatus.inProgress);
    await _ref
        .read(authControllerProvider.notifier)
        .login(
          LoginCredentials(
            username: remembered.username,
            password: remembered.password,
          ),
        );

    final authState = _ref.read(authControllerProvider);
    state = state.copyWith(
      status: authState.hasError
          ? FormzSubmissionStatus.failure
          : FormzSubmissionStatus.success,
      hasRememberedCredentials: !authState.hasError,
    );
  }
}
