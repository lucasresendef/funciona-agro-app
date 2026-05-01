import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/features/farms/data/dtos/farm_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm.freezed.dart';
part 'farm.g.dart';

@freezed
abstract class Farm with _$Farm {
  const factory Farm({
    required AuditMetadata metadata,
    required String name,
    String? description,
  }) = _Farm;

  factory Farm.fromJson(Map<String, dynamic> json) => _$FarmFromJson(json);
}

@freezed
abstract class CreateFarmInput with _$CreateFarmInput {
  const factory CreateFarmInput({
    required String name,
    String? description,
    @Default(true) bool active,
  }) = _CreateFarmInput;

  factory CreateFarmInput.fromJson(Map<String, dynamic> json) =>
      _$CreateFarmInputFromJson(json);
}

@freezed
abstract class UpdateFarmInput with _$UpdateFarmInput {
  const factory UpdateFarmInput({
    required String id,
    required String name,
    String? description,
    @Default(true) bool active,
  }) = _UpdateFarmInput;

  factory UpdateFarmInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateFarmInputFromJson(json);
}

extension UpdateFarmInputX on UpdateFarmInput {
  UpdateFarmRequestDto toRequest() {
    return UpdateFarmRequestDto(
      name: name,
      description: description,
      active: active,
    );
  }
}
