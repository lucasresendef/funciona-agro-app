import 'package:field_management_app/core/models/audit_metadata_mapper.dart';
import 'package:field_management_app/features/field_operations/data/dtos/field_operation_dtos.dart';
import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';

extension FieldOperationDtoMapper on FieldOperationDto {
  FieldOperation toEntity() {
    final resolvedFieldIds = fieldIds.isNotEmpty
        ? fieldIds
        : fields.map((field) => field.fieldId).toList();

    return FieldOperation(
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
      sequenceNumber: sequenceNumber,
      farmId: farmId,
      fieldIds: resolvedFieldIds,
      fields: fields.map((field) => field.toEntity()).toList(),
      operationDate: operationDate,
      status: status,
      description: description,
      responsibleUserId: responsibleUserId,
      startedAt: startedAt,
      finishedAt: finishedAt,
      items: items.map((item) => item.toEntity()).toList(),
    );
  }
}

extension FieldOperationFieldRefDtoMapper on FieldOperationFieldRefDto {
  FieldOperationFieldRef toEntity() {
    return FieldOperationFieldRef(
      fieldId: fieldId,
      name: name,
      areaHectares: areaHectares,
    );
  }
}

extension FieldOperationItemDtoMapper on FieldOperationItemDto {
  FieldOperationItem toEntity() {
    return FieldOperationItem(
      metadata: id == null || active == null
          ? null
          : buildAuditMetadata(
              id: id!,
              active: active!,
              createdAt: createdAt,
              updatedAt: updatedAt,
              createdBy: createdBy,
              createdByEmail: createdByEmail,
              updatedBy: updatedBy,
              updatedByEmail: updatedByEmail,
            ),
      fieldOperationId: fieldOperationId,
      productId: productId,
      quantitySent: quantitySent,
      quantityReturned: quantityReturned,
      quantityConsumed: quantityConsumed,
      unitCostAtOperation: unitCostAtOperation,
      totalCostConsumed: totalCostConsumed,
      notes: notes,
      fieldResults: fieldResults.map((result) => result.toEntity()).toList(),
    );
  }
}

extension FieldOperationItemFieldResultDtoMapper
    on FieldOperationItemFieldResultDto {
  FieldOperationItemFieldResult toEntity() {
    return FieldOperationItemFieldResult(
      fieldId: fieldId,
      fieldName: fieldName,
      allocatedQuantityConsumed: allocatedQuantityConsumed,
      allocatedCostConsumed: allocatedCostConsumed,
    );
  }
}

extension CreateFieldOperationInputMapper on CreateFieldOperationInput {
  CreateFieldOperationRequestDto toRequest() {
    return CreateFieldOperationRequestDto(
      farmId: farmId,
      fieldIds: fieldIds,
      operationDate: operationDate,
      status: status,
      description: description,
      startedAt: startedAt,
      finishedAt: finishedAt,
      items: items.map((item) => item.toRequest()).toList(),
    );
  }
}

extension CreateFieldOperationItemInputMapper on CreateFieldOperationItemInput {
  CreateFieldOperationItemRequestDto toRequest() {
    return CreateFieldOperationItemRequestDto(
      productId: productId,
      quantitySent: quantitySent,
      quantityReturned: quantityReturned,
      quantityConsumed: quantityConsumed,
      unitCostAtOperation: unitCostAtOperation,
      notes: notes,
    );
  }
}

extension UpdateFieldOperationInputMapper on UpdateFieldOperationInput {
  Map<String, dynamic> toPatchRequest() {
    final payload = <String, dynamic>{};

    if (status != null) {
      payload['status'] = status!.name.toUpperCase();
    }
    if (operationDate != null) {
      payload['operationDate'] = operationDate!.toIso8601String();
    }
    if (description != null) {
      payload['description'] = description;
    }
    if (startedAt != null) {
      payload['startedAt'] = startedAt!.toIso8601String();
    }
    if (finishedAt != null) {
      payload['finishedAt'] = finishedAt!.toIso8601String();
    }
    if (items.isNotEmpty) {
      payload['items'] = items.map((item) => item.toPatchRequest()).toList();
    }

    return payload;
  }
}

extension UpdateFieldOperationItemInputMapper on UpdateFieldOperationItemInput {
  Map<String, dynamic> toPatchRequest() {
    final payload = <String, dynamic>{};

    if (id != null && id!.isNotEmpty) {
      payload['id'] = id;
    }
    if (quantityReturned != null) {
      payload['quantityReturned'] = quantityReturned;
    }
    if (quantityConsumed != null) {
      payload['quantityConsumed'] = quantityConsumed;
    }
    payload['notes'] = notes;

    return payload;
  }
}
