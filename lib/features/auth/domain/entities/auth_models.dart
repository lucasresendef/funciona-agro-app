import 'package:field_management_app/features/permissions/domain/entities/farm_user_permission.dart';
import 'package:field_management_app/features/users/domain/entities/app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@freezed
abstract class AuthUserIdentity with _$AuthUserIdentity {
  const factory AuthUserIdentity({
    required String sub,
    required String tenantId,
    String? name,
    String? email,
    String? preferredUsername,
    String? scope,
    @Default(<String>[]) List<String> realmRoles,
    @Default(<String, List<String>>{}) Map<String, List<String>> resourceRoles,
  }) = _AuthUserIdentity;

  factory AuthUserIdentity.fromJson(Map<String, dynamic> json) =>
      _$AuthUserIdentityFromJson(json);
}

@freezed
abstract class AuthProfile with _$AuthProfile {
  const factory AuthProfile({
    required AuthUserIdentity authUser,
    required AppUser user,
    @Default(<FarmUserPermission>[]) List<FarmUserPermission> permissions,
  }) = _AuthProfile;

  factory AuthProfile.fromJson(Map<String, dynamic> json) =>
      _$AuthProfileFromJson(json);
}

@freezed
abstract class AuthSession with _$AuthSession {
  const factory AuthSession({
    required String accessToken,
    String? refreshToken,
    String? tokenType,
    int? expiresIn,
    int? refreshExpiresIn,
    AuthProfile? profile,
  }) = _AuthSession;

  factory AuthSession.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionFromJson(json);
}

@freezed
abstract class LoginCredentials with _$LoginCredentials {
  const factory LoginCredentials({
    required String username,
    required String password,
  }) = _LoginCredentials;

  factory LoginCredentials.fromJson(Map<String, dynamic> json) =>
      _$LoginCredentialsFromJson(json);
}
