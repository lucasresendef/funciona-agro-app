// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnitOfMeasureDto _$UnitOfMeasureDtoFromJson(Map<String, dynamic> json) =>
    _UnitOfMeasureDto(
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
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$UnitOfMeasureDtoToJson(_UnitOfMeasureDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'createdByEmail': instance.createdByEmail,
      'updatedBy': instance.updatedBy,
      'updatedByEmail': instance.updatedByEmail,
      'name': instance.name,
      'symbol': instance.symbol,
    };

_CreateUnitRequestDto _$CreateUnitRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateUnitRequestDto(
  name: json['name'] as String,
  symbol: json['symbol'] as String,
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateUnitRequestDtoToJson(
  _CreateUnitRequestDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'symbol': instance.symbol,
  'active': instance.active,
};
