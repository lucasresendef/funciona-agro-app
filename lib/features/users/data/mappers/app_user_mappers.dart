import 'package:field_management_app/core/models/audit_metadata_mapper.dart';
import 'package:field_management_app/features/users/data/dtos/app_user_dtos.dart';
import 'package:field_management_app/features/users/domain/entities/app_user.dart';

extension AppUserDtoMapper on AppUserDto {
  AppUser toEntity() {
    return AppUser(
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
      keycloakUserId: keycloakUserId,
      name: name,
      email: email,
      isAdmin: isAdmin,
    );
  }
}

extension CreateAppUserInputMapper on CreateAppUserInput {
  CreateAppUserRequestDto toRequest() {
    return CreateAppUserRequestDto(
      keycloakUserId: keycloakUserId,
      name: name,
      email: email,
      isAdmin: isAdmin,
      active: active,
    );
  }
}

extension UpdateAppUserInputMapper on UpdateAppUserInput {
  UpdateAppUserRequestDto toRequest() {
    return UpdateAppUserRequestDto(
      name: name,
      isAdmin: isAdmin,
      active: active,
    );
  }
}
