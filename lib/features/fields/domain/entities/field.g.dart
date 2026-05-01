// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Field _$FieldFromJson(Map<String, dynamic> json) => _Field(
  metadata: AuditMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  farmId: json['farmId'] as String,
  name: json['name'] as String,
  areaHectares: (json['areaHectares'] as num).toDouble(),
  description: json['description'] as String?,
);

Map<String, dynamic> _$FieldToJson(_Field instance) => <String, dynamic>{
  'metadata': instance.metadata,
  'farmId': instance.farmId,
  'name': instance.name,
  'areaHectares': instance.areaHectares,
  'description': instance.description,
};

_CreateFieldInput _$CreateFieldInputFromJson(Map<String, dynamic> json) =>
    _CreateFieldInput(
      farmId: json['farmId'] as String,
      name: json['name'] as String,
      areaHectares: (json['areaHectares'] as num).toDouble(),
      description: json['description'] as String?,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$CreateFieldInputToJson(_CreateFieldInput instance) =>
    <String, dynamic>{
      'farmId': instance.farmId,
      'name': instance.name,
      'areaHectares': instance.areaHectares,
      'description': instance.description,
      'active': instance.active,
    };

_UpdateFieldInput _$UpdateFieldInputFromJson(Map<String, dynamic> json) =>
    _UpdateFieldInput(
      id: json['id'] as String,
      farmId: json['farmId'] as String,
      name: json['name'] as String,
      areaHectares: (json['areaHectares'] as num).toDouble(),
      description: json['description'] as String?,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$UpdateFieldInputToJson(_UpdateFieldInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'farmId': instance.farmId,
      'name': instance.name,
      'areaHectares': instance.areaHectares,
      'description': instance.description,
      'active': instance.active,
    };
