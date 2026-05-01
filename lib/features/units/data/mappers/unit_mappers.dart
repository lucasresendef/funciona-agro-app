import 'package:field_management_app/core/models/audit_metadata_mapper.dart';
import 'package:field_management_app/features/units/data/dtos/unit_dtos.dart';
import 'package:field_management_app/features/units/domain/entities/unit_of_measure.dart';

extension UnitOfMeasureDtoMapper on UnitOfMeasureDto {
  UnitOfMeasure toEntity() {
    return UnitOfMeasure(
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
      symbol: symbol,
    );
  }
}

extension CreateUnitInputMapper on CreateUnitInput {
  CreateUnitRequestDto toRequest() {
    return CreateUnitRequestDto(name: name, symbol: symbol, active: active);
  }
}
