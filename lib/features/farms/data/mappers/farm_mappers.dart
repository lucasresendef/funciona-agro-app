import 'package:field_management_app/core/models/audit_metadata_mapper.dart';
import 'package:field_management_app/features/farms/data/dtos/farm_dtos.dart';
import 'package:field_management_app/features/farms/domain/entities/farm.dart';

extension FarmDtoMapper on FarmDto {
  Farm toEntity() {
    return Farm(
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
      name: name,
      description: description,
    );
  }
}

extension CreateFarmInputMapper on CreateFarmInput {
  CreateFarmRequestDto toRequest() {
    return CreateFarmRequestDto(
      name: name,
      description: description,
      active: active,
    );
  }
}
