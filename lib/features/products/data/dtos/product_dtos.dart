import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dtos.freezed.dart';
part 'product_dtos.g.dart';

@freezed
abstract class ProductDto with _$ProductDto {
  const factory ProductDto({
    required String id,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    required String name,
    required String code,
    required String category,
    required String unitOfMeasureId,
    String? description,
    String? activeIngredient,
    @Default(<ProductStockByLocationDto>[])
    List<ProductStockByLocationDto> stockByLocation,
    @Default(0) @DoubleFromAnyConverter() double totalStockQuantity,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

class DoubleFromAnyConverter implements JsonConverter<double, dynamic> {
  const DoubleFromAnyConverter();

  @override
  double fromJson(dynamic json) {
    if (json == null) return 0;
    if (json is num) return json.toDouble();
    if (json is String) {
      return double.tryParse(json.replaceAll(',', '.')) ?? 0;
    }
    return 0;
  }

  @override
  dynamic toJson(double object) => object;
}

@freezed
abstract class ProductStockByLocationDto with _$ProductStockByLocationDto {
  const factory ProductStockByLocationDto({
    required String farmId,
    String? farmName,
    required String inventoryLocationId,
    String? inventoryLocationName,
    @DoubleFromAnyConverter() required double quantity,
    @DoubleFromAnyConverter() required double averageUnitCost,
  }) = _ProductStockByLocationDto;

  factory ProductStockByLocationDto.fromJson(Map<String, dynamic> json) =>
      _$ProductStockByLocationDtoFromJson(json);
}

@freezed
abstract class CreateProductStockByLocationRequestDto
    with _$CreateProductStockByLocationRequestDto {
  const factory CreateProductStockByLocationRequestDto({
    required String farmId,
    required String inventoryLocationId,
    required double quantity,
    required double averageUnitCost,
    String? notes,
  }) = _CreateProductStockByLocationRequestDto;

  factory CreateProductStockByLocationRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateProductStockByLocationRequestDtoFromJson(json);
}

@freezed
abstract class CreateProductRequestDto with _$CreateProductRequestDto {
  const factory CreateProductRequestDto({
    required String name,
    required String code,
    required String category,
    required String unitOfMeasureId,
    String? description,
    String? activeIngredient,
    @Default(<CreateProductStockByLocationRequestDto>[])
    List<CreateProductStockByLocationRequestDto> stockByLocation,
    @Default(true) bool active,
  }) = _CreateProductRequestDto;

  factory CreateProductRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateProductRequestDtoFromJson(json);
}

@freezed
abstract class UpdateProductRequestDto with _$UpdateProductRequestDto {
  const factory UpdateProductRequestDto({
    required String name,
    required String code,
    required String category,
    required String unitOfMeasureId,
    String? description,
    String? activeIngredient,
    @Default(<CreateProductStockByLocationRequestDto>[])
    List<CreateProductStockByLocationRequestDto> stockByLocation,
    required bool active,
  }) = _UpdateProductRequestDto;

  factory UpdateProductRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductRequestDtoFromJson(json);
}
