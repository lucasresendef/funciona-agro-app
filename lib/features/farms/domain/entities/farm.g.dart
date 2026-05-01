// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Farm _$FarmFromJson(Map<String, dynamic> json) => _Farm(
  metadata: AuditMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  name: json['name'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$FarmToJson(_Farm instance) => <String, dynamic>{
  'metadata': instance.metadata,
  'name': instance.name,
  'description': instance.description,
};

_CreateFarmInput _$CreateFarmInputFromJson(Map<String, dynamic> json) =>
    _CreateFarmInput(
      name: json['name'] as String,
      description: json['description'] as String?,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$CreateFarmInputToJson(_CreateFarmInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
    };

_UpdateFarmInput _$UpdateFarmInputFromJson(Map<String, dynamic> json) =>
    _UpdateFarmInput(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$UpdateFarmInputToJson(_UpdateFarmInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
    };
