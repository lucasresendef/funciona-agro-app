import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_dtos.freezed.dart';
part 'inventory_dtos.g.dart';

class DoubleConverter implements JsonConverter<double, dynamic> {
  const DoubleConverter();

  @override
  double fromJson(dynamic json) {
    if (json == null) {
      throw ArgumentError('Cannot convert null to double');
    }
    if (json is double) {
      return json;
    }
    if (json is int) {
      return json.toDouble();
    }
    if (json is String) {
      final parsed = double.tryParse(json.replaceAll(',', '.'));
      if (parsed != null) {
        return parsed;
      }
    }
    if (json is num) {
      return json.toDouble();
    }
    throw ArgumentError('Cannot convert $json to double');
  }

  @override
  dynamic toJson(double object) => object;
}

@freezed
abstract class InventoryLocationDto with _$InventoryLocationDto {
  const factory InventoryLocationDto({
    required String id,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    required String farmId,
    required String name,
    String? description,
  }) = _InventoryLocationDto;

  factory InventoryLocationDto.fromJson(Map<String, dynamic> json) =>
      _$InventoryLocationDtoFromJson(json);
}

@freezed
abstract class CreateInventoryLocationRequestDto
    with _$CreateInventoryLocationRequestDto {
  const factory CreateInventoryLocationRequestDto({
    required String farmId,
    required String name,
    String? description,
    @Default(true) bool active,
  }) = _CreateInventoryLocationRequestDto;

  factory CreateInventoryLocationRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateInventoryLocationRequestDtoFromJson(json);
}

@freezed
abstract class InventoryBalanceDto with _$InventoryBalanceDto {
  const factory InventoryBalanceDto({
    required String id,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    required String farmId,
    required String inventoryLocationId,
    required String productId,
    @DoubleConverter() required double quantity,
    @DoubleConverter() required double averageUnitCost,
    InventoryBalanceFarmDto? farm,
    InventoryBalanceLocationDto? inventoryLocation,
    InventoryBalanceProductDto? product,
  }) = _InventoryBalanceDto;

  factory InventoryBalanceDto.fromJson(Map<String, dynamic> json) =>
      _$InventoryBalanceDtoFromJson(json);
}

@freezed
abstract class InventoryBalanceFarmDto with _$InventoryBalanceFarmDto {
  const factory InventoryBalanceFarmDto({
    required String id,
    required String name,
  }) = _InventoryBalanceFarmDto;

  factory InventoryBalanceFarmDto.fromJson(Map<String, dynamic> json) =>
      _$InventoryBalanceFarmDtoFromJson(json);
}

@freezed
abstract class InventoryBalanceLocationDto with _$InventoryBalanceLocationDto {
  const factory InventoryBalanceLocationDto({
    required String id,
    required String name,
  }) = _InventoryBalanceLocationDto;

  factory InventoryBalanceLocationDto.fromJson(Map<String, dynamic> json) =>
      _$InventoryBalanceLocationDtoFromJson(json);
}

@freezed
abstract class InventoryBalanceProductDto with _$InventoryBalanceProductDto {
  const factory InventoryBalanceProductDto({
    required String id,
    required String name,
    String? code,
  }) = _InventoryBalanceProductDto;

  factory InventoryBalanceProductDto.fromJson(Map<String, dynamic> json) =>
      _$InventoryBalanceProductDtoFromJson(json);
}

@freezed
abstract class CreateInventoryBalanceRequestDto
    with _$CreateInventoryBalanceRequestDto {
  const factory CreateInventoryBalanceRequestDto({
    required String farmId,
    required String inventoryLocationId,
    required String productId,
    required double quantity,
    required double averageUnitCost,
    DateTime? occurredAt,
    String? notes,
    @Default(true) bool active,
  }) = _CreateInventoryBalanceRequestDto;

  factory CreateInventoryBalanceRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateInventoryBalanceRequestDtoFromJson(json);
}

@freezed
abstract class UpdateInventoryBalanceRequestDto
    with _$UpdateInventoryBalanceRequestDto {
  const factory UpdateInventoryBalanceRequestDto({
    double? quantity,
    double? averageUnitCost,
    String? notes,
  }) = _UpdateInventoryBalanceRequestDto;

  factory UpdateInventoryBalanceRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$UpdateInventoryBalanceRequestDtoFromJson(json);
}

@freezed
abstract class InventoryMovementDto with _$InventoryMovementDto {
  const factory InventoryMovementDto({
    required String id,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
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
  }) = _InventoryMovementDto;

  factory InventoryMovementDto.fromJson(Map<String, dynamic> json) =>
      _$InventoryMovementDtoFromJson(json);
}
