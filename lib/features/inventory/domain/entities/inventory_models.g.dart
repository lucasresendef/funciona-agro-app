// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryLocation _$InventoryLocationFromJson(Map<String, dynamic> json) =>
    _InventoryLocation(
      metadata: AuditMetadata.fromJson(
        json['metadata'] as Map<String, dynamic>,
      ),
      farmId: json['farmId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$InventoryLocationToJson(_InventoryLocation instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'farmId': instance.farmId,
      'name': instance.name,
      'description': instance.description,
    };

_CreateInventoryLocationInput _$CreateInventoryLocationInputFromJson(
  Map<String, dynamic> json,
) => _CreateInventoryLocationInput(
  farmId: json['farmId'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateInventoryLocationInputToJson(
  _CreateInventoryLocationInput instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'name': instance.name,
  'description': instance.description,
  'active': instance.active,
};

_UpdateInventoryLocationInput _$UpdateInventoryLocationInputFromJson(
  Map<String, dynamic> json,
) => _UpdateInventoryLocationInput(
  id: json['id'] as String,
  farmId: json['farmId'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$UpdateInventoryLocationInputToJson(
  _UpdateInventoryLocationInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'farmId': instance.farmId,
  'name': instance.name,
  'description': instance.description,
  'active': instance.active,
};

_InventoryBalance _$InventoryBalanceFromJson(
  Map<String, dynamic> json,
) => _InventoryBalance(
  metadata: AuditMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  farmId: json['farmId'] as String,
  inventoryLocationId: json['inventoryLocationId'] as String,
  productId: json['productId'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  averageUnitCost: (json['averageUnitCost'] as num).toDouble(),
  farm: json['farm'] == null
      ? null
      : InventoryBalanceFarmRef.fromJson(json['farm'] as Map<String, dynamic>),
  inventoryLocation: json['inventoryLocation'] == null
      ? null
      : InventoryBalanceLocationRef.fromJson(
          json['inventoryLocation'] as Map<String, dynamic>,
        ),
  product: json['product'] == null
      ? null
      : InventoryBalanceProductRef.fromJson(
          json['product'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$InventoryBalanceToJson(_InventoryBalance instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'farmId': instance.farmId,
      'inventoryLocationId': instance.inventoryLocationId,
      'productId': instance.productId,
      'quantity': instance.quantity,
      'averageUnitCost': instance.averageUnitCost,
      'farm': instance.farm,
      'inventoryLocation': instance.inventoryLocation,
      'product': instance.product,
    };

_InventoryBalanceFarmRef _$InventoryBalanceFarmRefFromJson(
  Map<String, dynamic> json,
) => _InventoryBalanceFarmRef(
  id: json['id'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$InventoryBalanceFarmRefToJson(
  _InventoryBalanceFarmRef instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_InventoryBalanceLocationRef _$InventoryBalanceLocationRefFromJson(
  Map<String, dynamic> json,
) => _InventoryBalanceLocationRef(
  id: json['id'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$InventoryBalanceLocationRefToJson(
  _InventoryBalanceLocationRef instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_InventoryBalanceProductRef _$InventoryBalanceProductRefFromJson(
  Map<String, dynamic> json,
) => _InventoryBalanceProductRef(
  id: json['id'] as String,
  name: json['name'] as String,
  code: json['code'] as String?,
);

Map<String, dynamic> _$InventoryBalanceProductRefToJson(
  _InventoryBalanceProductRef instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
};

_CreateInventoryBalanceInput _$CreateInventoryBalanceInputFromJson(
  Map<String, dynamic> json,
) => _CreateInventoryBalanceInput(
  farmId: json['farmId'] as String,
  inventoryLocationId: json['inventoryLocationId'] as String,
  productId: json['productId'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  averageUnitCost: (json['averageUnitCost'] as num).toDouble(),
  occurredAt: json['occurredAt'] == null
      ? null
      : DateTime.parse(json['occurredAt'] as String),
  notes: json['notes'] as String?,
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateInventoryBalanceInputToJson(
  _CreateInventoryBalanceInput instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'inventoryLocationId': instance.inventoryLocationId,
  'productId': instance.productId,
  'quantity': instance.quantity,
  'averageUnitCost': instance.averageUnitCost,
  'occurredAt': instance.occurredAt?.toIso8601String(),
  'notes': instance.notes,
  'active': instance.active,
};

_UpdateInventoryBalanceInput _$UpdateInventoryBalanceInputFromJson(
  Map<String, dynamic> json,
) => _UpdateInventoryBalanceInput(
  id: json['id'] as String,
  quantity: (json['quantity'] as num?)?.toDouble(),
  averageUnitCost: (json['averageUnitCost'] as num?)?.toDouble(),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$UpdateInventoryBalanceInputToJson(
  _UpdateInventoryBalanceInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'quantity': instance.quantity,
  'averageUnitCost': instance.averageUnitCost,
  'notes': instance.notes,
};

_InventoryMovement _$InventoryMovementFromJson(Map<String, dynamic> json) =>
    _InventoryMovement(
      metadata: AuditMetadata.fromJson(
        json['metadata'] as Map<String, dynamic>,
      ),
      farmId: json['farmId'] as String,
      inventoryLocationId: json['inventoryLocationId'] as String,
      productId: json['productId'] as String,
      movementType: $enumDecode(_$MovementTypeEnumMap, json['movementType']),
      quantity: (json['quantity'] as num).toDouble(),
      unitCost: (json['unitCost'] as num).toDouble(),
      totalCost: (json['totalCost'] as num).toDouble(),
      occurredAt: DateTime.parse(json['occurredAt'] as String),
      referenceType: json['referenceType'] as String?,
      referenceId: json['referenceId'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$InventoryMovementToJson(_InventoryMovement instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'farmId': instance.farmId,
      'inventoryLocationId': instance.inventoryLocationId,
      'productId': instance.productId,
      'movementType': _$MovementTypeEnumMap[instance.movementType]!,
      'quantity': instance.quantity,
      'unitCost': instance.unitCost,
      'totalCost': instance.totalCost,
      'occurredAt': instance.occurredAt.toIso8601String(),
      'referenceType': instance.referenceType,
      'referenceId': instance.referenceId,
      'notes': instance.notes,
    };

const _$MovementTypeEnumMap = {
  MovementType.entry: 'ENTRY',
  MovementType.outboundToField: 'OUTBOUND_TO_FIELD',
  MovementType.returnFromField: 'RETURN_FROM_FIELD',
  MovementType.adjustmentIn: 'ADJUSTMENT_IN',
  MovementType.adjustmentOut: 'ADJUSTMENT_OUT',
};
