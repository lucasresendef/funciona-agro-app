// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthUserIdentity _$AuthUserIdentityFromJson(Map<String, dynamic> json) =>
    _AuthUserIdentity(
      sub: json['sub'] as String,
      tenantId: json['tenantId'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      preferredUsername: json['preferredUsername'] as String?,
      scope: json['scope'] as String?,
      realmRoles:
          (json['realmRoles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      resourceRoles:
          (json['resourceRoles'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              (e as List<dynamic>).map((e) => e as String).toList(),
            ),
          ) ??
          const <String, List<String>>{},
    );

Map<String, dynamic> _$AuthUserIdentityToJson(_AuthUserIdentity instance) =>
    <String, dynamic>{
      'sub': instance.sub,
      'tenantId': instance.tenantId,
      'name': instance.name,
      'email': instance.email,
      'preferredUsername': instance.preferredUsername,
      'scope': instance.scope,
      'realmRoles': instance.realmRoles,
      'resourceRoles': instance.resourceRoles,
    };

_AuthProfile _$AuthProfileFromJson(Map<String, dynamic> json) => _AuthProfile(
  authUser: AuthUserIdentity.fromJson(json['authUser'] as Map<String, dynamic>),
  user: AppUser.fromJson(json['user'] as Map<String, dynamic>),
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => FarmUserPermission.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FarmUserPermission>[],
);

Map<String, dynamic> _$AuthProfileToJson(_AuthProfile instance) =>
    <String, dynamic>{
      'authUser': instance.authUser,
      'user': instance.user,
      'permissions': instance.permissions,
    };

_AuthSession _$AuthSessionFromJson(Map<String, dynamic> json) => _AuthSession(
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String?,
  tokenType: json['tokenType'] as String?,
  expiresIn: (json['expiresIn'] as num?)?.toInt(),
  refreshExpiresIn: (json['refreshExpiresIn'] as num?)?.toInt(),
  profile: json['profile'] == null
      ? null
      : AuthProfile.fromJson(json['profile'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuthSessionToJson(_AuthSession instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'refreshExpiresIn': instance.refreshExpiresIn,
      'profile': instance.profile,
    };

_LoginCredentials _$LoginCredentialsFromJson(Map<String, dynamic> json) =>
    _LoginCredentials(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginCredentialsToJson(_LoginCredentials instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
