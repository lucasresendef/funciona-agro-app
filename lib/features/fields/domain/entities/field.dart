import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/features/fields/data/dtos/field_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.freezed.dart';
part 'field.g.dart';

@freezed
abstract class Field with _$Field {
  const factory Field({
    required AuditMetadata metadata,
    required String farmId,
    required String name,
    required double areaHectares,
    String? description,
  }) = _Field;

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);
}

@freezed
abstract class CreateFieldInput with _$CreateFieldInput {
  const factory CreateFieldInput({
    required String farmId,
    required String name,
    required double areaHectares,
    String? description,
    @Default(true) bool active,
  }) = _CreateFieldInput;

  factory CreateFieldInput.fromJson(Map<String, dynamic> json) =>
      _$CreateFieldInputFromJson(json);
}

@freezed
abstract class UpdateFieldInput with _$UpdateFieldInput {
  const factory UpdateFieldInput({
    required String id,
    required String farmId,
    required String name,
    required double areaHectares,
    String? description,
    @Default(true) bool active,
  }) = _UpdateFieldInput;

  factory UpdateFieldInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateFieldInputFromJson(json);
}

extension UpdateFieldInputX on UpdateFieldInput {
  UpdateFieldRequestDto toRequest() {
    return UpdateFieldRequestDto(
      farmId: farmId,
      name: name,
      areaHectares: areaHectares,
      description: description,
      active: active,
    );
  }
}
