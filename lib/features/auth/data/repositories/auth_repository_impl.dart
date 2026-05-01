import 'package:field_management_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:field_management_app/features/auth/data/mappers/auth_mappers.dart';
import 'package:field_management_app/features/auth/domain/entities/auth_models.dart';
import 'package:field_management_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(ref.watch(authRemoteDataSourceProvider));
});

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._remoteDataSource);

  final AuthRemoteDataSource _remoteDataSource;

  @override
  Future<AuthProfile> getProfile() async {
    final dto = await _remoteDataSource.getProfile();
    return dto.toEntity();
  }

  @override
  Future<AuthSession> login(LoginCredentials credentials) async {
    return _remoteDataSource.login(credentials);
  }

  @override
  Future<void> syncUser() => _remoteDataSource.syncUser();
}
