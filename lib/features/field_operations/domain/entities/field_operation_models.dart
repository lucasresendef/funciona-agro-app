import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_operation_models.freezed.dart';
part 'field_operation_models.g.dart';

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
      return double.tryParse(json.replaceAll(',', '.'));
    }
    if (json is num) {
      return json.toDouble();
    }
    return null;
  }

  @override
  dynamic toJson(double? object) => object;
}

@freezed
abstract class FieldOperation with _$FieldOperation {
  const factory FieldOperation({
    required AuditMetadata metadata,
    int? sequenceNumber,
    required String farmId,
    @Default(<String>[]) List<String> fieldIds,
    @Default(<FieldOperationFieldRef>[]) List<FieldOperationFieldRef> fields,
    required DateTime operationDate,
    required FieldOperationStatus status,
    String? description,
    String? responsibleUserId,
    DateTime? startedAt,
    DateTime? finishedAt,
    @Default(<FieldOperationItem>[]) List<FieldOperationItem> items,
  }) = _FieldOperation;

  factory FieldOperation.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationFromJson(json);
}

@freezed
abstract class FieldOperationFieldRef with _$FieldOperationFieldRef {
  const factory FieldOperationFieldRef({
    required String fieldId,
    String? name,
    @OptionalDoubleConverter() double? areaHectares,
  }) = _FieldOperationFieldRef;

  factory FieldOperationFieldRef.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationFieldRefFromJson(json);
}

@freezed
abstract class FieldOperationItem with _$FieldOperationItem {
  const factory FieldOperationItem({
    AuditMetadata? metadata,
    String? fieldOperationId,
    required String productId,
    @DoubleConverter() required double quantitySent,
    @OptionalDoubleConverter() double? quantityReturned,
    @OptionalDoubleConverter() double? quantityConsumed,
    @DoubleConverter() required double unitCostAtOperation,
    @OptionalDoubleConverter() double? totalCostConsumed,
    String? notes,
    @Default(<FieldOperationItemFieldResult>[])
    List<FieldOperationItemFieldResult> fieldResults,
  }) = _FieldOperationItem;

  factory FieldOperationItem.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationItemFromJson(json);
}

@freezed
abstract class FieldOperationItemFieldResult
    with _$FieldOperationItemFieldResult {
  const factory FieldOperationItemFieldResult({
    required String fieldId,
    String? fieldName,
    @OptionalDoubleConverter() double? allocatedQuantityConsumed,
    @OptionalDoubleConverter() double? allocatedCostConsumed,
  }) = _FieldOperationItemFieldResult;

  factory FieldOperationItemFieldResult.fromJson(Map<String, dynamic> json) =>
      _$FieldOperationItemFieldResultFromJson(json);
}

@freezed
abstract class CreateFieldOperationInput with _$CreateFieldOperationInput {
  const factory CreateFieldOperationInput({
    required String farmId,
    @Default(<String>[]) List<String> fieldIds,
    required DateTime operationDate,
    @Default(FieldOperationStatus.open) FieldOperationStatus status,
    String? description,
    String? responsibleUserId,
    DateTime? startedAt,
    DateTime? finishedAt,
    @Default(true) bool active,
    @Default(<CreateFieldOperationItemInput>[])
    List<CreateFieldOperationItemInput> items,
  }) = _CreateFieldOperationInput;

  factory CreateFieldOperationInput.fromJson(Map<String, dynamic> json) =>
      _$CreateFieldOperationInputFromJson(json);
}

@freezed
abstract class CreateFieldOperationItemInput
    with _$CreateFieldOperationItemInput {
  const factory CreateFieldOperationItemInput({
    required String productId,
    @DoubleConverter() required double quantitySent,
    @OptionalDoubleConverter() double? quantityReturned,
    @OptionalDoubleConverter() double? quantityConsumed,
    @DoubleConverter() required double unitCostAtOperation,
    String? notes,
    @Default(true) bool active,
  }) = _CreateFieldOperationItemInput;

  factory CreateFieldOperationItemInput.fromJson(Map<String, dynamic> json) =>
      _$CreateFieldOperationItemInputFromJson(json);
}

@freezed
abstract class UpdateFieldOperationInput with _$UpdateFieldOperationInput {
  const factory UpdateFieldOperationInput({
    required String id,
    FieldOperationStatus? status,
    String? description,
    String? responsibleUserId,
    DateTime? operationDate,
    DateTime? startedAt,
    DateTime? finishedAt,
    @Default(<UpdateFieldOperationItemInput>[])
    List<UpdateFieldOperationItemInput> items,
  }) = _UpdateFieldOperationInput;

  factory UpdateFieldOperationInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateFieldOperationInputFromJson(json);
}

@freezed
abstract class UpdateFieldOperationItemInput
    with _$UpdateFieldOperationItemInput {
  const factory UpdateFieldOperationItemInput({
    String? id,
    required String productId,
    @DoubleConverter() required double quantitySent,
    @OptionalDoubleConverter() double? quantityReturned,
    @OptionalDoubleConverter() double? quantityConsumed,
    @DoubleConverter() required double unitCostAtOperation,
    @OptionalDoubleConverter() double? totalCostConsumed,
    String? notes,
    @Default(true) bool active,
  }) = _UpdateFieldOperationItemInput;

  factory UpdateFieldOperationItemInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateFieldOperationItemInputFromJson(json);
}
