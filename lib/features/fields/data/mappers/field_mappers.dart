import 'package:field_management_app/core/models/audit_metadata_mapper.dart';
import 'package:field_management_app/features/fields/data/dtos/field_dtos.dart';
import 'package:field_management_app/features/fields/domain/entities/field.dart';

extension FieldDtoMapper on FieldDto {
  Field toEntity() {
    return Field(
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
      name: name,
      areaHectares: areaHectares,
      description: description,
    );
  }
}

extension CreateFieldInputMapper on CreateFieldInput {
  CreateFieldRequestDto toRequest() {
    return CreateFieldRequestDto(
      farmId: farmId,
      name: name,
      areaHectares: areaHectares,
      description: description,
      active: active,
    );
  }
}
