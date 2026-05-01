// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) => _AppUserDto(
  id: json['id'] as String,
  active: json['active'] as bool,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String?,
  createdByEmail: json['createdByEmail'] as String?,
  updatedBy: json['updatedBy'] as String?,
  updatedByEmail: json['updatedByEmail'] as String?,
  keycloakUserId: json['keycloakUserId'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  isAdmin: json['isAdmin'] as bool? ?? false,
);

Map<String, dynamic> _$AppUserDtoToJson(_AppUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'createdByEmail': instance.createdByEmail,
      'updatedBy': instance.updatedBy,
      'updatedByEmail': instance.updatedByEmail,
      'keycloakUserId': instance.keycloakUserId,
      'name': instance.name,
      'email': instance.email,
      'isAdmin': instance.isAdmin,
    };

_CreateAppUserRequestDto _$CreateAppUserRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateAppUserRequestDto(
  keycloakUserId: json['keycloakUserId'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  isAdmin: json['isAdmin'] as bool? ?? false,
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateAppUserRequestDtoToJson(
  _CreateAppUserRequestDto instance,
) => <String, dynamic>{
  'keycloakUserId': instance.keycloakUserId,
  'name': instance.name,
  'email': instance.email,
  'isAdmin': instance.isAdmin,
  'active': instance.active,
};

_UpdateAppUserRequestDto _$UpdateAppUserRequestDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateAppUserRequestDto(
  name: json['name'] as String?,
  isAdmin: json['isAdmin'] as bool?,
  active: json['active'] as bool?,
);

Map<String, dynamic> _$UpdateAppUserRequestDtoToJson(
  _UpdateAppUserRequestDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'isAdmin': instance.isAdmin,
  'active': instance.active,
};
