// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthTokenResponseDto _$AuthTokenResponseDtoFromJson(
  Map<String, dynamic> json,
) => _AuthTokenResponseDto(
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String?,
  tokenType: json['tokenType'] as String?,
  expiresIn: (json['expiresIn'] as num?)?.toInt(),
  refreshExpiresIn: (json['refreshExpiresIn'] as num?)?.toInt(),
);

Map<String, dynamic> _$AuthTokenResponseDtoToJson(
  _AuthTokenResponseDto instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'tokenType': instance.tokenType,
  'expiresIn': instance.expiresIn,
  'refreshExpiresIn': instance.refreshExpiresIn,
};

_AuthUserIdentityDto _$AuthUserIdentityDtoFromJson(Map<String, dynamic> json) =>
    _AuthUserIdentityDto(
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

Map<String, dynamic> _$AuthUserIdentityDtoToJson(
  _AuthUserIdentityDto instance,
) => <String, dynamic>{
  'sub': instance.sub,
  'tenantId': instance.tenantId,
  'name': instance.name,
  'email': instance.email,
  'preferredUsername': instance.preferredUsername,
  'scope': instance.scope,
  'realmRoles': instance.realmRoles,
  'resourceRoles': instance.resourceRoles,
};

_AuthProfilePayloadDto _$AuthProfilePayloadDtoFromJson(
  Map<String, dynamic> json,
) => _AuthProfilePayloadDto(
  authUser: AuthUserIdentityDto.fromJson(
    json['authUser'] as Map<String, dynamic>,
  ),
  user: AppUserDto.fromJson(json['user'] as Map<String, dynamic>),
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map(
            (e) => FarmUserPermissionDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <FarmUserPermissionDto>[],
);

Map<String, dynamic> _$AuthProfilePayloadDtoToJson(
  _AuthProfilePayloadDto instance,
) => <String, dynamic>{
  'authUser': instance.authUser,
  'user': instance.user,
  'permissions': instance.permissions,
};
