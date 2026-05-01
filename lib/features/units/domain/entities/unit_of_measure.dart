import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_of_measure.freezed.dart';
part 'unit_of_measure.g.dart';

@freezed
abstract class UnitOfMeasure with _$UnitOfMeasure {
  const factory UnitOfMeasure({
    required AuditMetadata metadata,
    required String name,
    required String symbol,
  }) = _UnitOfMeasure;

  factory UnitOfMeasure.fromJson(Map<String, dynamic> json) =>
      _$UnitOfMeasureFromJson(json);
}

@freezed
abstract class CreateUnitInput with _$CreateUnitInput {
  const factory CreateUnitInput({
    required String name,
    required String symbol,
    @Default(true) bool active,
  }) = _CreateUnitInput;

  factory CreateUnitInput.fromJson(Map<String, dynamic> json) =>
      _$CreateUnitInputFromJson(json);
}

@freezed
abstract class UpdateUnitInput with _$UpdateUnitInput {
  const factory UpdateUnitInput({
    required String id,
    required String name,
    required String symbol,
    @Default(true) bool active,
  }) = _UpdateUnitInput;

  factory UpdateUnitInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateUnitInputFromJson(json);
}
