// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_of_measure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnitOfMeasure _$UnitOfMeasureFromJson(Map<String, dynamic> json) =>
    _UnitOfMeasure(
      metadata: AuditMetadata.fromJson(
        json['metadata'] as Map<String, dynamic>,
      ),
      name: json['name'] as String,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$UnitOfMeasureToJson(_UnitOfMeasure instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'name': instance.name,
      'symbol': instance.symbol,
    };

_CreateUnitInput _$CreateUnitInputFromJson(Map<String, dynamic> json) =>
    _CreateUnitInput(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$CreateUnitInputToJson(_CreateUnitInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'active': instance.active,
    };

_UpdateUnitInput _$UpdateUnitInputFromJson(Map<String, dynamic> json) =>
    _UpdateUnitInput(
      id: json['id'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$UpdateUnitInputToJson(_UpdateUnitInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'active': instance.active,
    };
