// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FieldDto _$FieldDtoFromJson(Map<String, dynamic> json) => _FieldDto(
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
  name: json['name'] as String,
  areaHectares: _parseFlexibleDouble(json['areaHectares']),
  description: json['description'] as String?,
);

Map<String, dynamic> _$FieldDtoToJson(_FieldDto instance) => <String, dynamic>{
  'id': instance.id,
  'active': instance.active,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'createdByEmail': instance.createdByEmail,
  'updatedBy': instance.updatedBy,
  'updatedByEmail': instance.updatedByEmail,
  'farmId': instance.farmId,
  'name': instance.name,
  'areaHectares': _parseFlexibleDouble(instance.areaHectares),
  'description': instance.description,
};

_CreateFieldRequestDto _$CreateFieldRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateFieldRequestDto(
  farmId: json['farmId'] as String,
  name: json['name'] as String,
  areaHectares: _parseFlexibleDouble(json['areaHectares']),
  description: json['description'] as String?,
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateFieldRequestDtoToJson(
  _CreateFieldRequestDto instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'name': instance.name,
  'areaHectares': _parseFlexibleDouble(instance.areaHectares),
  'description': instance.description,
  'active': instance.active,
};

_UpdateFieldRequestDto _$UpdateFieldRequestDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateFieldRequestDto(
  farmId: json['farmId'] as String,
  name: json['name'] as String,
  areaHectares: _parseFlexibleDouble(json['areaHectares']),
  description: json['description'] as String?,
  active: json['active'] as bool,
);

Map<String, dynamic> _$UpdateFieldRequestDtoToJson(
  _UpdateFieldRequestDto instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'name': instance.name,
  'areaHectares': _parseFlexibleDouble(instance.areaHectares),
  'description': instance.description,
  'active': instance.active,
};
