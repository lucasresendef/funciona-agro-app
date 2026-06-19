// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_operation_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FieldOperationDto _$FieldOperationDtoFromJson(
  Map<String, dynamic> json,
) => _FieldOperationDto(
  id: json['id'] as String,
  sequenceNumber: (json['sequenceNumber'] as num?)?.toInt(),
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
  fieldIds:
      (json['fieldIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  fields:
      (json['fields'] as List<dynamic>?)
          ?.map(
            (e) =>
                FieldOperationFieldRefDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <FieldOperationFieldRefDto>[],
  operationDate: DateTime.parse(json['operationDate'] as String),
  status: $enumDecode(_$FieldOperationStatusEnumMap, json['status']),
  description: json['description'] as String?,
  responsibleUserId: json['responsibleUserId'] as String?,
  startedAt: json['startedAt'] == null
      ? null
      : DateTime.parse(json['startedAt'] as String),
  finishedAt: json['finishedAt'] == null
      ? null
      : DateTime.parse(json['finishedAt'] as String),
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => FieldOperationItemDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <FieldOperationItemDto>[],
);

Map<String, dynamic> _$FieldOperationDtoToJson(_FieldOperationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sequenceNumber': instance.sequenceNumber,
      'active': instance.active,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'createdByEmail': instance.createdByEmail,
      'updatedBy': instance.updatedBy,
      'updatedByEmail': instance.updatedByEmail,
      'farmId': instance.farmId,
      'fieldIds': instance.fieldIds,
      'fields': instance.fields,
      'operationDate': instance.operationDate.toIso8601String(),
      'status': _$FieldOperationStatusEnumMap[instance.status]!,
      'description': instance.description,
      'responsibleUserId': instance.responsibleUserId,
      'startedAt': instance.startedAt?.toIso8601String(),
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'items': instance.items,
    };

const _$FieldOperationStatusEnumMap = {
  FieldOperationStatus.open: 'OPEN',
  FieldOperationStatus.finished: 'FINISHED',
  FieldOperationStatus.canceled: 'CANCELED',
};

_FieldOperationFieldRefDto _$FieldOperationFieldRefDtoFromJson(
  Map<String, dynamic> json,
) => _FieldOperationFieldRefDto(
  fieldId: json['fieldId'] as String,
  name: json['name'] as String?,
  areaHectares: const OptionalDoubleConverter().fromJson(json['areaHectares']),
);

Map<String, dynamic> _$FieldOperationFieldRefDtoToJson(
  _FieldOperationFieldRefDto instance,
) => <String, dynamic>{
  'fieldId': instance.fieldId,
  'name': instance.name,
  'areaHectares': const OptionalDoubleConverter().toJson(instance.areaHectares),
};

_FieldOperationItemDto _$FieldOperationItemDtoFromJson(
  Map<String, dynamic> json,
) => _FieldOperationItemDto(
  id: json['id'] as String?,
  active: json['active'] as bool?,
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
  fieldOperationId: json['fieldOperationId'] as String?,
  productId: json['productId'] as String,
  quantitySent: const DoubleConverter().fromJson(json['quantitySent']),
  quantityReturned: const OptionalDoubleConverter().fromJson(
    json['quantityReturned'],
  ),
  quantityConsumed: const OptionalDoubleConverter().fromJson(
    json['quantityConsumed'],
  ),
  unitCostAtOperation: const DoubleConverter().fromJson(
    json['unitCostAtOperation'],
  ),
  totalCostConsumed: const OptionalDoubleConverter().fromJson(
    json['totalCostConsumed'],
  ),
  notes: json['notes'] as String?,
  fieldResults:
      (json['fieldResults'] as List<dynamic>?)
          ?.map(
            (e) => FieldOperationItemFieldResultDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <FieldOperationItemFieldResultDto>[],
);

Map<String, dynamic> _$FieldOperationItemDtoToJson(
  _FieldOperationItemDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'active': instance.active,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'createdBy': instance.createdBy,
  'createdByEmail': instance.createdByEmail,
  'updatedBy': instance.updatedBy,
  'updatedByEmail': instance.updatedByEmail,
  'fieldOperationId': instance.fieldOperationId,
  'productId': instance.productId,
  'quantitySent': const DoubleConverter().toJson(instance.quantitySent),
  'quantityReturned': const OptionalDoubleConverter().toJson(
    instance.quantityReturned,
  ),
  'quantityConsumed': const OptionalDoubleConverter().toJson(
    instance.quantityConsumed,
  ),
  'unitCostAtOperation': const DoubleConverter().toJson(
    instance.unitCostAtOperation,
  ),
  'totalCostConsumed': const OptionalDoubleConverter().toJson(
    instance.totalCostConsumed,
  ),
  'notes': instance.notes,
  'fieldResults': instance.fieldResults,
};

_FieldOperationItemFieldResultDto _$FieldOperationItemFieldResultDtoFromJson(
  Map<String, dynamic> json,
) => _FieldOperationItemFieldResultDto(
  fieldId: json['fieldId'] as String,
  fieldName: json['fieldName'] as String?,
  allocatedQuantityConsumed: const OptionalDoubleConverter().fromJson(
    json['allocatedQuantityConsumed'],
  ),
  allocatedCostConsumed: const OptionalDoubleConverter().fromJson(
    json['allocatedCostConsumed'],
  ),
);

Map<String, dynamic> _$FieldOperationItemFieldResultDtoToJson(
  _FieldOperationItemFieldResultDto instance,
) => <String, dynamic>{
  'fieldId': instance.fieldId,
  'fieldName': instance.fieldName,
  'allocatedQuantityConsumed': const OptionalDoubleConverter().toJson(
    instance.allocatedQuantityConsumed,
  ),
  'allocatedCostConsumed': const OptionalDoubleConverter().toJson(
    instance.allocatedCostConsumed,
  ),
};

_CreateFieldOperationRequestDto _$CreateFieldOperationRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateFieldOperationRequestDto(
  farmId: json['farmId'] as String,
  fieldIds:
      (json['fieldIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  operationDate: DateTime.parse(json['operationDate'] as String),
  status:
      $enumDecodeNullable(_$FieldOperationStatusEnumMap, json['status']) ??
      FieldOperationStatus.open,
  description: json['description'] as String?,
  responsibleUserId: json['responsibleUserId'] as String?,
  startedAt: json['startedAt'] == null
      ? null
      : DateTime.parse(json['startedAt'] as String),
  finishedAt: json['finishedAt'] == null
      ? null
      : DateTime.parse(json['finishedAt'] as String),
  active: json['active'] as bool? ?? true,
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => CreateFieldOperationItemRequestDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <CreateFieldOperationItemRequestDto>[],
);

Map<String, dynamic> _$CreateFieldOperationRequestDtoToJson(
  _CreateFieldOperationRequestDto instance,
) => <String, dynamic>{
  'farmId': instance.farmId,
  'fieldIds': instance.fieldIds,
  'operationDate': instance.operationDate.toIso8601String(),
  'status': _$FieldOperationStatusEnumMap[instance.status]!,
  'description': instance.description,
  'responsibleUserId': instance.responsibleUserId,
  'startedAt': instance.startedAt?.toIso8601String(),
  'finishedAt': instance.finishedAt?.toIso8601String(),
  'active': instance.active,
  'items': instance.items,
};

_CreateFieldOperationItemRequestDto
_$CreateFieldOperationItemRequestDtoFromJson(Map<String, dynamic> json) =>
    _CreateFieldOperationItemRequestDto(
      productId: json['productId'] as String,
      quantitySent: (json['quantitySent'] as num).toDouble(),
      quantityReturned: (json['quantityReturned'] as num?)?.toDouble(),
      quantityConsumed: (json['quantityConsumed'] as num?)?.toDouble(),
      unitCostAtOperation: (json['unitCostAtOperation'] as num).toDouble(),
      notes: json['notes'] as String?,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$CreateFieldOperationItemRequestDtoToJson(
  _CreateFieldOperationItemRequestDto instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'quantitySent': instance.quantitySent,
  'quantityReturned': instance.quantityReturned,
  'quantityConsumed': instance.quantityConsumed,
  'unitCostAtOperation': instance.unitCostAtOperation,
  'notes': instance.notes,
  'active': instance.active,
};

_UpdateFieldOperationRequestDto _$UpdateFieldOperationRequestDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateFieldOperationRequestDto(
  status: $enumDecodeNullable(_$FieldOperationStatusEnumMap, json['status']),
  operationDate: json['operationDate'] == null
      ? null
      : DateTime.parse(json['operationDate'] as String),
  description: json['description'] as String?,
  responsibleUserId: json['responsibleUserId'] as String?,
  startedAt: json['startedAt'] == null
      ? null
      : DateTime.parse(json['startedAt'] as String),
  finishedAt: json['finishedAt'] == null
      ? null
      : DateTime.parse(json['finishedAt'] as String),
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => UpdateFieldOperationItemRequestDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <UpdateFieldOperationItemRequestDto>[],
);

Map<String, dynamic> _$UpdateFieldOperationRequestDtoToJson(
  _UpdateFieldOperationRequestDto instance,
) => <String, dynamic>{
  'status': _$FieldOperationStatusEnumMap[instance.status],
  'operationDate': instance.operationDate?.toIso8601String(),
  'description': instance.description,
  'responsibleUserId': instance.responsibleUserId,
  'startedAt': instance.startedAt?.toIso8601String(),
  'finishedAt': instance.finishedAt?.toIso8601String(),
  'items': instance.items,
};

_UpdateFieldOperationItemRequestDto
_$UpdateFieldOperationItemRequestDtoFromJson(Map<String, dynamic> json) =>
    _UpdateFieldOperationItemRequestDto(
      id: json['id'] as String?,
      productId: json['productId'] as String,
      quantitySent: (json['quantitySent'] as num).toDouble(),
      quantityReturned: (json['quantityReturned'] as num?)?.toDouble(),
      quantityConsumed: (json['quantityConsumed'] as num?)?.toDouble(),
      unitCostAtOperation: (json['unitCostAtOperation'] as num).toDouble(),
      totalCostConsumed: (json['totalCostConsumed'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$UpdateFieldOperationItemRequestDtoToJson(
  _UpdateFieldOperationItemRequestDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'quantitySent': instance.quantitySent,
  'quantityReturned': instance.quantityReturned,
  'quantityConsumed': instance.quantityConsumed,
  'unitCostAtOperation': instance.unitCostAtOperation,
  'totalCostConsumed': instance.totalCostConsumed,
  'notes': instance.notes,
  'active': instance.active,
};
