import 'package:field_management_app/features/auth/domain/entities/auth_models.dart';

abstract interface class AuthRepository {
  Future<AuthSession> login(LoginCredentials credentials);

  Future<AuthProfile> getProfile();

  Future<void> syncUser();
}
