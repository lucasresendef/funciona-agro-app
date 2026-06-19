// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryLocationDto _$InventoryLocationDtoFromJson(
  Map<String, dynamic> json,
) => _InventoryLocationDto(
  id: json['id'] as String,
  active: json['active'] as bool,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String?,
  createdByEmail: json['createdByEmail'] as String?,
  updatedBy: json['updatedBy'] as String?,
  updatedByEmail: json['updatedByEmail'] as String?,
  farmId: json['farmId'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$InventoryLocationDtoToJson(
  _InventoryLocationDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'active': instance.active,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'createdByEmail': instance.createdByEmail,
  'updatedBy': instance.updatedBy,
  'updatedByEmail': instance.updatedByEmail,
  'farmId': instance.farmId,
  'name': instance.name,
  'description': instance.description,
};

_CreateInventoryLocationRequestDto _$CreateInventoryLocationRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateInventoryLocationRequestDto(
  farmId: json['farmId'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateInventoryLocationRequestDtoToJson(
  _CreateInventoryLocationRequestDto instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'name': instance.name,
  'description': instance.description,
  'active': instance.active,
};

_InventoryBalanceDto _$InventoryBalanceDtoFromJson(
  Map<String, dynamic> json,
) => _InventoryBalanceDto(
  id: json['id'] as String,
  active: json['active'] as bool,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String?,
  createdByEmail: json['createdByEmail'] as String?,
  updatedBy: json['updatedBy'] as String?,
  updatedByEmail: json['updatedByEmail'] as String?,
  farmId: json['farmId'] as String,
  inventoryLocationId: json['inventoryLocationId'] as String,
  productId: json['productId'] as String,
  quantity: const DoubleConverter().fromJson(json['quantity']),
  averageUnitCost: const DoubleConverter().fromJson(json['averageUnitCost']),
  farm: json['farm'] == null
      ? null
      : InventoryBalanceFarmDto.fromJson(json['farm'] as Map<String, dynamic>),
  inventoryLocation: json['inventoryLocation'] == null
      ? null
      : InventoryBalanceLocationDto.fromJson(
          json['inventoryLocation'] as Map<String, dynamic>,
        ),
  product: json['product'] == null
      ? null
      : InventoryBalanceProductDto.fromJson(
          json['product'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$InventoryBalanceDtoToJson(
  _InventoryBalanceDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'active': instance.active,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'createdByEmail': instance.createdByEmail,
  'updatedBy': instance.updatedBy,
  'updatedByEmail': instance.updatedByEmail,
  'farmId': instance.farmId,
  'inventoryLocationId': instance.inventoryLocationId,
  'productId': instance.productId,
  'quantity': const DoubleConverter().toJson(instance.quantity),
  'averageUnitCost': const DoubleConverter().toJson(instance.averageUnitCost),
  'farm': instance.farm,
  'inventoryLocation': instance.inventoryLocation,
  'product': instance.product,
};

_InventoryBalanceFarmDto _$InventoryBalanceFarmDtoFromJson(
  Map<String, dynamic> json,
) => _InventoryBalanceFarmDto(
  id: json['id'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$InventoryBalanceFarmDtoToJson(
  _InventoryBalanceFarmDto instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_InventoryBalanceLocationDto _$InventoryBalanceLocationDtoFromJson(
  Map<String, dynamic> json,
) => _InventoryBalanceLocationDto(
  id: json['id'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$InventoryBalanceLocationDtoToJson(
  _InventoryBalanceLocationDto instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_InventoryBalanceProductDto _$InventoryBalanceProductDtoFromJson(
  Map<String, dynamic> json,
) => _InventoryBalanceProductDto(
  id: json['id'] as String,
  name: json['name'] as String,
  code: json['code'] as String?,
);

Map<String, dynamic> _$InventoryBalanceProductDtoToJson(
  _InventoryBalanceProductDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': instance.code,
};

_CreateInventoryBalanceRequestDto _$CreateInventoryBalanceRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateInventoryBalanceRequestDto(
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

Map<String, dynamic> _$CreateInventoryBalanceRequestDtoToJson(
  _CreateInventoryBalanceRequestDto instance,
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

_UpdateInventoryBalanceRequestDto _$UpdateInventoryBalanceRequestDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateInventoryBalanceRequestDto(
  quantity: (json['quantity'] as num?)?.toDouble(),
  averageUnitCost: (json['averageUnitCost'] as num?)?.toDouble(),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$UpdateInventoryBalanceRequestDtoToJson(
  _UpdateInventoryBalanceRequestDto instance,
) => <String, dynamic>{
  'quantity': instance.quantity,
  'averageUnitCost': instance.averageUnitCost,
  'notes': instance.notes,
};

_InventoryMovementDto _$InventoryMovementDtoFromJson(
  Map<String, dynamic> json,
) => _InventoryMovementDto(
  id: json['id'] as String,
  active: json['active'] as bool,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String?,
  createdByEmail: json['createdByEmail'] as String?,
  updatedBy: json['updatedBy'] as String?,
  updatedByEmail: json['updatedByEmail'] as String?,
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

Map<String, dynamic> _$InventoryMovementDtoToJson(
  _InventoryMovementDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'active': instance.active,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'createdByEmail': instance.createdByEmail,
  'updatedBy': instance.updatedBy,
  'updatedByEmail': instance.updatedByEmail,
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
