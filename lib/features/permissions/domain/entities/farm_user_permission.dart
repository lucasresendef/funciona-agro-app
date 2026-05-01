import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm_user_permission.freezed.dart';
part 'farm_user_permission.g.dart';

@freezed
abstract class FarmUserPermission with _$FarmUserPermission {
  const factory FarmUserPermission({
    required AuditMetadata metadata,
    required String farmId,
    required String keycloakUserId,
    required String userName,
    required String userEmail,
    required FarmUserRole role,
  }) = _FarmUserPermission;

  factory FarmUserPermission.fromJson(Map<String, dynamic> json) =>
      _$FarmUserPermissionFromJson(json);
}

@freezed
abstract class CreateFarmPermissionInput with _$CreateFarmPermissionInput {
  const factory CreateFarmPermissionInput({
    required String farmId,
    required String userId,
    required FarmUserRole role,
    @Default(true) bool active,
  }) = _CreateFarmPermissionInput;

  factory CreateFarmPermissionInput.fromJson(Map<String, dynamic> json) =>
      _$CreateFarmPermissionInputFromJson(json);
}

@freezed
abstract class UpdateFarmPermissionInput with _$UpdateFarmPermissionInput {
  const factory UpdateFarmPermissionInput({
    required String id,
    FarmUserRole? role,
    bool? active,
  }) = _UpdateFarmPermissionInput;

  factory UpdateFarmPermissionInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateFarmPermissionInputFromJson(json);
}
