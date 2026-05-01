import 'package:field_management_app/features/permissions/data/dtos/farm_permission_dtos.dart';
import 'package:field_management_app/features/users/data/dtos/app_user_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dtos.freezed.dart';
part 'auth_dtos.g.dart';

@freezed
abstract class AuthTokenResponseDto with _$AuthTokenResponseDto {
  const factory AuthTokenResponseDto({
    required String accessToken,
    String? refreshToken,
    String? tokenType,
    int? expiresIn,
    int? refreshExpiresIn,
  }) = _AuthTokenResponseDto;

  factory AuthTokenResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenResponseDtoFromJson(_normalizeAuthTokenResponseJson(json));
}

@freezed
abstract class AuthUserIdentityDto with _$AuthUserIdentityDto {
  const factory AuthUserIdentityDto({
    required String sub,
    required String tenantId,
    String? name,
    String? email,
    String? preferredUsername,
    String? scope,
    @Default(<String>[]) List<String> realmRoles,
    @Default(<String, List<String>>{}) Map<String, List<String>> resourceRoles,
  }) = _AuthUserIdentityDto;

  factory AuthUserIdentityDto.fromJson(Map<String, dynamic> json) =>
      _$AuthUserIdentityDtoFromJson(_normalizeAuthUserIdentityJson(json));
}

@freezed
abstract class AuthProfilePayloadDto with _$AuthProfilePayloadDto {
  const factory AuthProfilePayloadDto({
    required AuthUserIdentityDto authUser,
    required AppUserDto user,
    @Default(<FarmUserPermissionDto>[]) List<FarmUserPermissionDto> permissions,
  }) = _AuthProfilePayloadDto;

  factory AuthProfilePayloadDto.fromJson(Map<String, dynamic> json) =>
      _$AuthProfilePayloadDtoFromJson(json);
}

Map<String, dynamic> _normalizeAuthTokenResponseJson(
  Map<String, dynamic> json,
) {
  final normalized = Map<String, dynamic>.from(json);

  normalized['accessToken'] ??= json['access_token'];
  normalized['refreshToken'] ??= json['refresh_token'];
  normalized['tokenType'] ??= json['token_type'];
  normalized['expiresIn'] ??= json['expires_in'];
  normalized['refreshExpiresIn'] ??= json['refresh_expires_in'];

  return normalized;
}

Map<String, dynamic> _normalizeAuthUserIdentityJson(Map<String, dynamic> json) {
  final normalized = Map<String, dynamic>.from(json);

  normalized['tenantId'] ??= json['tenant_id'];
  normalized['preferredUsername'] ??= json['preferred_username'];
  normalized['realmRoles'] ??= _extractRealmRoles(json);
  normalized['resourceRoles'] ??= _extractResourceRoles(json);

  return normalized;
}

List<String> _extractRealmRoles(Map<String, dynamic> json) {
  final realmRoles = json['realmRoles'];
  if (realmRoles is List<dynamic>) {
    return realmRoles.whereType<String>().toList();
  }

  final realmAccess = json['realm_access'];
  if (realmAccess is Map<String, dynamic>) {
    final roles = realmAccess['roles'];
    if (roles is List<dynamic>) {
      return roles.whereType<String>().toList();
    }
  }

  return const <String>[];
}

Map<String, List<String>> _extractResourceRoles(Map<String, dynamic> json) {
  final resourceRoles = json['resourceRoles'];
  if (resourceRoles is Map<String, dynamic>) {
    return resourceRoles.map(
      (key, value) => MapEntry(key, _extractRolesList(value)),
    );
  }

  final resourceAccess = json['resource_access'];
  if (resourceAccess is Map<String, dynamic>) {
    return resourceAccess.map(
      (key, value) => MapEntry(
        key,
        value is Map<String, dynamic> ? _extractRolesList(value['roles']) : [],
      ),
    );
  }

  return const <String, List<String>>{};
}

List<String> _extractRolesList(dynamic value) {
  if (value is List<dynamic>) {
    return value.whereType<String>().toList();
  }

  return const <String>[];
}
