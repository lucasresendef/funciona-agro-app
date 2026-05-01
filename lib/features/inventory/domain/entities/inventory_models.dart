import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_models.freezed.dart';
part 'inventory_models.g.dart';

@freezed
abstract class InventoryLocation with _$InventoryLocation {
  const factory InventoryLocation({
    required AuditMetadata metadata,
    required String farmId,
    required String name,
    String? description,
  }) = _InventoryLocation;

  factory InventoryLocation.fromJson(Map<String, dynamic> json) =>
      _$InventoryLocationFromJson(json);
}

@freezed
abstract class CreateInventoryLocationInput
    with _$CreateInventoryLocationInput {
  const factory CreateInventoryLocationInput({
    required String farmId,
    required String name,
    String? description,
    @Default(true) bool active,
  }) = _CreateInventoryLocationInput;

  factory CreateInventoryLocationInput.fromJson(Map<String, dynamic> json) =>
      _$CreateInventoryLocationInputFromJson(json);
}

@freezed
abstract class UpdateInventoryLocationInput
    with _$UpdateInventoryLocationInput {
  const factory UpdateInventoryLocationInput({
    required String id,
    required String farmId,
    required String name,
    String? description,
    @Default(true) bool active,
  }) = _UpdateInventoryLocationInput;

  factory UpdateInventoryLocationInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateInventoryLocationInputFromJson(json);
}

@freezed
abstract class InventoryBalance with _$InventoryBalance {
  const factory InventoryBalance({
    required AuditMetadata metadata,
    required String farmId,
    required String inventoryLocationId,
    required String productId,
    required double quantity,
    required double averageUnitCost,
  }) = _InventoryBalance;

  factory InventoryBalance.fromJson(Map<String, dynamic> json) =>
      _$InventoryBalanceFromJson(json);
}

@freezed
abstract class CreateInventoryBalanceInput with _$CreateInventoryBalanceInput {
  const factory CreateInventoryBalanceInput({
    required String farmId,
    required String inventoryLocationId,
    required String productId,
    required double quantity,
    required double averageUnitCost,
    DateTime? occurredAt,
    String? notes,
    @Default(true) bool active,
  }) = _CreateInventoryBalanceInput;

  factory CreateInventoryBalanceInput.fromJson(Map<String, dynamic> json) =>
      _$CreateInventoryBalanceInputFromJson(json);
}

@freezed
abstract class UpdateInventoryBalanceInput with _$UpdateInventoryBalanceInput {
  const factory UpdateInventoryBalanceInput({
    required String id,
    double? quantity,
    double? averageUnitCost,
    String? notes,
  }) = _UpdateInventoryBalanceInput;

  factory UpdateInventoryBalanceInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateInventoryBalanceInputFromJson(json);
}

@freezed
abstract class InventoryMovement with _$InventoryMovement {
  const factory InventoryMovement({
    required AuditMetadata metadata,
    required String farmId,
    required String inventoryLocationId,
    required String productId,
    required MovementType movementType,
    required double quantity,
    required double unitCost,
    required double totalCost,
    required DateTime occurredAt,
    String? referenceType,
    String? referenceId,
    String? notes,
  }) = _InventoryMovement;

  factory InventoryMovement.fromJson(Map<String, dynamic> json) =>
      _$InventoryMovementFromJson(json);
}
