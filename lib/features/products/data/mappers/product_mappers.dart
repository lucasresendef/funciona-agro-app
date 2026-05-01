import 'package:field_management_app/core/models/audit_metadata_mapper.dart';
import 'package:field_management_app/features/products/data/dtos/product_dtos.dart';
import 'package:field_management_app/features/products/domain/entities/product.dart';

extension ProductDtoMapper on ProductDto {
  Product toEntity() {
    return Product(
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
      code: code,
      category: category,
      unitOfMeasureId: unitOfMeasureId,
      description: description,
      activeIngredient: activeIngredient,
      stockByLocation: stockByLocation.map((item) => item.toEntity()).toList(),
      totalStockQuantity: totalStockQuantity,
    );
  }
}

extension ProductStockByLocationDtoMapper on ProductStockByLocationDto {
  ProductStockByLocation toEntity() {
    return ProductStockByLocation(
      farmId: farmId,
      farmName: farmName,
      inventoryLocationId: inventoryLocationId,
      inventoryLocationName: inventoryLocationName,
      quantity: quantity,
      averageUnitCost: averageUnitCost,
    );
  }
}

extension CreateProductInputMapper on CreateProductInput {
  CreateProductRequestDto toRequest() {
    return CreateProductRequestDto(
      name: name,
      code: code,
      category: category,
      unitOfMeasureId: unitOfMeasureId,
      description: description,
      activeIngredient: activeIngredient,
      stockByLocation: stockByLocation
          .map(
            (item) => CreateProductStockByLocationRequestDto(
              farmId: item.farmId,
              inventoryLocationId: item.inventoryLocationId,
              quantity: item.quantity,
              averageUnitCost: item.averageUnitCost,
              notes: item.notes,
            ),
          )
          .toList(),
      active: active,
    );
  }
}
