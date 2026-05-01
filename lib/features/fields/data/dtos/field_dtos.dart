import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_dtos.freezed.dart';
part 'field_dtos.g.dart';

double _parseFlexibleDouble(Object? value) {
  if (value == null) return 0;
  if (value is num) return value.toDouble();
  if (value is String) {
    final normalized = value.trim().replaceAll(',', '.');
    return double.tryParse(normalized) ?? 0;
  }
  return 0;
}

@freezed
abstract class FieldDto with _$FieldDto {
  const factory FieldDto({
    required String id,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    required String farmId,
    required String name,
    @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)
    required double areaHectares,
    String? description,
  }) = _FieldDto;

  factory FieldDto.fromJson(Map<String, dynamic> json) =>
      _$FieldDtoFromJson(json);
}

@freezed
abstract class CreateFieldRequestDto with _$CreateFieldRequestDto {
  const factory CreateFieldRequestDto({
    required String farmId,
    required String name,
    @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)
    required double areaHectares,
    String? description,
    @Default(true) bool active,
  }) = _CreateFieldRequestDto;

  factory CreateFieldRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateFieldRequestDtoFromJson(json);
}

@freezed
abstract class UpdateFieldRequestDto with _$UpdateFieldRequestDto {
  const factory UpdateFieldRequestDto({
    required String farmId,
    required String name,
    @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)
    required double areaHectares,
    String? description,
    required bool active,
  }) = _UpdateFieldRequestDto;

  factory UpdateFieldRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateFieldRequestDtoFromJson(json);
}
