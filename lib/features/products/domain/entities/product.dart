import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/features/products/data/dtos/product_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required AuditMetadata metadata,
    required String name,
    required String code,
    required String category,
    required String unitOfMeasureId,
    String? description,
    String? activeIngredient,
    @Default(<ProductStockByLocation>[])
    List<ProductStockByLocation> stockByLocation,
    @Default(0) double totalStockQuantity,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
abstract class ProductStockByLocation with _$ProductStockByLocation {
  const factory ProductStockByLocation({
    required String farmId,
    String? farmName,
    required String inventoryLocationId,
    String? inventoryLocationName,
    required double quantity,
    required double averageUnitCost,
  }) = _ProductStockByLocation;

  factory ProductStockByLocation.fromJson(Map<String, dynamic> json) =>
      _$ProductStockByLocationFromJson(json);
}

@freezed
abstract class CreateProductStockByLocationInput
    with _$CreateProductStockByLocationInput {
  const factory CreateProductStockByLocationInput({
    required String farmId,
    required String inventoryLocationId,
    required double quantity,
    required double averageUnitCost,
    String? notes,
  }) = _CreateProductStockByLocationInput;

  factory CreateProductStockByLocationInput.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateProductStockByLocationInputFromJson(json);
}

@freezed
abstract class CreateProductInput with _$CreateProductInput {
  const factory CreateProductInput({
    required String name,
    required String code,
    required String category,
    required String unitOfMeasureId,
    String? description,
    String? activeIngredient,
    @Default(<CreateProductStockByLocationInput>[])
    List<CreateProductStockByLocationInput> stockByLocation,
    @Default(true) bool active,
  }) = _CreateProductInput;

  factory CreateProductInput.fromJson(Map<String, dynamic> json) =>
      _$CreateProductInputFromJson(json);
}

@freezed
abstract class UpdateProductInput with _$UpdateProductInput {
  const factory UpdateProductInput({
    required String id,
    required String name,
    required String code,
    required String category,
    required String unitOfMeasureId,
    String? description,
    String? activeIngredient,
    @Default(<CreateProductStockByLocationInput>[])
    List<CreateProductStockByLocationInput> stockByLocation,
    @Default(true) bool active,
  }) = _UpdateProductInput;

  factory UpdateProductInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductInputFromJson(json);
}

extension UpdateProductInputX on UpdateProductInput {
  UpdateProductRequestDto toRequest() {
    return UpdateProductRequestDto(
      name: name,
      code: code,
      category: category,
      unitOfMeasureId: unitOfMeasureId,
      description: description,
      activeIngredient: activeIngredient,
      active: active,
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
    );
  }
}
