// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_operation_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FieldOperation _$FieldOperationFromJson(
  Map<String, dynamic> json,
) => _FieldOperation(
  metadata: AuditMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  sequenceNumber: (json['sequenceNumber'] as num?)?.toInt(),
  farmId: json['farmId'] as String,
  fieldIds:
      (json['fieldIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  fields:
      (json['fields'] as List<dynamic>?)
          ?.map(
            (e) => FieldOperationFieldRef.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <FieldOperationFieldRef>[],
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
          ?.map((e) => FieldOperationItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FieldOperationItem>[],
);

Map<String, dynamic> _$FieldOperationToJson(_FieldOperation instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'sequenceNumber': instance.sequenceNumber,
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

_FieldOperationFieldRef _$FieldOperationFieldRefFromJson(
  Map<String, dynamic> json,
) => _FieldOperationFieldRef(
  fieldId: json['fieldId'] as String,
  name: json['name'] as String?,
  areaHectares: const OptionalDoubleConverter().fromJson(json['areaHectares']),
);

Map<String, dynamic> _$FieldOperationFieldRefToJson(
  _FieldOperationFieldRef instance,
) => <String, dynamic>{
  'fieldId': instance.fieldId,
  'name': instance.name,
  'areaHectares': const OptionalDoubleConverter().toJson(instance.areaHectares),
};

_FieldOperationItem _$FieldOperationItemFromJson(Map<String, dynamic> json) =>
    _FieldOperationItem(
      metadata: json['metadata'] == null
          ? null
          : AuditMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
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
                (e) => FieldOperationItemFieldResult.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const <FieldOperationItemFieldResult>[],
    );

Map<String, dynamic> _$FieldOperationItemToJson(_FieldOperationItem instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
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

_FieldOperationItemFieldResult _$FieldOperationItemFieldResultFromJson(
  Map<String, dynamic> json,
) => _FieldOperationItemFieldResult(
  fieldId: json['fieldId'] as String,
  fieldName: json['fieldName'] as String?,
  allocatedQuantityConsumed: const OptionalDoubleConverter().fromJson(
    json['allocatedQuantityConsumed'],
  ),
  allocatedCostConsumed: const OptionalDoubleConverter().fromJson(
    json['allocatedCostConsumed'],
  ),
);

Map<String, dynamic> _$FieldOperationItemFieldResultToJson(
  _FieldOperationItemFieldResult instance,
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

_CreateFieldOperationInput _$CreateFieldOperationInputFromJson(
  Map<String, dynamic> json,
) => _CreateFieldOperationInput(
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
            (e) => CreateFieldOperationItemInput.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <CreateFieldOperationItemInput>[],
);

Map<String, dynamic> _$CreateFieldOperationInputToJson(
  _CreateFieldOperationInput instance,
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

_CreateFieldOperationItemInput _$CreateFieldOperationItemInputFromJson(
  Map<String, dynamic> json,
) => _CreateFieldOperationItemInput(
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
  notes: json['notes'] as String?,
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$CreateFieldOperationItemInputToJson(
  _CreateFieldOperationItemInput instance,
) => <String, dynamic>{
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
  'notes': instance.notes,
  'active': instance.active,
};

_UpdateFieldOperationInput _$UpdateFieldOperationInputFromJson(
  Map<String, dynamic> json,
) => _UpdateFieldOperationInput(
  id: json['id'] as String,
  status: $enumDecodeNullable(_$FieldOperationStatusEnumMap, json['status']),
  description: json['description'] as String?,
  responsibleUserId: json['responsibleUserId'] as String?,
  operationDate: json['operationDate'] == null
      ? null
      : DateTime.parse(json['operationDate'] as String),
  startedAt: json['startedAt'] == null
      ? null
      : DateTime.parse(json['startedAt'] as String),
  finishedAt: json['finishedAt'] == null
      ? null
      : DateTime.parse(json['finishedAt'] as String),
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => UpdateFieldOperationItemInput.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <UpdateFieldOperationItemInput>[],
);

Map<String, dynamic> _$UpdateFieldOperationInputToJson(
  _UpdateFieldOperationInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': _$FieldOperationStatusEnumMap[instance.status],
  'description': instance.description,
  'responsibleUserId': instance.responsibleUserId,
  'operationDate': instance.operationDate?.toIso8601String(),
  'startedAt': instance.startedAt?.toIso8601String(),
  'finishedAt': instance.finishedAt?.toIso8601String(),
  'items': instance.items,
};

_UpdateFieldOperationItemInput _$UpdateFieldOperationItemInputFromJson(
  Map<String, dynamic> json,
) => _UpdateFieldOperationItemInput(
  id: json['id'] as String?,
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
  active: json['active'] as bool? ?? true,
);

Map<String, dynamic> _$UpdateFieldOperationItemInputToJson(
  _UpdateFieldOperationItemInput instance,
) => <String, dynamic>{
  'id': instance.id,
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
  'active': instance.active,
};
