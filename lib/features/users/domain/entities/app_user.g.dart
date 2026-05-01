// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUser _$AppUserFromJson(Map<String, dynamic> json) => _AppUser(
  metadata: AuditMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  keycloakUserId: json['keycloakUserId'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  isAdmin: json['isAdmin'] as bool? ?? false,
);

Map<String, dynamic> _$AppUserToJson(_AppUser instance) => <String, dynamic>{
  'metadata': instance.metadata,
  'keycloakUserId': instance.keycloakUserId,
  'name': instance.name,
  'email': instance.email,
  'isAdmin': instance.isAdmin,
};

_CreateAppUserInput _$CreateAppUserInputFromJson(Map<String, dynamic> json) =>
    _CreateAppUserInput(
      keycloakUserId: json['keycloakUserId'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      isAdmin: json['isAdmin'] as bool? ?? false,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$CreateAppUserInputToJson(_CreateAppUserInput instance) =>
    <String, dynamic>{
      'keycloakUserId': instance.keycloakUserId,
      'name': instance.name,
      'email': instance.email,
      'isAdmin': instance.isAdmin,
      'active': instance.active,
    };

_UpdateAppUserInput _$UpdateAppUserInputFromJson(Map<String, dynamic> json) =>
    _UpdateAppUserInput(
      id: json['id'] as String,
      name: json['name'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$UpdateAppUserInputToJson(_UpdateAppUserInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isAdmin': instance.isAdmin,
      'active': instance.active,
    };
