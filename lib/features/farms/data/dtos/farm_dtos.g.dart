// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FarmDto _$FarmDtoFromJson(Map<String, dynamic> json) => _FarmDto(
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
  name: json['name'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$FarmDtoToJson(_FarmDto instance) => <String, dynamic>{
  'id': instance.id,
  'active': instance.active,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'createdByEmail': instance.createdByEmail,
  'updatedBy': instance.updatedBy,
  'updatedByEmail': instance.updatedByEmail,
  'name': instance.name,
  'description': instance.description,
};

_CreateFarmRequestDto _$CreateFarmRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateFarmRequestDto(
  name: json['name'] as String,
  description: json['description'] as String?,
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateFarmRequestDtoToJson(
  _CreateFarmRequestDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'active': instance.active,
};

_UpdateFarmRequestDto _$UpdateFarmRequestDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateFarmRequestDto(
  name: json['name'] as String,
  description: json['description'] as String?,
  active: json['active'] as bool,
);

Map<String, dynamic> _$UpdateFarmRequestDtoToJson(
  _UpdateFarmRequestDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'active': instance.active,
};
