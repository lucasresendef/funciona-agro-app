import 'package:field_management_app/core/models/audit_metadata_mapper.dart';
import 'package:field_management_app/features/permissions/data/dtos/farm_permission_dtos.dart';
import 'package:field_management_app/features/permissions/domain/entities/farm_user_permission.dart';

extension FarmUserPermissionDtoMapper on FarmUserPermissionDto {
  FarmUserPermission toEntity() {
    return FarmUserPermission(
      metadata: buildAuditMetadata(
        id: id,
        active: active,
        createdAt: createdAt,
        updatedAt: updatedAt,
        createdBy: createdBy,
        createdByEmail: createdByEmail,
        updatedBy: updatedBy,
        updatedByEmail: updatedByEmail,
      ),
      farmId: farmId,
      keycloakUserId: keycloakUserId,
      userName: userName,
      userEmail: userEmail,
      role: role,
    );
  }
}

extension CreateFarmPermissionInputMapper on CreateFarmPermissionInput {
  CreateFarmPermissionRequestDto toRequest() {
    return CreateFarmPermissionRequestDto(
      farmId: farmId,
      userId: userId,
      role: role,
      active: active,
    );
  }
}

extension UpdateFarmPermissionInputMapper on UpdateFarmPermissionInput {
  UpdateFarmPermissionRequestDto toRequest() {
    return UpdateFarmPermissionRequestDto(role: role, active: active);
  }
}
