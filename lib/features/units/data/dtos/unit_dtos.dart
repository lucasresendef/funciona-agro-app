import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_dtos.freezed.dart';
part 'unit_dtos.g.dart';

@freezed
abstract class UnitOfMeasureDto with _$UnitOfMeasureDto {
  const factory UnitOfMeasureDto({
    required String id,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    required String name,
    required String symbol,
  }) = _UnitOfMeasureDto;

  factory UnitOfMeasureDto.fromJson(Map<String, dynamic> json) =>
      _$UnitOfMeasureDtoFromJson(json);
}

@freezed
abstract class CreateUnitRequestDto with _$CreateUnitRequestDto {
  const factory CreateUnitRequestDto({
    required String name,
    required String symbol,
    @Default(true) bool active,
  }) = _CreateUnitRequestDto;

  factory CreateUnitRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUnitRequestDtoFromJson(json);
}
