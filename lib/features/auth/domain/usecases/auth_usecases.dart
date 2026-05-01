import 'package:field_management_app/features/auth/domain/entities/auth_models.dart';
import 'package:field_management_app/features/auth/domain/repositories/auth_repository.dart';

class LoginUseCase {
  const LoginUseCase(this._repository);

  final AuthRepository _repository;

  Future<AuthSession> call(LoginCredentials credentials) =>
      _repository.login(credentials);
}

class GetAuthProfileUseCase {
  const GetAuthProfileUseCase(this._repository);

  final AuthRepository _repository;

  Future<AuthProfile> call() => _repository.getProfile();
}

class SyncUserUseCase {
  const SyncUserUseCase(this._repository);

  final AuthRepository _repository;

  Future<void> call() => _repository.syncUser();
}
