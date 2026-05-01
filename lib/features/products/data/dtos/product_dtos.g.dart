// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => _ProductDto(
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
  name: json['name'] as String,
  code: json['code'] as String,
  category: json['category'] as String,
  unitOfMeasureId: json['unitOfMeasureId'] as String,
  description: json['description'] as String?,
  activeIngredient: json['activeIngredient'] as String?,
  stockByLocation:
      (json['stockByLocation'] as List<dynamic>?)
          ?.map(
            (e) =>
                ProductStockByLocationDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ProductStockByLocationDto>[],
  totalStockQuantity: json['totalStockQuantity'] == null
      ? 0
      : const DoubleFromAnyConverter().fromJson(json['totalStockQuantity']),
);

Map<String, dynamic> _$ProductDtoToJson(_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'createdByEmail': instance.createdByEmail,
      'updatedBy': instance.updatedBy,
      'updatedByEmail': instance.updatedByEmail,
      'name': instance.name,
      'code': instance.code,
      'category': instance.category,
      'unitOfMeasureId': instance.unitOfMeasureId,
      'description': instance.description,
      'activeIngredient': instance.activeIngredient,
      'stockByLocation': instance.stockByLocation,
      'totalStockQuantity': const DoubleFromAnyConverter().toJson(
        instance.totalStockQuantity,
      ),
    };

_ProductStockByLocationDto _$ProductStockByLocationDtoFromJson(
  Map<String, dynamic> json,
) => _ProductStockByLocationDto(
  farmId: json['farmId'] as String,
  farmName: json['farmName'] as String?,
  inventoryLocationId: json['inventoryLocationId'] as String,
  inventoryLocationName: json['inventoryLocationName'] as String?,
  quantity: const DoubleFromAnyConverter().fromJson(json['quantity']),
  averageUnitCost: const DoubleFromAnyConverter().fromJson(
    json['averageUnitCost'],
  ),
);

Map<String, dynamic> _$ProductStockByLocationDtoToJson(
  _ProductStockByLocationDto instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'farmName': instance.farmName,
  'inventoryLocationId': instance.inventoryLocationId,
  'inventoryLocationName': instance.inventoryLocationName,
  'quantity': const DoubleFromAnyConverter().toJson(instance.quantity),
  'averageUnitCost': const DoubleFromAnyConverter().toJson(
    instance.averageUnitCost,
  ),
};

_CreateProductStockByLocationRequestDto
_$CreateProductStockByLocationRequestDtoFromJson(Map<String, dynamic> json) =>
    _CreateProductStockByLocationRequestDto(
      farmId: json['farmId'] as String,
      inventoryLocationId: json['inventoryLocationId'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      averageUnitCost: (json['averageUnitCost'] as num).toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$CreateProductStockByLocationRequestDtoToJson(
  _CreateProductStockByLocationRequestDto instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'inventoryLocationId': instance.inventoryLocationId,
  'quantity': instance.quantity,
  'averageUnitCost': instance.averageUnitCost,
  'notes': instance.notes,
};

_CreateProductRequestDto _$CreateProductRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateProductRequestDto(
  name: json['name'] as String,
  code: json['code'] as String,
  category: json['category'] as String,
  unitOfMeasureId: json['unitOfMeasureId'] as String,
  description: json['description'] as String?,
  activeIngredient: json['activeIngredient'] as String?,
  stockByLocation:
      (json['stockByLocation'] as List<dynamic>?)
          ?.map(
            (e) => CreateProductStockByLocationRequestDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <CreateProductStockByLocationRequestDto>[],
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateProductRequestDtoToJson(
  _CreateProductRequestDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'code': instance.code,
  'category': instance.category,
  'unitOfMeasureId': instance.unitOfMeasureId,
  'description': instance.description,
  'activeIngredient': instance.activeIngredient,
  'stockByLocation': instance.stockByLocation,
  'active': instance.active,
};

_UpdateProductRequestDto _$UpdateProductRequestDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateProductRequestDto(
  name: json['name'] as String,
  code: json['code'] as String,
  category: json['category'] as String,
  unitOfMeasureId: json['unitOfMeasureId'] as String,
  description: json['description'] as String?,
  activeIngredient: json['activeIngredient'] as String?,
  stockByLocation:
      (json['stockByLocation'] as List<dynamic>?)
          ?.map(
            (e) => CreateProductStockByLocationRequestDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <CreateProductStockByLocationRequestDto>[],
  active: json['active'] as bool,
);

Map<String, dynamic> _$UpdateProductRequestDtoToJson(
  _UpdateProductRequestDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'code': instance.code,
  'category': instance.category,
  'unitOfMeasureId': instance.unitOfMeasureId,
  'description': instance.description,
  'activeIngredient': instance.activeIngredient,
  'stockByLocation': instance.stockByLocation,
  'active': instance.active,
};
