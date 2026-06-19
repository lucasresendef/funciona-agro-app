import 'package:field_management_app/core/models/audit_metadata_mapper.dart';
import 'package:field_management_app/features/inventory/data/dtos/inventory_dtos.dart';
import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';

extension InventoryLocationDtoMapper on InventoryLocationDto {
  InventoryLocation toEntity() {
    return InventoryLocation(
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
      description: description,
    );
  }
}

extension CreateInventoryLocationInputMapper on CreateInventoryLocationInput {
  CreateInventoryLocationRequestDto toRequest() {
    return CreateInventoryLocationRequestDto(
      farmId: farmId,
      name: name,
      description: description,
      active: active,
    );
  }
}

extension InventoryBalanceDtoMapper on InventoryBalanceDto {
  InventoryBalance toEntity() {
    return InventoryBalance(
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
      inventoryLocationId: inventoryLocationId,
      productId: productId,
      quantity: quantity,
      averageUnitCost: averageUnitCost,
      farm: farm == null
          ? null
          : InventoryBalanceFarmRef(id: farm!.id, name: farm!.name),
      inventoryLocation: inventoryLocation == null
          ? null
          : InventoryBalanceLocationRef(
              id: inventoryLocation!.id,
              name: inventoryLocation!.name,
            ),
      product: product == null
          ? null
          : InventoryBalanceProductRef(
              id: product!.id,
              name: product!.name,
              code: product!.code,
            ),
    );
  }
}

extension CreateInventoryBalanceInputMapper on CreateInventoryBalanceInput {
  CreateInventoryBalanceRequestDto toRequest() {
    return CreateInventoryBalanceRequestDto(
      farmId: farmId,
      inventoryLocationId: inventoryLocationId,
      productId: productId,
      quantity: quantity,
      averageUnitCost: averageUnitCost,
      occurredAt: occurredAt,
      notes: notes,
      active: active,
    );
  }
}

extension UpdateInventoryBalanceInputMapper on UpdateInventoryBalanceInput {
  UpdateInventoryBalanceRequestDto toRequest() {
    return UpdateInventoryBalanceRequestDto(
      quantity: quantity,
      averageUnitCost: averageUnitCost,
      notes: notes,
    );
  }
}

extension InventoryMovementDtoMapper on InventoryMovementDto {
  InventoryMovement toEntity() {
    return InventoryMovement(
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
      inventoryLocationId: inventoryLocationId,
      productId: productId,
      movementType: movementType,
      quantity: quantity,
      unitCost: unitCost,
      totalCost: totalCost,
      occurredAt: occurredAt,
      referenceType: referenceType,
      referenceId: referenceId,
      notes: notes,
    );
  }
}
