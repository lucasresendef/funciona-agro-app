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
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    required String farmId,
    required String fieldId,
    required DateTime operationDate,
    required FieldOperationStatus status,
    String? description,
    String? responsibleUserId,
    DateTime? startedAt,
    DateTime? finishedAt,
    @Default(<FieldOperationItemDto>[]) List<FieldOperationItemDto> items,
  }) = _FieldOperationDto;

  factory FieldOperationDto.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationDtoFromJson(json);
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
  }) = _FieldOperationItemDto;

  factory FieldOperationItemDto.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationItemDtoFromJson(json);
}

@freezed
abstract class CreateFieldOperationRequestDto
    with _$CreateFieldOperationRequestDto {
  const factory CreateFieldOperationRequestDto({
    required String farmId,
    required String fieldId,
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
