import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm_dtos.freezed.dart';
part 'farm_dtos.g.dart';

@freezed
abstract class FarmDto with _$FarmDto {
  const factory FarmDto({
    required String id,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    required String name,
    String? description,
  }) = _FarmDto;

  factory FarmDto.fromJson(Map<String, dynamic> json) =>
      _$FarmDtoFromJson(json);
}

@freezed
abstract class CreateFarmRequestDto with _$CreateFarmRequestDto {
  const factory CreateFarmRequestDto({
    required String name,
    String? description,
    @Default(true) bool active,
  }) = _CreateFarmRequestDto;

  factory CreateFarmRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateFarmRequestDtoFromJson(json);
}

@freezed
abstract class UpdateFarmRequestDto with _$UpdateFarmRequestDto {
  const factory UpdateFarmRequestDto({
    required String name,
    String? description,
    required bool active,
  }) = _UpdateFarmRequestDto;

  factory UpdateFarmRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateFarmRequestDtoFromJson(json);
}
