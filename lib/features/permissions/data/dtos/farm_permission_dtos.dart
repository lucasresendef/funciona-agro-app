import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm_permission_dtos.freezed.dart';
part 'farm_permission_dtos.g.dart';

@freezed
abstract class FarmUserPermissionDto with _$FarmUserPermissionDto {
  const factory FarmUserPermissionDto({
    required String id,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    required String farmId,
    required String keycloakUserId,
    required String userName,
    required String userEmail,
    required FarmUserRole role,
  }) = _FarmUserPermissionDto;

  factory FarmUserPermissionDto.fromJson(Map<String, dynamic> json) =>
      _$FarmUserPermissionDtoFromJson(json);
}

@freezed
abstract class CreateFarmPermissionRequestDto
    with _$CreateFarmPermissionRequestDto {
  const factory CreateFarmPermissionRequestDto({
    required String farmId,
    required String userId,
    required FarmUserRole role,
    @Default(true) bool active,
  }) = _CreateFarmPermissionRequestDto;

  factory CreateFarmPermissionRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateFarmPermissionRequestDtoFromJson(json);
}

@freezed
abstract class UpdateFarmPermissionRequestDto
    with _$UpdateFarmPermissionRequestDto {
  const factory UpdateFarmPermissionRequestDto({
    FarmUserRole? role,
    bool? active,
  }) = _UpdateFarmPermissionRequestDto;

  factory UpdateFarmPermissionRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateFarmPermissionRequestDtoFromJson(json);
}
