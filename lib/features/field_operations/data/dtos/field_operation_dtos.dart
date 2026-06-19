import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_operation_dtos.freezed.dart';
part 'field_operation_dtos.g.dart';

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

class OptionalDoubleConverter implements JsonConverter<double?, dynamic> {
  const OptionalDoubleConverter();

  @override
  double? fromJson(dynamic json) {
    if (json == null) {
      return null;
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
  dynamic toJson(double? object) => object;
}

@freezed
abstract class FieldOperationDto with _$FieldOperationDto {
  const factory FieldOperationDto({
    required String id,
    int? sequenceNumber,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    required String farmId,
    String? inventoryLocationId,
    @Default(<String>[]) List<String> fieldIds,
    @Default(<FieldOperationFieldRefDto>[])
    List<FieldOperationFieldRefDto> fields,
    required DateTime operationDate,
    required FieldOperationStatus status,
    String? description,
    String? responsibleUserId,
    DateTime? startedAt,
    DateTime? finishedAt,
    FieldOperationFarmRefDto? farm,
    FieldOperationInventoryLocationRefDto? inventoryLocation,
    @Default(<FieldOperationItemDto>[]) List<FieldOperationItemDto> items,
  }) = _FieldOperationDto;

  factory FieldOperationDto.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationDtoFromJson(json);
}

@freezed
abstract class FieldOperationFarmRefDto with _$FieldOperationFarmRefDto {
  const factory FieldOperationFarmRefDto({
    required String id,
    required String name,
  }) = _FieldOperationFarmRefDto;

  factory FieldOperationFarmRefDto.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationFarmRefDtoFromJson(json);
}

@freezed
abstract class FieldOperationInventoryLocationRefDto
    with _$FieldOperationInventoryLocationRefDto {
  const factory FieldOperationInventoryLocationRefDto({
    required String id,
    required String name,
    String? farmId,
  }) = _FieldOperationInventoryLocationRefDto;

  factory FieldOperationInventoryLocationRefDto.fromJson(
    Map<String, dynamic> json,
  ) => _$FieldOperationInventoryLocationRefDtoFromJson(json);
}

@freezed
abstract class FieldOperationFieldRefDto with _$FieldOperationFieldRefDto {
  const factory FieldOperationFieldRefDto({
    String? id,
    String? fieldOperationId,
    required String fieldId,
    @OptionalDoubleConverter() double? areaHectaresSnapshot,
    bool? active,
    FieldOperationFieldLookupDto? field,
  }) = _FieldOperationFieldRefDto;

  factory FieldOperationFieldRefDto.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationFieldRefDtoFromJson(json);
}

@freezed
abstract class FieldOperationFieldLookupDto
    with _$FieldOperationFieldLookupDto {
  const factory FieldOperationFieldLookupDto({
    required String id,
    String? name,
    @OptionalDoubleConverter() double? areaHectares,
  }) = _FieldOperationFieldLookupDto;

  factory FieldOperationFieldLookupDto.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationFieldLookupDtoFromJson(json);
}

@freezed
abstract class FieldOperationItemDto with _$FieldOperationItemDto {
  const factory FieldOperationItemDto({
    String? id,
    bool? active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    String? fieldOperationId,
    required String productId,
    @DoubleConverter() required double quantitySent,
    @OptionalDoubleConverter() double? quantityReturned,
    @OptionalDoubleConverter() double? quantityConsumed,
    @DoubleConverter() required double unitCostAtOperation,
    @OptionalDoubleConverter() double? totalCostConsumed,
    String? notes,
    FieldOperationProductRefDto? product,
    @Default(<FieldOperationItemFieldResultDto>[])
    List<FieldOperationItemFieldResultDto> fieldResults,
  }) = _FieldOperationItemDto;

  factory FieldOperationItemDto.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationItemDtoFromJson(json);
}

@freezed
abstract class FieldOperationProductRefDto with _$FieldOperationProductRefDto {
  const factory FieldOperationProductRefDto({
    required String id,
    required String name,
    String? code,
    FieldOperationUnitOfMeasureDto? unitOfMeasure,
  }) = _FieldOperationProductRefDto;

  factory FieldOperationProductRefDto.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationProductRefDtoFromJson(json);
}

@freezed
abstract class FieldOperationUnitOfMeasureDto
    with _$FieldOperationUnitOfMeasureDto {
  const factory FieldOperationUnitOfMeasureDto({
    required String id,
    String? name,
    String? symbol,
  }) = _FieldOperationUnitOfMeasureDto;

  factory FieldOperationUnitOfMeasureDto.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationUnitOfMeasureDtoFromJson(json);
}

@freezed
abstract class FieldOperationItemFieldResultDto
    with _$FieldOperationItemFieldResultDto {
  const factory FieldOperationItemFieldResultDto({
    String? id,
    String? fieldOperationItemId,
    required String fieldId,
    FieldOperationFieldLookupDto? field,
    @OptionalDoubleConverter() double? allocatedQuantityConsumed,
    @JsonKey(name: 'allocatedTotalCostConsumed')
    @OptionalDoubleConverter()
    double? allocatedCostConsumed,
  }) = _FieldOperationItemFieldResultDto;

  factory FieldOperationItemFieldResultDto.fromJson(
    Map<String, dynamic> json,
  ) => _$FieldOperationItemFieldResultDtoFromJson(json);
}

@freezed
abstract class CreateFieldOperationRequestDto
    with _$CreateFieldOperationRequestDto {
  const factory CreateFieldOperationRequestDto({
    required String farmId,
    @Default(<String>[]) List<String> fieldIds,
    required DateTime operationDate,
    @Default(FieldOperationStatus.open) FieldOperationStatus status,
    String? description,
    String? responsibleUserId,
    DateTime? startedAt,
    DateTime? finishedAt,
    @Default(true) bool active,
    @Default(<CreateFieldOperationItemRequestDto>[])
    List<CreateFieldOperationItemRequestDto> items,
  }) = _CreateFieldOperationRequestDto;

  factory CreateFieldOperationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateFieldOperationRequestDtoFromJson(json);
}

@freezed
abstract class CreateFieldOperationItemRequestDto
    with _$CreateFieldOperationItemRequestDto {
  const factory CreateFieldOperationItemRequestDto({
    required String productId,
    required double quantitySent,
    double? quantityReturned,
    double? quantityConsumed,
    required double unitCostAtOperation,
    String? notes,
    @Default(true) bool active,
  }) = _CreateFieldOperationItemRequestDto;

  factory CreateFieldOperationItemRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateFieldOperationItemRequestDtoFromJson(json);
}

@freezed
abstract class UpdateFieldOperationRequestDto
    with _$UpdateFieldOperationRequestDto {
  const factory UpdateFieldOperationRequestDto({
    FieldOperationStatus? status,
    DateTime? operationDate,
    String? description,
    String? responsibleUserId,
    DateTime? startedAt,
    DateTime? finishedAt,
    @Default(<UpdateFieldOperationItemRequestDto>[])
    List<UpdateFieldOperationItemRequestDto> items,
  }) = _UpdateFieldOperationRequestDto;

  factory UpdateFieldOperationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateFieldOperationRequestDtoFromJson(json);
}

@freezed
abstract class UpdateFieldOperationItemRequestDto
    with _$UpdateFieldOperationItemRequestDto {
  const factory UpdateFieldOperationItemRequestDto({
    String? id,
    required String productId,
    required double quantitySent,
    double? quantityReturned,
    double? quantityConsumed,
    required double unitCostAtOperation,
    double? totalCostConsumed,
    String? notes,
    @Default(true) bool active,
  }) = _UpdateFieldOperationItemRequestDto;

  factory UpdateFieldOperationItemRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$UpdateFieldOperationItemRequestDtoFromJson(json);
}
