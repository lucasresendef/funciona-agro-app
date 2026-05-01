import 'dart:convert';

import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/utils/debug_log.dart';
import 'package:field_management_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:field_management_app/features/auth/domain/entities/auth_models.dart';
import 'package:field_management_app/features/auth/domain/usecases/auth_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authControllerProvider = AsyncNotifierProvider<AuthController, void>(
  AuthController.new,
);

class AuthController extends AsyncNotifier<void> {
  late final SessionManager _sessionManager = ref.read(sessionManagerProvider);
  late final LoginUseCase _loginUseCase = LoginUseCase(
    ref.read(authRepositoryProvider),
  );
  late final GetAuthProfileUseCase _getAuthProfileUseCase =
      GetAuthProfileUseCase(ref.read(authRepositoryProvider));
  late final SyncUserUseCase _syncUserUseCase = SyncUserUseCase(
    ref.read(authRepositoryProvider),
  );

  @override
  void build() {}

  Future<void> bootstrap() async {
    appDebugLog('AuthController', 'bootstrap iniciado');
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _sessionManager.bootstrap();

      appDebugLog(
        'AuthController',
        'bootstrap concluido na sessao local',
        data: <String, dynamic>{
          'authenticated': _sessionManager.isAuthenticated,
          'hasProfile': _sessionManager.session?.profile != null,
          'session': _sessionManager.session?.toJson(),
        },
      );

      if (!_sessionManager.isAuthenticated) {
        appDebugLog('AuthController', 'nenhuma sessao autenticada restaurada');
        return;
      }

      appDebugLog('AuthController', 'bootstrap buscando /auth/me');
      final profile = await _getAuthProfileUseCase.call();
      appDebugLog(
        'AuthController',
        'bootstrap perfil carregado',
        data: profile.toJson(),
      );
      await _sessionManager.updateProfile(profile);
    });
  }

  Future<void> login(LoginCredentials credentials) async {
    appDebugLog(
      'AuthController',
      'login iniciado',
      data: <String, dynamic>{
        'username': credentials.username,
        'password': maskSecret(credentials.password),
      },
    );
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final session = await _loginUseCase.call(credentials);
      final jwtPayload = decodeJwtPayload(session.accessToken);
      appDebugLog(
        'AuthController',
        'token recebido do login',
        data: <String, dynamic>{
          'accessTokenGenerated': session.accessToken.isNotEmpty,
          'session': session.toJson(),
          'jwt': <String, dynamic>{
            'iss': jwtPayload?['iss'],
            'aud': jwtPayload?['aud'],
            'azp': jwtPayload?['azp'],
            'sub': jwtPayload?['sub'],
            'preferred_username': jwtPayload?['preferred_username'],
            'exp': jwtPayload?['exp'],
            'iat': jwtPayload?['iat'],
          },
        },
      );

      await _sessionManager.saveSession(session);
      appDebugLog(
        'AuthController',
        'sessao salva localmente',
        data: _sessionManager.session?.toJson(),
      );

      if (session.profile != null) {
        appDebugLog(
          'AuthController',
          'perfil inicial carregado a partir do id_token',
          data: session.profile!.toJson(),
        );
        await _sessionManager.updateProfile(session.profile!);
      }

      try {
        appDebugLog('AuthController', 'sincronizacao de usuario iniciada');
        await _syncUserUseCase.call();
        appDebugLog('AuthController', 'sincronizacao de usuario concluida');
      } catch (error, stackTrace) {
        appDebugLog(
          'AuthController',
          'sincronizacao de usuario falhou',
          data: error.toString(),
          stackTrace: stackTrace,
        );
      }

      try {
        appDebugLog(
          'AuthController',
          'buscando perfil autenticado em /auth/me',
        );
        final profile = await _getAuthProfileUseCase.call();
        appDebugLog(
          'AuthController',
          'perfil autenticado carregado',
          data: profile.toJson(),
        );
        await _sessionManager.updateProfile(profile);
      } catch (error, stackTrace) {
        appDebugLog(
          'AuthController',
          'falha ao carregar /auth/me, mantendo perfil do id_token',
          data: error.toString(),
          stackTrace: stackTrace,
        );
      }
      appDebugLog(
        'AuthController',
        'login finalizado com sucesso',
        data: jsonEncode(_sessionManager.session?.toJson()),
      );
    });
  }

  Future<void> logout() async {
    appDebugLog(
      'AuthController',
      'logout iniciado',
      data: _sessionManager.session?.toJson(),
    );
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _sessionManager.clearSession();
      appDebugLog('AuthController', 'logout concluido');
    });
  }

  Future<void> refreshProfile() async {
    appDebugLog('AuthController', 'refreshProfile iniciado');
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final profile = await _getAuthProfileUseCase.call();
      appDebugLog(
        'AuthController',
        'refreshProfile perfil carregado',
        data: profile.toJson(),
      );
      await _sessionManager.updateProfile(profile);
      appDebugLog('AuthController', 'refreshProfile concluido');
    });
  }
}
