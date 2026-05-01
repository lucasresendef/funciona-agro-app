// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_user_permission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FarmUserPermission _$FarmUserPermissionFromJson(Map<String, dynamic> json) =>
    _FarmUserPermission(
      metadata: AuditMetadata.fromJson(
        json['metadata'] as Map<String, dynamic>,
      ),
      farmId: json['farmId'] as String,
      keycloakUserId: json['keycloakUserId'] as String,
      userName: json['userName'] as String,
      userEmail: json['userEmail'] as String,
      role: $enumDecode(_$FarmUserRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$FarmUserPermissionToJson(_FarmUserPermission instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
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

_CreateFarmPermissionInput _$CreateFarmPermissionInputFromJson(
  Map<String, dynamic> json,
) => _CreateFarmPermissionInput(
  farmId: json['farmId'] as String,
  userId: json['userId'] as String,
  role: $enumDecode(_$FarmUserRoleEnumMap, json['role']),
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateFarmPermissionInputToJson(
  _CreateFarmPermissionInput instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'userId': instance.userId,
  'role': _$FarmUserRoleEnumMap[instance.role]!,
  'active': instance.active,
};

_UpdateFarmPermissionInput _$UpdateFarmPermissionInputFromJson(
  Map<String, dynamic> json,
) => _UpdateFarmPermissionInput(
  id: json['id'] as String,
  role: $enumDecodeNullable(_$FarmUserRoleEnumMap, json['role']),
  active: json['active'] as bool?,
);

Map<String, dynamic> _$UpdateFarmPermissionInputToJson(
  _UpdateFarmPermissionInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'role': _$FarmUserRoleEnumMap[instance.role],
  'active': instance.active,
};
