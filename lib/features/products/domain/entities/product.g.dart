// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  metadata: AuditMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  name: json['name'] as String,
  code: json['code'] as String,
  category: json['category'] as String,
  unitOfMeasureId: json['unitOfMeasureId'] as String,
  description: json['description'] as String?,
  activeIngredient: json['activeIngredient'] as String?,
  stockByLocation:
      (json['stockByLocation'] as List<dynamic>?)
          ?.map(
            (e) => ProductStockByLocation.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ProductStockByLocation>[],
  totalStockQuantity: (json['totalStockQuantity'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'metadata': instance.metadata,
  'name': instance.name,
  'code': instance.code,
  'category': instance.category,
  'unitOfMeasureId': instance.unitOfMeasureId,
  'description': instance.description,
  'activeIngredient': instance.activeIngredient,
  'stockByLocation': instance.stockByLocation,
  'totalStockQuantity': instance.totalStockQuantity,
};

_ProductStockByLocation _$ProductStockByLocationFromJson(
  Map<String, dynamic> json,
) => _ProductStockByLocation(
  farmId: json['farmId'] as String,
  farmName: json['farmName'] as String?,
  inventoryLocationId: json['inventoryLocationId'] as String,
  inventoryLocationName: json['inventoryLocationName'] as String?,
  quantity: (json['quantity'] as num).toDouble(),
  averageUnitCost: (json['averageUnitCost'] as num).toDouble(),
);

Map<String, dynamic> _$ProductStockByLocationToJson(
  _ProductStockByLocation instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'farmName': instance.farmName,
  'inventoryLocationId': instance.inventoryLocationId,
  'inventoryLocationName': instance.inventoryLocationName,
  'quantity': instance.quantity,
  'averageUnitCost': instance.averageUnitCost,
};

_CreateProductStockByLocationInput _$CreateProductStockByLocationInputFromJson(
  Map<String, dynamic> json,
) => _CreateProductStockByLocationInput(
  farmId: json['farmId'] as String,
  inventoryLocationId: json['inventoryLocationId'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  averageUnitCost: (json['averageUnitCost'] as num).toDouble(),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$CreateProductStockByLocationInputToJson(
  _CreateProductStockByLocationInput instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'inventoryLocationId': instance.inventoryLocationId,
  'quantity': instance.quantity,
  'averageUnitCost': instance.averageUnitCost,
  'notes': instance.notes,
};

_CreateProductInput _$CreateProductInputFromJson(Map<String, dynamic> json) =>
    _CreateProductInput(
      name: json['name'] as String,
      code: json['code'] as String,
      category: json['category'] as String,
      unitOfMeasureId: json['unitOfMeasureId'] as String,
      description: json['description'] as String?,
      activeIngredient: json['activeIngredient'] as String?,
      stockByLocation:
          (json['stockByLocation'] as List<dynamic>?)
              ?.map(
                (e) => CreateProductStockByLocationInput.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const <CreateProductStockByLocationInput>[],
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$CreateProductInputToJson(_CreateProductInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'category': instance.category,
      'unitOfMeasureId': instance.unitOfMeasureId,
      'description': instance.description,
      'activeIngredient': instance.activeIngredient,
      'stockByLocation': instance.stockByLocation,
      'active': instance.active,
    };

_UpdateProductInput _$UpdateProductInputFromJson(Map<String, dynamic> json) =>
    _UpdateProductInput(
      id: json['id'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      category: json['category'] as String,
      unitOfMeasureId: json['unitOfMeasureId'] as String,
      description: json['description'] as String?,
      activeIngredient: json['activeIngredient'] as String?,
      stockByLocation:
          (json['stockByLocation'] as List<dynamic>?)
              ?.map(
                (e) => CreateProductStockByLocationInput.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const <CreateProductStockByLocationInput>[],
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$UpdateProductInputToJson(_UpdateProductInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'category': instance.category,
      'unitOfMeasureId': instance.unitOfMeasureId,
      'description': instance.description,
      'activeIngredient': instance.activeIngredient,
      'stockByLocation': instance.stockByLocation,
      'active': instance.active,
    };
