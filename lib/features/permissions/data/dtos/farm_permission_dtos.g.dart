// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_permission_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FarmUserPermissionDto _$FarmUserPermissionDtoFromJson(
  Map<String, dynamic> json,
) => _FarmUserPermissionDto(
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
  farmId: json['farmId'] as String,
  keycloakUserId: json['keycloakUserId'] as String,
  userName: json['userName'] as String,
  userEmail: json['userEmail'] as String,
  role: $enumDecode(_$FarmUserRoleEnumMap, json['role']),
);

Map<String, dynamic> _$FarmUserPermissionDtoToJson(
  _FarmUserPermissionDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'active': instance.active,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'createdByEmail': instance.createdByEmail,
  'updatedBy': instance.updatedBy,
  'updatedByEmail': instance.updatedByEmail,
  'farmId': instance.farmId,
  'keycloakUserId': instance.keycloakUserId,
  'userName': instance.userName,
  'userEmail': instance.userEmail,
  'role': _$FarmUserRoleEnumMap[instance.role]!,
};

const _$FarmUserRoleEnumMap = {
  FarmUserRole.owner: 'OWNER',
  FarmUserRole.manager: 'MANAGER',
  FarmUserRole.operator: 'OPERATOR',
  FarmUserRole.viewer: 'VIEWER',
};

_CreateFarmPermissionRequestDto _$CreateFarmPermissionRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateFarmPermissionRequestDto(
  farmId: json['farmId'] as String,
  userId: json['userId'] as String,
  role: $enumDecode(_$FarmUserRoleEnumMap, json['role']),
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateFarmPermissionRequestDtoToJson(
  _CreateFarmPermissionRequestDto instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'userId': instance.userId,
  'role': _$FarmUserRoleEnumMap[instance.role]!,
  'active': instance.active,
};

_UpdateFarmPermissionRequestDto _$UpdateFarmPermissionRequestDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateFarmPermissionRequestDto(
  role: $enumDecodeNullable(_$FarmUserRoleEnumMap, json['role']),
  active: json['active'] as bool?,
);

Map<String, dynamic> _$UpdateFarmPermissionRequestDtoToJson(
  _UpdateFarmPermissionRequestDto instance,
) => <String, dynamic>{
  'role': _$FarmUserRoleEnumMap[instance.role],
  'active': instance.active,
};
