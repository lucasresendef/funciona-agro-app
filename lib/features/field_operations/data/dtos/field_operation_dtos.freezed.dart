// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_operation_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FieldOperationDto {

 String get id; int? get sequenceNumber; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get farmId; String? get inventoryLocationId; List<String> get fieldIds; List<FieldOperationFieldRefDto> get fields; DateTime get operationDate; FieldOperationStatus get status; String? get description; String? get responsibleUserId; DateTime? get startedAt; DateTime? get finishedAt; FieldOperationFarmRefDto? get farm; FieldOperationInventoryLocationRefDto? get inventoryLocation; List<FieldOperationItemDto> get items;
/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationDtoCopyWith<FieldOperationDto> get copyWith => _$FieldOperationDtoCopyWithImpl<FieldOperationDto>(this as FieldOperationDto, _$identity);

  /// Serializes this FieldOperationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.sequenceNumber, sequenceNumber) || other.sequenceNumber == sequenceNumber)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&const DeepCollectionEquality().equals(other.fieldIds, fieldIds)&&const DeepCollectionEquality().equals(other.fields, fields)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&(identical(other.farm, farm) || other.farm == farm)&&(identical(other.inventoryLocation, inventoryLocation) || other.inventoryLocation == inventoryLocation)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,sequenceNumber,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,inventoryLocationId,const DeepCollectionEquality().hash(fieldIds),const DeepCollectionEquality().hash(fields),operationDate,status,description,responsibleUserId,startedAt,finishedAt,farm,inventoryLocation,const DeepCollectionEquality().hash(items)]);

@override
String toString() {
  return 'FieldOperationDto(id: $id, sequenceNumber: $sequenceNumber, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, inventoryLocationId: $inventoryLocationId, fieldIds: $fieldIds, fields: $fields, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, farm: $farm, inventoryLocation: $inventoryLocation, items: $items)';
}


}

/// @nodoc
abstract mixin class $FieldOperationDtoCopyWith<$Res>  {
  factory $FieldOperationDtoCopyWith(FieldOperationDto value, $Res Function(FieldOperationDto) _then) = _$FieldOperationDtoCopyWithImpl;
@useResult
$Res call({
 String id, int? sequenceNumber, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String? inventoryLocationId, List<String> fieldIds, List<FieldOperationFieldRefDto> fields, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, FieldOperationFarmRefDto? farm, FieldOperationInventoryLocationRefDto? inventoryLocation, List<FieldOperationItemDto> items
});


$FieldOperationFarmRefDtoCopyWith<$Res>? get farm;$FieldOperationInventoryLocationRefDtoCopyWith<$Res>? get inventoryLocation;

}
/// @nodoc
class _$FieldOperationDtoCopyWithImpl<$Res>
    implements $FieldOperationDtoCopyWith<$Res> {
  _$FieldOperationDtoCopyWithImpl(this._self, this._then);

  final FieldOperationDto _self;
  final $Res Function(FieldOperationDto) _then;

/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sequenceNumber = freezed,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? inventoryLocationId = freezed,Object? fieldIds = null,Object? fields = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? farm = freezed,Object? inventoryLocation = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sequenceNumber: freezed == sequenceNumber ? _self.sequenceNumber : sequenceNumber // ignore: cast_nullable_to_non_nullable
as int?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationId: freezed == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String?,fieldIds: null == fieldIds ? _self.fieldIds : fieldIds // ignore: cast_nullable_to_non_nullable
as List<String>,fields: null == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<FieldOperationFieldRefDto>,operationDate: null == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,farm: freezed == farm ? _self.farm : farm // ignore: cast_nullable_to_non_nullable
as FieldOperationFarmRefDto?,inventoryLocation: freezed == inventoryLocation ? _self.inventoryLocation : inventoryLocation // ignore: cast_nullable_to_non_nullable
as FieldOperationInventoryLocationRefDto?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FieldOperationItemDto>,
  ));
}
/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationFarmRefDtoCopyWith<$Res>? get farm {
    if (_self.farm == null) {
    return null;
  }

  return $FieldOperationFarmRefDtoCopyWith<$Res>(_self.farm!, (value) {
    return _then(_self.copyWith(farm: value));
  });
}/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationInventoryLocationRefDtoCopyWith<$Res>? get inventoryLocation {
    if (_self.inventoryLocation == null) {
    return null;
  }

  return $FieldOperationInventoryLocationRefDtoCopyWith<$Res>(_self.inventoryLocation!, (value) {
    return _then(_self.copyWith(inventoryLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [FieldOperationDto].
extension FieldOperationDtoPatterns on FieldOperationDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int? sequenceNumber,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String? inventoryLocationId,  List<String> fieldIds,  List<FieldOperationFieldRefDto> fields,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  FieldOperationFarmRefDto? farm,  FieldOperationInventoryLocationRefDto? inventoryLocation,  List<FieldOperationItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationDto() when $default != null:
return $default(_that.id,_that.sequenceNumber,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.inventoryLocationId,_that.fieldIds,_that.fields,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.farm,_that.inventoryLocation,_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int? sequenceNumber,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String? inventoryLocationId,  List<String> fieldIds,  List<FieldOperationFieldRefDto> fields,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  FieldOperationFarmRefDto? farm,  FieldOperationInventoryLocationRefDto? inventoryLocation,  List<FieldOperationItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationDto():
return $default(_that.id,_that.sequenceNumber,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.inventoryLocationId,_that.fieldIds,_that.fields,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.farm,_that.inventoryLocation,_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int? sequenceNumber,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String? inventoryLocationId,  List<String> fieldIds,  List<FieldOperationFieldRefDto> fields,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  FieldOperationFarmRefDto? farm,  FieldOperationInventoryLocationRefDto? inventoryLocation,  List<FieldOperationItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationDto() when $default != null:
return $default(_that.id,_that.sequenceNumber,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.inventoryLocationId,_that.fieldIds,_that.fields,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.farm,_that.inventoryLocation,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationDto implements FieldOperationDto {
  const _FieldOperationDto({required this.id, this.sequenceNumber, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.farmId, this.inventoryLocationId, final  List<String> fieldIds = const <String>[], final  List<FieldOperationFieldRefDto> fields = const <FieldOperationFieldRefDto>[], required this.operationDate, required this.status, this.description, this.responsibleUserId, this.startedAt, this.finishedAt, this.farm, this.inventoryLocation, final  List<FieldOperationItemDto> items = const <FieldOperationItemDto>[]}): _fieldIds = fieldIds,_fields = fields,_items = items;
  factory _FieldOperationDto.fromJson(Map<String, dynamic> json) => _$FieldOperationDtoFromJson(json);

@override final  String id;
@override final  int? sequenceNumber;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String farmId;
@override final  String? inventoryLocationId;
 final  List<String> _fieldIds;
@override@JsonKey() List<String> get fieldIds {
  if (_fieldIds is EqualUnmodifiableListView) return _fieldIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fieldIds);
}

 final  List<FieldOperationFieldRefDto> _fields;
@override@JsonKey() List<FieldOperationFieldRefDto> get fields {
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fields);
}

@override final  DateTime operationDate;
@override final  FieldOperationStatus status;
@override final  String? description;
@override final  String? responsibleUserId;
@override final  DateTime? startedAt;
@override final  DateTime? finishedAt;
@override final  FieldOperationFarmRefDto? farm;
@override final  FieldOperationInventoryLocationRefDto? inventoryLocation;
 final  List<FieldOperationItemDto> _items;
@override@JsonKey() List<FieldOperationItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationDtoCopyWith<_FieldOperationDto> get copyWith => __$FieldOperationDtoCopyWithImpl<_FieldOperationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.sequenceNumber, sequenceNumber) || other.sequenceNumber == sequenceNumber)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&const DeepCollectionEquality().equals(other._fieldIds, _fieldIds)&&const DeepCollectionEquality().equals(other._fields, _fields)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&(identical(other.farm, farm) || other.farm == farm)&&(identical(other.inventoryLocation, inventoryLocation) || other.inventoryLocation == inventoryLocation)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,sequenceNumber,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,inventoryLocationId,const DeepCollectionEquality().hash(_fieldIds),const DeepCollectionEquality().hash(_fields),operationDate,status,description,responsibleUserId,startedAt,finishedAt,farm,inventoryLocation,const DeepCollectionEquality().hash(_items)]);

@override
String toString() {
  return 'FieldOperationDto(id: $id, sequenceNumber: $sequenceNumber, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, inventoryLocationId: $inventoryLocationId, fieldIds: $fieldIds, fields: $fields, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, farm: $farm, inventoryLocation: $inventoryLocation, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationDtoCopyWith<$Res> implements $FieldOperationDtoCopyWith<$Res> {
  factory _$FieldOperationDtoCopyWith(_FieldOperationDto value, $Res Function(_FieldOperationDto) _then) = __$FieldOperationDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, int? sequenceNumber, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String? inventoryLocationId, List<String> fieldIds, List<FieldOperationFieldRefDto> fields, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, FieldOperationFarmRefDto? farm, FieldOperationInventoryLocationRefDto? inventoryLocation, List<FieldOperationItemDto> items
});


@override $FieldOperationFarmRefDtoCopyWith<$Res>? get farm;@override $FieldOperationInventoryLocationRefDtoCopyWith<$Res>? get inventoryLocation;

}
/// @nodoc
class __$FieldOperationDtoCopyWithImpl<$Res>
    implements _$FieldOperationDtoCopyWith<$Res> {
  __$FieldOperationDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationDto _self;
  final $Res Function(_FieldOperationDto) _then;

/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sequenceNumber = freezed,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? inventoryLocationId = freezed,Object? fieldIds = null,Object? fields = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? farm = freezed,Object? inventoryLocation = freezed,Object? items = null,}) {
  return _then(_FieldOperationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sequenceNumber: freezed == sequenceNumber ? _self.sequenceNumber : sequenceNumber // ignore: cast_nullable_to_non_nullable
as int?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationId: freezed == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String?,fieldIds: null == fieldIds ? _self._fieldIds : fieldIds // ignore: cast_nullable_to_non_nullable
as List<String>,fields: null == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<FieldOperationFieldRefDto>,operationDate: null == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,farm: freezed == farm ? _self.farm : farm // ignore: cast_nullable_to_non_nullable
as FieldOperationFarmRefDto?,inventoryLocation: freezed == inventoryLocation ? _self.inventoryLocation : inventoryLocation // ignore: cast_nullable_to_non_nullable
as FieldOperationInventoryLocationRefDto?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FieldOperationItemDto>,
  ));
}

/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationFarmRefDtoCopyWith<$Res>? get farm {
    if (_self.farm == null) {
    return null;
  }

  return $FieldOperationFarmRefDtoCopyWith<$Res>(_self.farm!, (value) {
    return _then(_self.copyWith(farm: value));
  });
}/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationInventoryLocationRefDtoCopyWith<$Res>? get inventoryLocation {
    if (_self.inventoryLocation == null) {
    return null;
  }

  return $FieldOperationInventoryLocationRefDtoCopyWith<$Res>(_self.inventoryLocation!, (value) {
    return _then(_self.copyWith(inventoryLocation: value));
  });
}
}


/// @nodoc
mixin _$FieldOperationFarmRefDto {

 String get id; String get name;
/// Create a copy of FieldOperationFarmRefDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationFarmRefDtoCopyWith<FieldOperationFarmRefDto> get copyWith => _$FieldOperationFarmRefDtoCopyWithImpl<FieldOperationFarmRefDto>(this as FieldOperationFarmRefDto, _$identity);

  /// Serializes this FieldOperationFarmRefDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationFarmRefDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'FieldOperationFarmRefDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $FieldOperationFarmRefDtoCopyWith<$Res>  {
  factory $FieldOperationFarmRefDtoCopyWith(FieldOperationFarmRefDto value, $Res Function(FieldOperationFarmRefDto) _then) = _$FieldOperationFarmRefDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$FieldOperationFarmRefDtoCopyWithImpl<$Res>
    implements $FieldOperationFarmRefDtoCopyWith<$Res> {
  _$FieldOperationFarmRefDtoCopyWithImpl(this._self, this._then);

  final FieldOperationFarmRefDto _self;
  final $Res Function(FieldOperationFarmRefDto) _then;

/// Create a copy of FieldOperationFarmRefDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldOperationFarmRefDto].
extension FieldOperationFarmRefDtoPatterns on FieldOperationFarmRefDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationFarmRefDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationFarmRefDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationFarmRefDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationFarmRefDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationFarmRefDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationFarmRefDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationFarmRefDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationFarmRefDto():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationFarmRefDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationFarmRefDto implements FieldOperationFarmRefDto {
  const _FieldOperationFarmRefDto({required this.id, required this.name});
  factory _FieldOperationFarmRefDto.fromJson(Map<String, dynamic> json) => _$FieldOperationFarmRefDtoFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of FieldOperationFarmRefDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationFarmRefDtoCopyWith<_FieldOperationFarmRefDto> get copyWith => __$FieldOperationFarmRefDtoCopyWithImpl<_FieldOperationFarmRefDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationFarmRefDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationFarmRefDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'FieldOperationFarmRefDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationFarmRefDtoCopyWith<$Res> implements $FieldOperationFarmRefDtoCopyWith<$Res> {
  factory _$FieldOperationFarmRefDtoCopyWith(_FieldOperationFarmRefDto value, $Res Function(_FieldOperationFarmRefDto) _then) = __$FieldOperationFarmRefDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$FieldOperationFarmRefDtoCopyWithImpl<$Res>
    implements _$FieldOperationFarmRefDtoCopyWith<$Res> {
  __$FieldOperationFarmRefDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationFarmRefDto _self;
  final $Res Function(_FieldOperationFarmRefDto) _then;

/// Create a copy of FieldOperationFarmRefDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_FieldOperationFarmRefDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FieldOperationInventoryLocationRefDto {

 String get id; String get name; String? get farmId;
/// Create a copy of FieldOperationInventoryLocationRefDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationInventoryLocationRefDtoCopyWith<FieldOperationInventoryLocationRefDto> get copyWith => _$FieldOperationInventoryLocationRefDtoCopyWithImpl<FieldOperationInventoryLocationRefDto>(this as FieldOperationInventoryLocationRefDto, _$identity);

  /// Serializes this FieldOperationInventoryLocationRefDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationInventoryLocationRefDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.farmId, farmId) || other.farmId == farmId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,farmId);

@override
String toString() {
  return 'FieldOperationInventoryLocationRefDto(id: $id, name: $name, farmId: $farmId)';
}


}

/// @nodoc
abstract mixin class $FieldOperationInventoryLocationRefDtoCopyWith<$Res>  {
  factory $FieldOperationInventoryLocationRefDtoCopyWith(FieldOperationInventoryLocationRefDto value, $Res Function(FieldOperationInventoryLocationRefDto) _then) = _$FieldOperationInventoryLocationRefDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? farmId
});




}
/// @nodoc
class _$FieldOperationInventoryLocationRefDtoCopyWithImpl<$Res>
    implements $FieldOperationInventoryLocationRefDtoCopyWith<$Res> {
  _$FieldOperationInventoryLocationRefDtoCopyWithImpl(this._self, this._then);

  final FieldOperationInventoryLocationRefDto _self;
  final $Res Function(FieldOperationInventoryLocationRefDto) _then;

/// Create a copy of FieldOperationInventoryLocationRefDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? farmId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,farmId: freezed == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldOperationInventoryLocationRefDto].
extension FieldOperationInventoryLocationRefDtoPatterns on FieldOperationInventoryLocationRefDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationInventoryLocationRefDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationInventoryLocationRefDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationInventoryLocationRefDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationInventoryLocationRefDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationInventoryLocationRefDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationInventoryLocationRefDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? farmId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationInventoryLocationRefDto() when $default != null:
return $default(_that.id,_that.name,_that.farmId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? farmId)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationInventoryLocationRefDto():
return $default(_that.id,_that.name,_that.farmId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? farmId)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationInventoryLocationRefDto() when $default != null:
return $default(_that.id,_that.name,_that.farmId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationInventoryLocationRefDto implements FieldOperationInventoryLocationRefDto {
  const _FieldOperationInventoryLocationRefDto({required this.id, required this.name, this.farmId});
  factory _FieldOperationInventoryLocationRefDto.fromJson(Map<String, dynamic> json) => _$FieldOperationInventoryLocationRefDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? farmId;

/// Create a copy of FieldOperationInventoryLocationRefDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationInventoryLocationRefDtoCopyWith<_FieldOperationInventoryLocationRefDto> get copyWith => __$FieldOperationInventoryLocationRefDtoCopyWithImpl<_FieldOperationInventoryLocationRefDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationInventoryLocationRefDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationInventoryLocationRefDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.farmId, farmId) || other.farmId == farmId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,farmId);

@override
String toString() {
  return 'FieldOperationInventoryLocationRefDto(id: $id, name: $name, farmId: $farmId)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationInventoryLocationRefDtoCopyWith<$Res> implements $FieldOperationInventoryLocationRefDtoCopyWith<$Res> {
  factory _$FieldOperationInventoryLocationRefDtoCopyWith(_FieldOperationInventoryLocationRefDto value, $Res Function(_FieldOperationInventoryLocationRefDto) _then) = __$FieldOperationInventoryLocationRefDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? farmId
});




}
/// @nodoc
class __$FieldOperationInventoryLocationRefDtoCopyWithImpl<$Res>
    implements _$FieldOperationInventoryLocationRefDtoCopyWith<$Res> {
  __$FieldOperationInventoryLocationRefDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationInventoryLocationRefDto _self;
  final $Res Function(_FieldOperationInventoryLocationRefDto) _then;

/// Create a copy of FieldOperationInventoryLocationRefDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? farmId = freezed,}) {
  return _then(_FieldOperationInventoryLocationRefDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,farmId: freezed == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FieldOperationFieldRefDto {

 String? get id; String? get fieldOperationId; String get fieldId;@OptionalDoubleConverter() double? get areaHectaresSnapshot; bool? get active; FieldOperationFieldLookupDto? get field;
/// Create a copy of FieldOperationFieldRefDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationFieldRefDtoCopyWith<FieldOperationFieldRefDto> get copyWith => _$FieldOperationFieldRefDtoCopyWithImpl<FieldOperationFieldRefDto>(this as FieldOperationFieldRefDto, _$identity);

  /// Serializes this FieldOperationFieldRefDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationFieldRefDto&&(identical(other.id, id) || other.id == id)&&(identical(other.fieldOperationId, fieldOperationId) || other.fieldOperationId == fieldOperationId)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.areaHectaresSnapshot, areaHectaresSnapshot) || other.areaHectaresSnapshot == areaHectaresSnapshot)&&(identical(other.active, active) || other.active == active)&&(identical(other.field, field) || other.field == field));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fieldOperationId,fieldId,areaHectaresSnapshot,active,field);

@override
String toString() {
  return 'FieldOperationFieldRefDto(id: $id, fieldOperationId: $fieldOperationId, fieldId: $fieldId, areaHectaresSnapshot: $areaHectaresSnapshot, active: $active, field: $field)';
}


}

/// @nodoc
abstract mixin class $FieldOperationFieldRefDtoCopyWith<$Res>  {
  factory $FieldOperationFieldRefDtoCopyWith(FieldOperationFieldRefDto value, $Res Function(FieldOperationFieldRefDto) _then) = _$FieldOperationFieldRefDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? fieldOperationId, String fieldId,@OptionalDoubleConverter() double? areaHectaresSnapshot, bool? active, FieldOperationFieldLookupDto? field
});


$FieldOperationFieldLookupDtoCopyWith<$Res>? get field;

}
/// @nodoc
class _$FieldOperationFieldRefDtoCopyWithImpl<$Res>
    implements $FieldOperationFieldRefDtoCopyWith<$Res> {
  _$FieldOperationFieldRefDtoCopyWithImpl(this._self, this._then);

  final FieldOperationFieldRefDto _self;
  final $Res Function(FieldOperationFieldRefDto) _then;

/// Create a copy of FieldOperationFieldRefDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fieldOperationId = freezed,Object? fieldId = null,Object? areaHectaresSnapshot = freezed,Object? active = freezed,Object? field = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fieldOperationId: freezed == fieldOperationId ? _self.fieldOperationId : fieldOperationId // ignore: cast_nullable_to_non_nullable
as String?,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,areaHectaresSnapshot: freezed == areaHectaresSnapshot ? _self.areaHectaresSnapshot : areaHectaresSnapshot // ignore: cast_nullable_to_non_nullable
as double?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as FieldOperationFieldLookupDto?,
  ));
}
/// Create a copy of FieldOperationFieldRefDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationFieldLookupDtoCopyWith<$Res>? get field {
    if (_self.field == null) {
    return null;
  }

  return $FieldOperationFieldLookupDtoCopyWith<$Res>(_self.field!, (value) {
    return _then(_self.copyWith(field: value));
  });
}
}


/// Adds pattern-matching-related methods to [FieldOperationFieldRefDto].
extension FieldOperationFieldRefDtoPatterns on FieldOperationFieldRefDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationFieldRefDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationFieldRefDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationFieldRefDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationFieldRefDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationFieldRefDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationFieldRefDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? fieldOperationId,  String fieldId, @OptionalDoubleConverter()  double? areaHectaresSnapshot,  bool? active,  FieldOperationFieldLookupDto? field)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationFieldRefDto() when $default != null:
return $default(_that.id,_that.fieldOperationId,_that.fieldId,_that.areaHectaresSnapshot,_that.active,_that.field);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? fieldOperationId,  String fieldId, @OptionalDoubleConverter()  double? areaHectaresSnapshot,  bool? active,  FieldOperationFieldLookupDto? field)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationFieldRefDto():
return $default(_that.id,_that.fieldOperationId,_that.fieldId,_that.areaHectaresSnapshot,_that.active,_that.field);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? fieldOperationId,  String fieldId, @OptionalDoubleConverter()  double? areaHectaresSnapshot,  bool? active,  FieldOperationFieldLookupDto? field)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationFieldRefDto() when $default != null:
return $default(_that.id,_that.fieldOperationId,_that.fieldId,_that.areaHectaresSnapshot,_that.active,_that.field);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationFieldRefDto implements FieldOperationFieldRefDto {
  const _FieldOperationFieldRefDto({this.id, this.fieldOperationId, required this.fieldId, @OptionalDoubleConverter() this.areaHectaresSnapshot, this.active, this.field});
  factory _FieldOperationFieldRefDto.fromJson(Map<String, dynamic> json) => _$FieldOperationFieldRefDtoFromJson(json);

@override final  String? id;
@override final  String? fieldOperationId;
@override final  String fieldId;
@override@OptionalDoubleConverter() final  double? areaHectaresSnapshot;
@override final  bool? active;
@override final  FieldOperationFieldLookupDto? field;

/// Create a copy of FieldOperationFieldRefDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationFieldRefDtoCopyWith<_FieldOperationFieldRefDto> get copyWith => __$FieldOperationFieldRefDtoCopyWithImpl<_FieldOperationFieldRefDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationFieldRefDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationFieldRefDto&&(identical(other.id, id) || other.id == id)&&(identical(other.fieldOperationId, fieldOperationId) || other.fieldOperationId == fieldOperationId)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.areaHectaresSnapshot, areaHectaresSnapshot) || other.areaHectaresSnapshot == areaHectaresSnapshot)&&(identical(other.active, active) || other.active == active)&&(identical(other.field, field) || other.field == field));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fieldOperationId,fieldId,areaHectaresSnapshot,active,field);

@override
String toString() {
  return 'FieldOperationFieldRefDto(id: $id, fieldOperationId: $fieldOperationId, fieldId: $fieldId, areaHectaresSnapshot: $areaHectaresSnapshot, active: $active, field: $field)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationFieldRefDtoCopyWith<$Res> implements $FieldOperationFieldRefDtoCopyWith<$Res> {
  factory _$FieldOperationFieldRefDtoCopyWith(_FieldOperationFieldRefDto value, $Res Function(_FieldOperationFieldRefDto) _then) = __$FieldOperationFieldRefDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? fieldOperationId, String fieldId,@OptionalDoubleConverter() double? areaHectaresSnapshot, bool? active, FieldOperationFieldLookupDto? field
});


@override $FieldOperationFieldLookupDtoCopyWith<$Res>? get field;

}
/// @nodoc
class __$FieldOperationFieldRefDtoCopyWithImpl<$Res>
    implements _$FieldOperationFieldRefDtoCopyWith<$Res> {
  __$FieldOperationFieldRefDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationFieldRefDto _self;
  final $Res Function(_FieldOperationFieldRefDto) _then;

/// Create a copy of FieldOperationFieldRefDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fieldOperationId = freezed,Object? fieldId = null,Object? areaHectaresSnapshot = freezed,Object? active = freezed,Object? field = freezed,}) {
  return _then(_FieldOperationFieldRefDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fieldOperationId: freezed == fieldOperationId ? _self.fieldOperationId : fieldOperationId // ignore: cast_nullable_to_non_nullable
as String?,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,areaHectaresSnapshot: freezed == areaHectaresSnapshot ? _self.areaHectaresSnapshot : areaHectaresSnapshot // ignore: cast_nullable_to_non_nullable
as double?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as FieldOperationFieldLookupDto?,
  ));
}

/// Create a copy of FieldOperationFieldRefDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationFieldLookupDtoCopyWith<$Res>? get field {
    if (_self.field == null) {
    return null;
  }

  return $FieldOperationFieldLookupDtoCopyWith<$Res>(_self.field!, (value) {
    return _then(_self.copyWith(field: value));
  });
}
}


/// @nodoc
mixin _$FieldOperationFieldLookupDto {

 String get id; String? get name;@OptionalDoubleConverter() double? get areaHectares;
/// Create a copy of FieldOperationFieldLookupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationFieldLookupDtoCopyWith<FieldOperationFieldLookupDto> get copyWith => _$FieldOperationFieldLookupDtoCopyWithImpl<FieldOperationFieldLookupDto>(this as FieldOperationFieldLookupDto, _$identity);

  /// Serializes this FieldOperationFieldLookupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationFieldLookupDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,areaHectares);

@override
String toString() {
  return 'FieldOperationFieldLookupDto(id: $id, name: $name, areaHectares: $areaHectares)';
}


}

/// @nodoc
abstract mixin class $FieldOperationFieldLookupDtoCopyWith<$Res>  {
  factory $FieldOperationFieldLookupDtoCopyWith(FieldOperationFieldLookupDto value, $Res Function(FieldOperationFieldLookupDto) _then) = _$FieldOperationFieldLookupDtoCopyWithImpl;
@useResult
$Res call({
 String id, String? name,@OptionalDoubleConverter() double? areaHectares
});




}
/// @nodoc
class _$FieldOperationFieldLookupDtoCopyWithImpl<$Res>
    implements $FieldOperationFieldLookupDtoCopyWith<$Res> {
  _$FieldOperationFieldLookupDtoCopyWithImpl(this._self, this._then);

  final FieldOperationFieldLookupDto _self;
  final $Res Function(FieldOperationFieldLookupDto) _then;

/// Create a copy of FieldOperationFieldLookupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? areaHectares = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,areaHectares: freezed == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldOperationFieldLookupDto].
extension FieldOperationFieldLookupDtoPatterns on FieldOperationFieldLookupDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationFieldLookupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationFieldLookupDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationFieldLookupDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationFieldLookupDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationFieldLookupDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationFieldLookupDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name, @OptionalDoubleConverter()  double? areaHectares)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationFieldLookupDto() when $default != null:
return $default(_that.id,_that.name,_that.areaHectares);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name, @OptionalDoubleConverter()  double? areaHectares)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationFieldLookupDto():
return $default(_that.id,_that.name,_that.areaHectares);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name, @OptionalDoubleConverter()  double? areaHectares)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationFieldLookupDto() when $default != null:
return $default(_that.id,_that.name,_that.areaHectares);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationFieldLookupDto implements FieldOperationFieldLookupDto {
  const _FieldOperationFieldLookupDto({required this.id, this.name, @OptionalDoubleConverter() this.areaHectares});
  factory _FieldOperationFieldLookupDto.fromJson(Map<String, dynamic> json) => _$FieldOperationFieldLookupDtoFromJson(json);

@override final  String id;
@override final  String? name;
@override@OptionalDoubleConverter() final  double? areaHectares;

/// Create a copy of FieldOperationFieldLookupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationFieldLookupDtoCopyWith<_FieldOperationFieldLookupDto> get copyWith => __$FieldOperationFieldLookupDtoCopyWithImpl<_FieldOperationFieldLookupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationFieldLookupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationFieldLookupDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,areaHectares);

@override
String toString() {
  return 'FieldOperationFieldLookupDto(id: $id, name: $name, areaHectares: $areaHectares)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationFieldLookupDtoCopyWith<$Res> implements $FieldOperationFieldLookupDtoCopyWith<$Res> {
  factory _$FieldOperationFieldLookupDtoCopyWith(_FieldOperationFieldLookupDto value, $Res Function(_FieldOperationFieldLookupDto) _then) = __$FieldOperationFieldLookupDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name,@OptionalDoubleConverter() double? areaHectares
});




}
/// @nodoc
class __$FieldOperationFieldLookupDtoCopyWithImpl<$Res>
    implements _$FieldOperationFieldLookupDtoCopyWith<$Res> {
  __$FieldOperationFieldLookupDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationFieldLookupDto _self;
  final $Res Function(_FieldOperationFieldLookupDto) _then;

/// Create a copy of FieldOperationFieldLookupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? areaHectares = freezed,}) {
  return _then(_FieldOperationFieldLookupDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,areaHectares: freezed == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$FieldOperationItemDto {

 String? get id; bool? get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String? get fieldOperationId; String get productId;@DoubleConverter() double get quantitySent;@OptionalDoubleConverter() double? get quantityReturned;@OptionalDoubleConverter() double? get quantityConsumed;@DoubleConverter() double get unitCostAtOperation;@OptionalDoubleConverter() double? get totalCostConsumed; String? get notes; FieldOperationProductRefDto? get product; List<FieldOperationItemFieldResultDto> get fieldResults;
/// Create a copy of FieldOperationItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationItemDtoCopyWith<FieldOperationItemDto> get copyWith => _$FieldOperationItemDtoCopyWithImpl<FieldOperationItemDto>(this as FieldOperationItemDto, _$identity);

  /// Serializes this FieldOperationItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.fieldOperationId, fieldOperationId) || other.fieldOperationId == fieldOperationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.totalCostConsumed, totalCostConsumed) || other.totalCostConsumed == totalCostConsumed)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.product, product) || other.product == product)&&const DeepCollectionEquality().equals(other.fieldResults, fieldResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,fieldOperationId,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,totalCostConsumed,notes,product,const DeepCollectionEquality().hash(fieldResults));

@override
String toString() {
  return 'FieldOperationItemDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, fieldOperationId: $fieldOperationId, productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, totalCostConsumed: $totalCostConsumed, notes: $notes, product: $product, fieldResults: $fieldResults)';
}


}

/// @nodoc
abstract mixin class $FieldOperationItemDtoCopyWith<$Res>  {
  factory $FieldOperationItemDtoCopyWith(FieldOperationItemDto value, $Res Function(FieldOperationItemDto) _then) = _$FieldOperationItemDtoCopyWithImpl;
@useResult
$Res call({
 String? id, bool? active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String? fieldOperationId, String productId,@DoubleConverter() double quantitySent,@OptionalDoubleConverter() double? quantityReturned,@OptionalDoubleConverter() double? quantityConsumed,@DoubleConverter() double unitCostAtOperation,@OptionalDoubleConverter() double? totalCostConsumed, String? notes, FieldOperationProductRefDto? product, List<FieldOperationItemFieldResultDto> fieldResults
});


$FieldOperationProductRefDtoCopyWith<$Res>? get product;

}
/// @nodoc
class _$FieldOperationItemDtoCopyWithImpl<$Res>
    implements $FieldOperationItemDtoCopyWith<$Res> {
  _$FieldOperationItemDtoCopyWithImpl(this._self, this._then);

  final FieldOperationItemDto _self;
  final $Res Function(FieldOperationItemDto) _then;

/// Create a copy of FieldOperationItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? active = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? fieldOperationId = freezed,Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? totalCostConsumed = freezed,Object? notes = freezed,Object? product = freezed,Object? fieldResults = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,fieldOperationId: freezed == fieldOperationId ? _self.fieldOperationId : fieldOperationId // ignore: cast_nullable_to_non_nullable
as String?,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantitySent: null == quantitySent ? _self.quantitySent : quantitySent // ignore: cast_nullable_to_non_nullable
as double,quantityReturned: freezed == quantityReturned ? _self.quantityReturned : quantityReturned // ignore: cast_nullable_to_non_nullable
as double?,quantityConsumed: freezed == quantityConsumed ? _self.quantityConsumed : quantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,unitCostAtOperation: null == unitCostAtOperation ? _self.unitCostAtOperation : unitCostAtOperation // ignore: cast_nullable_to_non_nullable
as double,totalCostConsumed: freezed == totalCostConsumed ? _self.totalCostConsumed : totalCostConsumed // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as FieldOperationProductRefDto?,fieldResults: null == fieldResults ? _self.fieldResults : fieldResults // ignore: cast_nullable_to_non_nullable
as List<FieldOperationItemFieldResultDto>,
  ));
}
/// Create a copy of FieldOperationItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationProductRefDtoCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $FieldOperationProductRefDtoCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [FieldOperationItemDto].
extension FieldOperationItemDtoPatterns on FieldOperationItemDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationItemDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationItemDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationItemDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationItemDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String? fieldOperationId,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes,  FieldOperationProductRefDto? product,  List<FieldOperationItemFieldResultDto> fieldResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationItemDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.fieldOperationId,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes,_that.product,_that.fieldResults);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String? fieldOperationId,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes,  FieldOperationProductRefDto? product,  List<FieldOperationItemFieldResultDto> fieldResults)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationItemDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.fieldOperationId,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes,_that.product,_that.fieldResults);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String? fieldOperationId,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes,  FieldOperationProductRefDto? product,  List<FieldOperationItemFieldResultDto> fieldResults)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationItemDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.fieldOperationId,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes,_that.product,_that.fieldResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationItemDto implements FieldOperationItemDto {
  const _FieldOperationItemDto({this.id, this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, this.fieldOperationId, required this.productId, @DoubleConverter() required this.quantitySent, @OptionalDoubleConverter() this.quantityReturned, @OptionalDoubleConverter() this.quantityConsumed, @DoubleConverter() required this.unitCostAtOperation, @OptionalDoubleConverter() this.totalCostConsumed, this.notes, this.product, final  List<FieldOperationItemFieldResultDto> fieldResults = const <FieldOperationItemFieldResultDto>[]}): _fieldResults = fieldResults;
  factory _FieldOperationItemDto.fromJson(Map<String, dynamic> json) => _$FieldOperationItemDtoFromJson(json);

@override final  String? id;
@override final  bool? active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String? fieldOperationId;
@override final  String productId;
@override@DoubleConverter() final  double quantitySent;
@override@OptionalDoubleConverter() final  double? quantityReturned;
@override@OptionalDoubleConverter() final  double? quantityConsumed;
@override@DoubleConverter() final  double unitCostAtOperation;
@override@OptionalDoubleConverter() final  double? totalCostConsumed;
@override final  String? notes;
@override final  FieldOperationProductRefDto? product;
 final  List<FieldOperationItemFieldResultDto> _fieldResults;
@override@JsonKey() List<FieldOperationItemFieldResultDto> get fieldResults {
  if (_fieldResults is EqualUnmodifiableListView) return _fieldResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fieldResults);
}


/// Create a copy of FieldOperationItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationItemDtoCopyWith<_FieldOperationItemDto> get copyWith => __$FieldOperationItemDtoCopyWithImpl<_FieldOperationItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.fieldOperationId, fieldOperationId) || other.fieldOperationId == fieldOperationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.totalCostConsumed, totalCostConsumed) || other.totalCostConsumed == totalCostConsumed)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.product, product) || other.product == product)&&const DeepCollectionEquality().equals(other._fieldResults, _fieldResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,fieldOperationId,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,totalCostConsumed,notes,product,const DeepCollectionEquality().hash(_fieldResults));

@override
String toString() {
  return 'FieldOperationItemDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, fieldOperationId: $fieldOperationId, productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, totalCostConsumed: $totalCostConsumed, notes: $notes, product: $product, fieldResults: $fieldResults)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationItemDtoCopyWith<$Res> implements $FieldOperationItemDtoCopyWith<$Res> {
  factory _$FieldOperationItemDtoCopyWith(_FieldOperationItemDto value, $Res Function(_FieldOperationItemDto) _then) = __$FieldOperationItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, bool? active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String? fieldOperationId, String productId,@DoubleConverter() double quantitySent,@OptionalDoubleConverter() double? quantityReturned,@OptionalDoubleConverter() double? quantityConsumed,@DoubleConverter() double unitCostAtOperation,@OptionalDoubleConverter() double? totalCostConsumed, String? notes, FieldOperationProductRefDto? product, List<FieldOperationItemFieldResultDto> fieldResults
});


@override $FieldOperationProductRefDtoCopyWith<$Res>? get product;

}
/// @nodoc
class __$FieldOperationItemDtoCopyWithImpl<$Res>
    implements _$FieldOperationItemDtoCopyWith<$Res> {
  __$FieldOperationItemDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationItemDto _self;
  final $Res Function(_FieldOperationItemDto) _then;

/// Create a copy of FieldOperationItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? active = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? fieldOperationId = freezed,Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? totalCostConsumed = freezed,Object? notes = freezed,Object? product = freezed,Object? fieldResults = null,}) {
  return _then(_FieldOperationItemDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,fieldOperationId: freezed == fieldOperationId ? _self.fieldOperationId : fieldOperationId // ignore: cast_nullable_to_non_nullable
as String?,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantitySent: null == quantitySent ? _self.quantitySent : quantitySent // ignore: cast_nullable_to_non_nullable
as double,quantityReturned: freezed == quantityReturned ? _self.quantityReturned : quantityReturned // ignore: cast_nullable_to_non_nullable
as double?,quantityConsumed: freezed == quantityConsumed ? _self.quantityConsumed : quantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,unitCostAtOperation: null == unitCostAtOperation ? _self.unitCostAtOperation : unitCostAtOperation // ignore: cast_nullable_to_non_nullable
as double,totalCostConsumed: freezed == totalCostConsumed ? _self.totalCostConsumed : totalCostConsumed // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as FieldOperationProductRefDto?,fieldResults: null == fieldResults ? _self._fieldResults : fieldResults // ignore: cast_nullable_to_non_nullable
as List<FieldOperationItemFieldResultDto>,
  ));
}

/// Create a copy of FieldOperationItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationProductRefDtoCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $FieldOperationProductRefDtoCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$FieldOperationProductRefDto {

 String get id; String get name; String? get code; FieldOperationUnitOfMeasureDto? get unitOfMeasure;
/// Create a copy of FieldOperationProductRefDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationProductRefDtoCopyWith<FieldOperationProductRefDto> get copyWith => _$FieldOperationProductRefDtoCopyWithImpl<FieldOperationProductRefDto>(this as FieldOperationProductRefDto, _$identity);

  /// Serializes this FieldOperationProductRefDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationProductRefDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.unitOfMeasure, unitOfMeasure) || other.unitOfMeasure == unitOfMeasure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,unitOfMeasure);

@override
String toString() {
  return 'FieldOperationProductRefDto(id: $id, name: $name, code: $code, unitOfMeasure: $unitOfMeasure)';
}


}

/// @nodoc
abstract mixin class $FieldOperationProductRefDtoCopyWith<$Res>  {
  factory $FieldOperationProductRefDtoCopyWith(FieldOperationProductRefDto value, $Res Function(FieldOperationProductRefDto) _then) = _$FieldOperationProductRefDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? code, FieldOperationUnitOfMeasureDto? unitOfMeasure
});


$FieldOperationUnitOfMeasureDtoCopyWith<$Res>? get unitOfMeasure;

}
/// @nodoc
class _$FieldOperationProductRefDtoCopyWithImpl<$Res>
    implements $FieldOperationProductRefDtoCopyWith<$Res> {
  _$FieldOperationProductRefDtoCopyWithImpl(this._self, this._then);

  final FieldOperationProductRefDto _self;
  final $Res Function(FieldOperationProductRefDto) _then;

/// Create a copy of FieldOperationProductRefDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = freezed,Object? unitOfMeasure = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,unitOfMeasure: freezed == unitOfMeasure ? _self.unitOfMeasure : unitOfMeasure // ignore: cast_nullable_to_non_nullable
as FieldOperationUnitOfMeasureDto?,
  ));
}
/// Create a copy of FieldOperationProductRefDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationUnitOfMeasureDtoCopyWith<$Res>? get unitOfMeasure {
    if (_self.unitOfMeasure == null) {
    return null;
  }

  return $FieldOperationUnitOfMeasureDtoCopyWith<$Res>(_self.unitOfMeasure!, (value) {
    return _then(_self.copyWith(unitOfMeasure: value));
  });
}
}


/// Adds pattern-matching-related methods to [FieldOperationProductRefDto].
extension FieldOperationProductRefDtoPatterns on FieldOperationProductRefDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationProductRefDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationProductRefDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationProductRefDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationProductRefDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationProductRefDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationProductRefDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? code,  FieldOperationUnitOfMeasureDto? unitOfMeasure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationProductRefDto() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.unitOfMeasure);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? code,  FieldOperationUnitOfMeasureDto? unitOfMeasure)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationProductRefDto():
return $default(_that.id,_that.name,_that.code,_that.unitOfMeasure);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? code,  FieldOperationUnitOfMeasureDto? unitOfMeasure)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationProductRefDto() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.unitOfMeasure);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationProductRefDto implements FieldOperationProductRefDto {
  const _FieldOperationProductRefDto({required this.id, required this.name, this.code, this.unitOfMeasure});
  factory _FieldOperationProductRefDto.fromJson(Map<String, dynamic> json) => _$FieldOperationProductRefDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? code;
@override final  FieldOperationUnitOfMeasureDto? unitOfMeasure;

/// Create a copy of FieldOperationProductRefDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationProductRefDtoCopyWith<_FieldOperationProductRefDto> get copyWith => __$FieldOperationProductRefDtoCopyWithImpl<_FieldOperationProductRefDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationProductRefDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationProductRefDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.unitOfMeasure, unitOfMeasure) || other.unitOfMeasure == unitOfMeasure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,unitOfMeasure);

@override
String toString() {
  return 'FieldOperationProductRefDto(id: $id, name: $name, code: $code, unitOfMeasure: $unitOfMeasure)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationProductRefDtoCopyWith<$Res> implements $FieldOperationProductRefDtoCopyWith<$Res> {
  factory _$FieldOperationProductRefDtoCopyWith(_FieldOperationProductRefDto value, $Res Function(_FieldOperationProductRefDto) _then) = __$FieldOperationProductRefDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? code, FieldOperationUnitOfMeasureDto? unitOfMeasure
});


@override $FieldOperationUnitOfMeasureDtoCopyWith<$Res>? get unitOfMeasure;

}
/// @nodoc
class __$FieldOperationProductRefDtoCopyWithImpl<$Res>
    implements _$FieldOperationProductRefDtoCopyWith<$Res> {
  __$FieldOperationProductRefDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationProductRefDto _self;
  final $Res Function(_FieldOperationProductRefDto) _then;

/// Create a copy of FieldOperationProductRefDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = freezed,Object? unitOfMeasure = freezed,}) {
  return _then(_FieldOperationProductRefDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,unitOfMeasure: freezed == unitOfMeasure ? _self.unitOfMeasure : unitOfMeasure // ignore: cast_nullable_to_non_nullable
as FieldOperationUnitOfMeasureDto?,
  ));
}

/// Create a copy of FieldOperationProductRefDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationUnitOfMeasureDtoCopyWith<$Res>? get unitOfMeasure {
    if (_self.unitOfMeasure == null) {
    return null;
  }

  return $FieldOperationUnitOfMeasureDtoCopyWith<$Res>(_self.unitOfMeasure!, (value) {
    return _then(_self.copyWith(unitOfMeasure: value));
  });
}
}


/// @nodoc
mixin _$FieldOperationUnitOfMeasureDto {

 String get id; String? get name; String? get symbol;
/// Create a copy of FieldOperationUnitOfMeasureDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationUnitOfMeasureDtoCopyWith<FieldOperationUnitOfMeasureDto> get copyWith => _$FieldOperationUnitOfMeasureDtoCopyWithImpl<FieldOperationUnitOfMeasureDto>(this as FieldOperationUnitOfMeasureDto, _$identity);

  /// Serializes this FieldOperationUnitOfMeasureDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationUnitOfMeasureDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,symbol);

@override
String toString() {
  return 'FieldOperationUnitOfMeasureDto(id: $id, name: $name, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class $FieldOperationUnitOfMeasureDtoCopyWith<$Res>  {
  factory $FieldOperationUnitOfMeasureDtoCopyWith(FieldOperationUnitOfMeasureDto value, $Res Function(FieldOperationUnitOfMeasureDto) _then) = _$FieldOperationUnitOfMeasureDtoCopyWithImpl;
@useResult
$Res call({
 String id, String? name, String? symbol
});




}
/// @nodoc
class _$FieldOperationUnitOfMeasureDtoCopyWithImpl<$Res>
    implements $FieldOperationUnitOfMeasureDtoCopyWith<$Res> {
  _$FieldOperationUnitOfMeasureDtoCopyWithImpl(this._self, this._then);

  final FieldOperationUnitOfMeasureDto _self;
  final $Res Function(FieldOperationUnitOfMeasureDto) _then;

/// Create a copy of FieldOperationUnitOfMeasureDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? symbol = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldOperationUnitOfMeasureDto].
extension FieldOperationUnitOfMeasureDtoPatterns on FieldOperationUnitOfMeasureDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationUnitOfMeasureDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationUnitOfMeasureDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationUnitOfMeasureDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationUnitOfMeasureDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationUnitOfMeasureDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationUnitOfMeasureDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  String? symbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationUnitOfMeasureDto() when $default != null:
return $default(_that.id,_that.name,_that.symbol);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  String? symbol)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationUnitOfMeasureDto():
return $default(_that.id,_that.name,_that.symbol);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  String? symbol)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationUnitOfMeasureDto() when $default != null:
return $default(_that.id,_that.name,_that.symbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationUnitOfMeasureDto implements FieldOperationUnitOfMeasureDto {
  const _FieldOperationUnitOfMeasureDto({required this.id, this.name, this.symbol});
  factory _FieldOperationUnitOfMeasureDto.fromJson(Map<String, dynamic> json) => _$FieldOperationUnitOfMeasureDtoFromJson(json);

@override final  String id;
@override final  String? name;
@override final  String? symbol;

/// Create a copy of FieldOperationUnitOfMeasureDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationUnitOfMeasureDtoCopyWith<_FieldOperationUnitOfMeasureDto> get copyWith => __$FieldOperationUnitOfMeasureDtoCopyWithImpl<_FieldOperationUnitOfMeasureDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationUnitOfMeasureDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationUnitOfMeasureDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,symbol);

@override
String toString() {
  return 'FieldOperationUnitOfMeasureDto(id: $id, name: $name, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationUnitOfMeasureDtoCopyWith<$Res> implements $FieldOperationUnitOfMeasureDtoCopyWith<$Res> {
  factory _$FieldOperationUnitOfMeasureDtoCopyWith(_FieldOperationUnitOfMeasureDto value, $Res Function(_FieldOperationUnitOfMeasureDto) _then) = __$FieldOperationUnitOfMeasureDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, String? symbol
});




}
/// @nodoc
class __$FieldOperationUnitOfMeasureDtoCopyWithImpl<$Res>
    implements _$FieldOperationUnitOfMeasureDtoCopyWith<$Res> {
  __$FieldOperationUnitOfMeasureDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationUnitOfMeasureDto _self;
  final $Res Function(_FieldOperationUnitOfMeasureDto) _then;

/// Create a copy of FieldOperationUnitOfMeasureDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? symbol = freezed,}) {
  return _then(_FieldOperationUnitOfMeasureDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FieldOperationItemFieldResultDto {

 String? get id; String? get fieldOperationItemId; String get fieldId; FieldOperationFieldLookupDto? get field;@OptionalDoubleConverter() double? get allocatedQuantityConsumed;@JsonKey(name: 'allocatedTotalCostConsumed')@OptionalDoubleConverter() double? get allocatedCostConsumed;
/// Create a copy of FieldOperationItemFieldResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationItemFieldResultDtoCopyWith<FieldOperationItemFieldResultDto> get copyWith => _$FieldOperationItemFieldResultDtoCopyWithImpl<FieldOperationItemFieldResultDto>(this as FieldOperationItemFieldResultDto, _$identity);

  /// Serializes this FieldOperationItemFieldResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationItemFieldResultDto&&(identical(other.id, id) || other.id == id)&&(identical(other.fieldOperationItemId, fieldOperationItemId) || other.fieldOperationItemId == fieldOperationItemId)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.field, field) || other.field == field)&&(identical(other.allocatedQuantityConsumed, allocatedQuantityConsumed) || other.allocatedQuantityConsumed == allocatedQuantityConsumed)&&(identical(other.allocatedCostConsumed, allocatedCostConsumed) || other.allocatedCostConsumed == allocatedCostConsumed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fieldOperationItemId,fieldId,field,allocatedQuantityConsumed,allocatedCostConsumed);

@override
String toString() {
  return 'FieldOperationItemFieldResultDto(id: $id, fieldOperationItemId: $fieldOperationItemId, fieldId: $fieldId, field: $field, allocatedQuantityConsumed: $allocatedQuantityConsumed, allocatedCostConsumed: $allocatedCostConsumed)';
}


}

/// @nodoc
abstract mixin class $FieldOperationItemFieldResultDtoCopyWith<$Res>  {
  factory $FieldOperationItemFieldResultDtoCopyWith(FieldOperationItemFieldResultDto value, $Res Function(FieldOperationItemFieldResultDto) _then) = _$FieldOperationItemFieldResultDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? fieldOperationItemId, String fieldId, FieldOperationFieldLookupDto? field,@OptionalDoubleConverter() double? allocatedQuantityConsumed,@JsonKey(name: 'allocatedTotalCostConsumed')@OptionalDoubleConverter() double? allocatedCostConsumed
});


$FieldOperationFieldLookupDtoCopyWith<$Res>? get field;

}
/// @nodoc
class _$FieldOperationItemFieldResultDtoCopyWithImpl<$Res>
    implements $FieldOperationItemFieldResultDtoCopyWith<$Res> {
  _$FieldOperationItemFieldResultDtoCopyWithImpl(this._self, this._then);

  final FieldOperationItemFieldResultDto _self;
  final $Res Function(FieldOperationItemFieldResultDto) _then;

/// Create a copy of FieldOperationItemFieldResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fieldOperationItemId = freezed,Object? fieldId = null,Object? field = freezed,Object? allocatedQuantityConsumed = freezed,Object? allocatedCostConsumed = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fieldOperationItemId: freezed == fieldOperationItemId ? _self.fieldOperationItemId : fieldOperationItemId // ignore: cast_nullable_to_non_nullable
as String?,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as FieldOperationFieldLookupDto?,allocatedQuantityConsumed: freezed == allocatedQuantityConsumed ? _self.allocatedQuantityConsumed : allocatedQuantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,allocatedCostConsumed: freezed == allocatedCostConsumed ? _self.allocatedCostConsumed : allocatedCostConsumed // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of FieldOperationItemFieldResultDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationFieldLookupDtoCopyWith<$Res>? get field {
    if (_self.field == null) {
    return null;
  }

  return $FieldOperationFieldLookupDtoCopyWith<$Res>(_self.field!, (value) {
    return _then(_self.copyWith(field: value));
  });
}
}


/// Adds pattern-matching-related methods to [FieldOperationItemFieldResultDto].
extension FieldOperationItemFieldResultDtoPatterns on FieldOperationItemFieldResultDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationItemFieldResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationItemFieldResultDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationItemFieldResultDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationItemFieldResultDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationItemFieldResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationItemFieldResultDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? fieldOperationItemId,  String fieldId,  FieldOperationFieldLookupDto? field, @OptionalDoubleConverter()  double? allocatedQuantityConsumed, @JsonKey(name: 'allocatedTotalCostConsumed')@OptionalDoubleConverter()  double? allocatedCostConsumed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationItemFieldResultDto() when $default != null:
return $default(_that.id,_that.fieldOperationItemId,_that.fieldId,_that.field,_that.allocatedQuantityConsumed,_that.allocatedCostConsumed);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? fieldOperationItemId,  String fieldId,  FieldOperationFieldLookupDto? field, @OptionalDoubleConverter()  double? allocatedQuantityConsumed, @JsonKey(name: 'allocatedTotalCostConsumed')@OptionalDoubleConverter()  double? allocatedCostConsumed)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationItemFieldResultDto():
return $default(_that.id,_that.fieldOperationItemId,_that.fieldId,_that.field,_that.allocatedQuantityConsumed,_that.allocatedCostConsumed);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? fieldOperationItemId,  String fieldId,  FieldOperationFieldLookupDto? field, @OptionalDoubleConverter()  double? allocatedQuantityConsumed, @JsonKey(name: 'allocatedTotalCostConsumed')@OptionalDoubleConverter()  double? allocatedCostConsumed)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationItemFieldResultDto() when $default != null:
return $default(_that.id,_that.fieldOperationItemId,_that.fieldId,_that.field,_that.allocatedQuantityConsumed,_that.allocatedCostConsumed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationItemFieldResultDto implements FieldOperationItemFieldResultDto {
  const _FieldOperationItemFieldResultDto({this.id, this.fieldOperationItemId, required this.fieldId, this.field, @OptionalDoubleConverter() this.allocatedQuantityConsumed, @JsonKey(name: 'allocatedTotalCostConsumed')@OptionalDoubleConverter() this.allocatedCostConsumed});
  factory _FieldOperationItemFieldResultDto.fromJson(Map<String, dynamic> json) => _$FieldOperationItemFieldResultDtoFromJson(json);

@override final  String? id;
@override final  String? fieldOperationItemId;
@override final  String fieldId;
@override final  FieldOperationFieldLookupDto? field;
@override@OptionalDoubleConverter() final  double? allocatedQuantityConsumed;
@override@JsonKey(name: 'allocatedTotalCostConsumed')@OptionalDoubleConverter() final  double? allocatedCostConsumed;

/// Create a copy of FieldOperationItemFieldResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationItemFieldResultDtoCopyWith<_FieldOperationItemFieldResultDto> get copyWith => __$FieldOperationItemFieldResultDtoCopyWithImpl<_FieldOperationItemFieldResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationItemFieldResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationItemFieldResultDto&&(identical(other.id, id) || other.id == id)&&(identical(other.fieldOperationItemId, fieldOperationItemId) || other.fieldOperationItemId == fieldOperationItemId)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.field, field) || other.field == field)&&(identical(other.allocatedQuantityConsumed, allocatedQuantityConsumed) || other.allocatedQuantityConsumed == allocatedQuantityConsumed)&&(identical(other.allocatedCostConsumed, allocatedCostConsumed) || other.allocatedCostConsumed == allocatedCostConsumed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fieldOperationItemId,fieldId,field,allocatedQuantityConsumed,allocatedCostConsumed);

@override
String toString() {
  return 'FieldOperationItemFieldResultDto(id: $id, fieldOperationItemId: $fieldOperationItemId, fieldId: $fieldId, field: $field, allocatedQuantityConsumed: $allocatedQuantityConsumed, allocatedCostConsumed: $allocatedCostConsumed)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationItemFieldResultDtoCopyWith<$Res> implements $FieldOperationItemFieldResultDtoCopyWith<$Res> {
  factory _$FieldOperationItemFieldResultDtoCopyWith(_FieldOperationItemFieldResultDto value, $Res Function(_FieldOperationItemFieldResultDto) _then) = __$FieldOperationItemFieldResultDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? fieldOperationItemId, String fieldId, FieldOperationFieldLookupDto? field,@OptionalDoubleConverter() double? allocatedQuantityConsumed,@JsonKey(name: 'allocatedTotalCostConsumed')@OptionalDoubleConverter() double? allocatedCostConsumed
});


@override $FieldOperationFieldLookupDtoCopyWith<$Res>? get field;

}
/// @nodoc
class __$FieldOperationItemFieldResultDtoCopyWithImpl<$Res>
    implements _$FieldOperationItemFieldResultDtoCopyWith<$Res> {
  __$FieldOperationItemFieldResultDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationItemFieldResultDto _self;
  final $Res Function(_FieldOperationItemFieldResultDto) _then;

/// Create a copy of FieldOperationItemFieldResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fieldOperationItemId = freezed,Object? fieldId = null,Object? field = freezed,Object? allocatedQuantityConsumed = freezed,Object? allocatedCostConsumed = freezed,}) {
  return _then(_FieldOperationItemFieldResultDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fieldOperationItemId: freezed == fieldOperationItemId ? _self.fieldOperationItemId : fieldOperationItemId // ignore: cast_nullable_to_non_nullable
as String?,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as FieldOperationFieldLookupDto?,allocatedQuantityConsumed: freezed == allocatedQuantityConsumed ? _self.allocatedQuantityConsumed : allocatedQuantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,allocatedCostConsumed: freezed == allocatedCostConsumed ? _self.allocatedCostConsumed : allocatedCostConsumed // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of FieldOperationItemFieldResultDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldOperationFieldLookupDtoCopyWith<$Res>? get field {
    if (_self.field == null) {
    return null;
  }

  return $FieldOperationFieldLookupDtoCopyWith<$Res>(_self.field!, (value) {
    return _then(_self.copyWith(field: value));
  });
}
}


/// @nodoc
mixin _$CreateFieldOperationRequestDto {

 String get farmId; List<String> get fieldIds; DateTime get operationDate; FieldOperationStatus get status; String? get description; String? get responsibleUserId; DateTime? get startedAt; DateTime? get finishedAt; bool get active; List<CreateFieldOperationItemRequestDto> get items;
/// Create a copy of CreateFieldOperationRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFieldOperationRequestDtoCopyWith<CreateFieldOperationRequestDto> get copyWith => _$CreateFieldOperationRequestDtoCopyWithImpl<CreateFieldOperationRequestDto>(this as CreateFieldOperationRequestDto, _$identity);

  /// Serializes this CreateFieldOperationRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFieldOperationRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&const DeepCollectionEquality().equals(other.fieldIds, fieldIds)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,const DeepCollectionEquality().hash(fieldIds),operationDate,status,description,responsibleUserId,startedAt,finishedAt,active,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'CreateFieldOperationRequestDto(farmId: $farmId, fieldIds: $fieldIds, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, active: $active, items: $items)';
}


}

/// @nodoc
abstract mixin class $CreateFieldOperationRequestDtoCopyWith<$Res>  {
  factory $CreateFieldOperationRequestDtoCopyWith(CreateFieldOperationRequestDto value, $Res Function(CreateFieldOperationRequestDto) _then) = _$CreateFieldOperationRequestDtoCopyWithImpl;
@useResult
$Res call({
 String farmId, List<String> fieldIds, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, bool active, List<CreateFieldOperationItemRequestDto> items
});




}
/// @nodoc
class _$CreateFieldOperationRequestDtoCopyWithImpl<$Res>
    implements $CreateFieldOperationRequestDtoCopyWith<$Res> {
  _$CreateFieldOperationRequestDtoCopyWithImpl(this._self, this._then);

  final CreateFieldOperationRequestDto _self;
  final $Res Function(CreateFieldOperationRequestDto) _then;

/// Create a copy of CreateFieldOperationRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? farmId = null,Object? fieldIds = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? active = null,Object? items = null,}) {
  return _then(_self.copyWith(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,fieldIds: null == fieldIds ? _self.fieldIds : fieldIds // ignore: cast_nullable_to_non_nullable
as List<String>,operationDate: null == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CreateFieldOperationItemRequestDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateFieldOperationRequestDto].
extension CreateFieldOperationRequestDtoPatterns on CreateFieldOperationRequestDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFieldOperationRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFieldOperationRequestDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFieldOperationRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateFieldOperationRequestDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFieldOperationRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFieldOperationRequestDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  List<String> fieldIds,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  bool active,  List<CreateFieldOperationItemRequestDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFieldOperationRequestDto() when $default != null:
return $default(_that.farmId,_that.fieldIds,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.active,_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  List<String> fieldIds,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  bool active,  List<CreateFieldOperationItemRequestDto> items)  $default,) {final _that = this;
switch (_that) {
case _CreateFieldOperationRequestDto():
return $default(_that.farmId,_that.fieldIds,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.active,_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  List<String> fieldIds,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  bool active,  List<CreateFieldOperationItemRequestDto> items)?  $default,) {final _that = this;
switch (_that) {
case _CreateFieldOperationRequestDto() when $default != null:
return $default(_that.farmId,_that.fieldIds,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.active,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFieldOperationRequestDto implements CreateFieldOperationRequestDto {
  const _CreateFieldOperationRequestDto({required this.farmId, final  List<String> fieldIds = const <String>[], required this.operationDate, this.status = FieldOperationStatus.open, this.description, this.responsibleUserId, this.startedAt, this.finishedAt, this.active = true, final  List<CreateFieldOperationItemRequestDto> items = const <CreateFieldOperationItemRequestDto>[]}): _fieldIds = fieldIds,_items = items;
  factory _CreateFieldOperationRequestDto.fromJson(Map<String, dynamic> json) => _$CreateFieldOperationRequestDtoFromJson(json);

@override final  String farmId;
 final  List<String> _fieldIds;
@override@JsonKey() List<String> get fieldIds {
  if (_fieldIds is EqualUnmodifiableListView) return _fieldIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fieldIds);
}

@override final  DateTime operationDate;
@override@JsonKey() final  FieldOperationStatus status;
@override final  String? description;
@override final  String? responsibleUserId;
@override final  DateTime? startedAt;
@override final  DateTime? finishedAt;
@override@JsonKey() final  bool active;
 final  List<CreateFieldOperationItemRequestDto> _items;
@override@JsonKey() List<CreateFieldOperationItemRequestDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CreateFieldOperationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFieldOperationRequestDtoCopyWith<_CreateFieldOperationRequestDto> get copyWith => __$CreateFieldOperationRequestDtoCopyWithImpl<_CreateFieldOperationRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFieldOperationRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFieldOperationRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&const DeepCollectionEquality().equals(other._fieldIds, _fieldIds)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,const DeepCollectionEquality().hash(_fieldIds),operationDate,status,description,responsibleUserId,startedAt,finishedAt,active,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'CreateFieldOperationRequestDto(farmId: $farmId, fieldIds: $fieldIds, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, active: $active, items: $items)';
}


}

/// @nodoc
abstract mixin class _$CreateFieldOperationRequestDtoCopyWith<$Res> implements $CreateFieldOperationRequestDtoCopyWith<$Res> {
  factory _$CreateFieldOperationRequestDtoCopyWith(_CreateFieldOperationRequestDto value, $Res Function(_CreateFieldOperationRequestDto) _then) = __$CreateFieldOperationRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String farmId, List<String> fieldIds, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, bool active, List<CreateFieldOperationItemRequestDto> items
});




}
/// @nodoc
class __$CreateFieldOperationRequestDtoCopyWithImpl<$Res>
    implements _$CreateFieldOperationRequestDtoCopyWith<$Res> {
  __$CreateFieldOperationRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateFieldOperationRequestDto _self;
  final $Res Function(_CreateFieldOperationRequestDto) _then;

/// Create a copy of CreateFieldOperationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? fieldIds = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? active = null,Object? items = null,}) {
  return _then(_CreateFieldOperationRequestDto(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,fieldIds: null == fieldIds ? _self._fieldIds : fieldIds // ignore: cast_nullable_to_non_nullable
as List<String>,operationDate: null == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CreateFieldOperationItemRequestDto>,
  ));
}


}


/// @nodoc
mixin _$CreateFieldOperationItemRequestDto {

 String get productId; double get quantitySent; double? get quantityReturned; double? get quantityConsumed; double get unitCostAtOperation; String? get notes; bool get active;
/// Create a copy of CreateFieldOperationItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFieldOperationItemRequestDtoCopyWith<CreateFieldOperationItemRequestDto> get copyWith => _$CreateFieldOperationItemRequestDtoCopyWithImpl<CreateFieldOperationItemRequestDto>(this as CreateFieldOperationItemRequestDto, _$identity);

  /// Serializes this CreateFieldOperationItemRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFieldOperationItemRequestDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,notes,active);

@override
String toString() {
  return 'CreateFieldOperationItemRequestDto(productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateFieldOperationItemRequestDtoCopyWith<$Res>  {
  factory $CreateFieldOperationItemRequestDtoCopyWith(CreateFieldOperationItemRequestDto value, $Res Function(CreateFieldOperationItemRequestDto) _then) = _$CreateFieldOperationItemRequestDtoCopyWithImpl;
@useResult
$Res call({
 String productId, double quantitySent, double? quantityReturned, double? quantityConsumed, double unitCostAtOperation, String? notes, bool active
});




}
/// @nodoc
class _$CreateFieldOperationItemRequestDtoCopyWithImpl<$Res>
    implements $CreateFieldOperationItemRequestDtoCopyWith<$Res> {
  _$CreateFieldOperationItemRequestDtoCopyWithImpl(this._self, this._then);

  final CreateFieldOperationItemRequestDto _self;
  final $Res Function(CreateFieldOperationItemRequestDto) _then;

/// Create a copy of CreateFieldOperationItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? notes = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantitySent: null == quantitySent ? _self.quantitySent : quantitySent // ignore: cast_nullable_to_non_nullable
as double,quantityReturned: freezed == quantityReturned ? _self.quantityReturned : quantityReturned // ignore: cast_nullable_to_non_nullable
as double?,quantityConsumed: freezed == quantityConsumed ? _self.quantityConsumed : quantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,unitCostAtOperation: null == unitCostAtOperation ? _self.unitCostAtOperation : unitCostAtOperation // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateFieldOperationItemRequestDto].
extension CreateFieldOperationItemRequestDtoPatterns on CreateFieldOperationItemRequestDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFieldOperationItemRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFieldOperationItemRequestDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFieldOperationItemRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateFieldOperationItemRequestDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFieldOperationItemRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFieldOperationItemRequestDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  double quantitySent,  double? quantityReturned,  double? quantityConsumed,  double unitCostAtOperation,  String? notes,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFieldOperationItemRequestDto() when $default != null:
return $default(_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.notes,_that.active);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  double quantitySent,  double? quantityReturned,  double? quantityConsumed,  double unitCostAtOperation,  String? notes,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateFieldOperationItemRequestDto():
return $default(_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.notes,_that.active);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  double quantitySent,  double? quantityReturned,  double? quantityConsumed,  double unitCostAtOperation,  String? notes,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateFieldOperationItemRequestDto() when $default != null:
return $default(_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.notes,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFieldOperationItemRequestDto implements CreateFieldOperationItemRequestDto {
  const _CreateFieldOperationItemRequestDto({required this.productId, required this.quantitySent, this.quantityReturned, this.quantityConsumed, required this.unitCostAtOperation, this.notes, this.active = true});
  factory _CreateFieldOperationItemRequestDto.fromJson(Map<String, dynamic> json) => _$CreateFieldOperationItemRequestDtoFromJson(json);

@override final  String productId;
@override final  double quantitySent;
@override final  double? quantityReturned;
@override final  double? quantityConsumed;
@override final  double unitCostAtOperation;
@override final  String? notes;
@override@JsonKey() final  bool active;

/// Create a copy of CreateFieldOperationItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFieldOperationItemRequestDtoCopyWith<_CreateFieldOperationItemRequestDto> get copyWith => __$CreateFieldOperationItemRequestDtoCopyWithImpl<_CreateFieldOperationItemRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFieldOperationItemRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFieldOperationItemRequestDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,notes,active);

@override
String toString() {
  return 'CreateFieldOperationItemRequestDto(productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateFieldOperationItemRequestDtoCopyWith<$Res> implements $CreateFieldOperationItemRequestDtoCopyWith<$Res> {
  factory _$CreateFieldOperationItemRequestDtoCopyWith(_CreateFieldOperationItemRequestDto value, $Res Function(_CreateFieldOperationItemRequestDto) _then) = __$CreateFieldOperationItemRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String productId, double quantitySent, double? quantityReturned, double? quantityConsumed, double unitCostAtOperation, String? notes, bool active
});




}
/// @nodoc
class __$CreateFieldOperationItemRequestDtoCopyWithImpl<$Res>
    implements _$CreateFieldOperationItemRequestDtoCopyWith<$Res> {
  __$CreateFieldOperationItemRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateFieldOperationItemRequestDto _self;
  final $Res Function(_CreateFieldOperationItemRequestDto) _then;

/// Create a copy of CreateFieldOperationItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? notes = freezed,Object? active = null,}) {
  return _then(_CreateFieldOperationItemRequestDto(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantitySent: null == quantitySent ? _self.quantitySent : quantitySent // ignore: cast_nullable_to_non_nullable
as double,quantityReturned: freezed == quantityReturned ? _self.quantityReturned : quantityReturned // ignore: cast_nullable_to_non_nullable
as double?,quantityConsumed: freezed == quantityConsumed ? _self.quantityConsumed : quantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,unitCostAtOperation: null == unitCostAtOperation ? _self.unitCostAtOperation : unitCostAtOperation // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateFieldOperationRequestDto {

 FieldOperationStatus? get status; DateTime? get operationDate; String? get description; String? get responsibleUserId; DateTime? get startedAt; DateTime? get finishedAt; List<UpdateFieldOperationItemRequestDto> get items;
/// Create a copy of UpdateFieldOperationRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFieldOperationRequestDtoCopyWith<UpdateFieldOperationRequestDto> get copyWith => _$UpdateFieldOperationRequestDtoCopyWithImpl<UpdateFieldOperationRequestDto>(this as UpdateFieldOperationRequestDto, _$identity);

  /// Serializes this UpdateFieldOperationRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFieldOperationRequestDto&&(identical(other.status, status) || other.status == status)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,operationDate,description,responsibleUserId,startedAt,finishedAt,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'UpdateFieldOperationRequestDto(status: $status, operationDate: $operationDate, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class $UpdateFieldOperationRequestDtoCopyWith<$Res>  {
  factory $UpdateFieldOperationRequestDtoCopyWith(UpdateFieldOperationRequestDto value, $Res Function(UpdateFieldOperationRequestDto) _then) = _$UpdateFieldOperationRequestDtoCopyWithImpl;
@useResult
$Res call({
 FieldOperationStatus? status, DateTime? operationDate, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, List<UpdateFieldOperationItemRequestDto> items
});




}
/// @nodoc
class _$UpdateFieldOperationRequestDtoCopyWithImpl<$Res>
    implements $UpdateFieldOperationRequestDtoCopyWith<$Res> {
  _$UpdateFieldOperationRequestDtoCopyWithImpl(this._self, this._then);

  final UpdateFieldOperationRequestDto _self;
  final $Res Function(UpdateFieldOperationRequestDto) _then;

/// Create a copy of UpdateFieldOperationRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? operationDate = freezed,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus?,operationDate: freezed == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<UpdateFieldOperationItemRequestDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFieldOperationRequestDto].
extension UpdateFieldOperationRequestDtoPatterns on UpdateFieldOperationRequestDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFieldOperationRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFieldOperationRequestDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFieldOperationRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldOperationRequestDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFieldOperationRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldOperationRequestDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FieldOperationStatus? status,  DateTime? operationDate,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  List<UpdateFieldOperationItemRequestDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFieldOperationRequestDto() when $default != null:
return $default(_that.status,_that.operationDate,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FieldOperationStatus? status,  DateTime? operationDate,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  List<UpdateFieldOperationItemRequestDto> items)  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldOperationRequestDto():
return $default(_that.status,_that.operationDate,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FieldOperationStatus? status,  DateTime? operationDate,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  List<UpdateFieldOperationItemRequestDto> items)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldOperationRequestDto() when $default != null:
return $default(_that.status,_that.operationDate,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFieldOperationRequestDto implements UpdateFieldOperationRequestDto {
  const _UpdateFieldOperationRequestDto({this.status, this.operationDate, this.description, this.responsibleUserId, this.startedAt, this.finishedAt, final  List<UpdateFieldOperationItemRequestDto> items = const <UpdateFieldOperationItemRequestDto>[]}): _items = items;
  factory _UpdateFieldOperationRequestDto.fromJson(Map<String, dynamic> json) => _$UpdateFieldOperationRequestDtoFromJson(json);

@override final  FieldOperationStatus? status;
@override final  DateTime? operationDate;
@override final  String? description;
@override final  String? responsibleUserId;
@override final  DateTime? startedAt;
@override final  DateTime? finishedAt;
 final  List<UpdateFieldOperationItemRequestDto> _items;
@override@JsonKey() List<UpdateFieldOperationItemRequestDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of UpdateFieldOperationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFieldOperationRequestDtoCopyWith<_UpdateFieldOperationRequestDto> get copyWith => __$UpdateFieldOperationRequestDtoCopyWithImpl<_UpdateFieldOperationRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFieldOperationRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFieldOperationRequestDto&&(identical(other.status, status) || other.status == status)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,operationDate,description,responsibleUserId,startedAt,finishedAt,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'UpdateFieldOperationRequestDto(status: $status, operationDate: $operationDate, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class _$UpdateFieldOperationRequestDtoCopyWith<$Res> implements $UpdateFieldOperationRequestDtoCopyWith<$Res> {
  factory _$UpdateFieldOperationRequestDtoCopyWith(_UpdateFieldOperationRequestDto value, $Res Function(_UpdateFieldOperationRequestDto) _then) = __$UpdateFieldOperationRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 FieldOperationStatus? status, DateTime? operationDate, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, List<UpdateFieldOperationItemRequestDto> items
});




}
/// @nodoc
class __$UpdateFieldOperationRequestDtoCopyWithImpl<$Res>
    implements _$UpdateFieldOperationRequestDtoCopyWith<$Res> {
  __$UpdateFieldOperationRequestDtoCopyWithImpl(this._self, this._then);

  final _UpdateFieldOperationRequestDto _self;
  final $Res Function(_UpdateFieldOperationRequestDto) _then;

/// Create a copy of UpdateFieldOperationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? operationDate = freezed,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? items = null,}) {
  return _then(_UpdateFieldOperationRequestDto(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus?,operationDate: freezed == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<UpdateFieldOperationItemRequestDto>,
  ));
}


}


/// @nodoc
mixin _$UpdateFieldOperationItemRequestDto {

 String? get id; String get productId; double get quantitySent; double? get quantityReturned; double? get quantityConsumed; double get unitCostAtOperation; double? get totalCostConsumed; String? get notes; bool get active;
/// Create a copy of UpdateFieldOperationItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFieldOperationItemRequestDtoCopyWith<UpdateFieldOperationItemRequestDto> get copyWith => _$UpdateFieldOperationItemRequestDtoCopyWithImpl<UpdateFieldOperationItemRequestDto>(this as UpdateFieldOperationItemRequestDto, _$identity);

  /// Serializes this UpdateFieldOperationItemRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFieldOperationItemRequestDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.totalCostConsumed, totalCostConsumed) || other.totalCostConsumed == totalCostConsumed)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,totalCostConsumed,notes,active);

@override
String toString() {
  return 'UpdateFieldOperationItemRequestDto(id: $id, productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, totalCostConsumed: $totalCostConsumed, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateFieldOperationItemRequestDtoCopyWith<$Res>  {
  factory $UpdateFieldOperationItemRequestDtoCopyWith(UpdateFieldOperationItemRequestDto value, $Res Function(UpdateFieldOperationItemRequestDto) _then) = _$UpdateFieldOperationItemRequestDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String productId, double quantitySent, double? quantityReturned, double? quantityConsumed, double unitCostAtOperation, double? totalCostConsumed, String? notes, bool active
});




}
/// @nodoc
class _$UpdateFieldOperationItemRequestDtoCopyWithImpl<$Res>
    implements $UpdateFieldOperationItemRequestDtoCopyWith<$Res> {
  _$UpdateFieldOperationItemRequestDtoCopyWithImpl(this._self, this._then);

  final UpdateFieldOperationItemRequestDto _self;
  final $Res Function(UpdateFieldOperationItemRequestDto) _then;

/// Create a copy of UpdateFieldOperationItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? totalCostConsumed = freezed,Object? notes = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantitySent: null == quantitySent ? _self.quantitySent : quantitySent // ignore: cast_nullable_to_non_nullable
as double,quantityReturned: freezed == quantityReturned ? _self.quantityReturned : quantityReturned // ignore: cast_nullable_to_non_nullable
as double?,quantityConsumed: freezed == quantityConsumed ? _self.quantityConsumed : quantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,unitCostAtOperation: null == unitCostAtOperation ? _self.unitCostAtOperation : unitCostAtOperation // ignore: cast_nullable_to_non_nullable
as double,totalCostConsumed: freezed == totalCostConsumed ? _self.totalCostConsumed : totalCostConsumed // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFieldOperationItemRequestDto].
extension UpdateFieldOperationItemRequestDtoPatterns on UpdateFieldOperationItemRequestDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFieldOperationItemRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFieldOperationItemRequestDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFieldOperationItemRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldOperationItemRequestDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFieldOperationItemRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldOperationItemRequestDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String productId,  double quantitySent,  double? quantityReturned,  double? quantityConsumed,  double unitCostAtOperation,  double? totalCostConsumed,  String? notes,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFieldOperationItemRequestDto() when $default != null:
return $default(_that.id,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes,_that.active);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String productId,  double quantitySent,  double? quantityReturned,  double? quantityConsumed,  double unitCostAtOperation,  double? totalCostConsumed,  String? notes,  bool active)  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldOperationItemRequestDto():
return $default(_that.id,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes,_that.active);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String productId,  double quantitySent,  double? quantityReturned,  double? quantityConsumed,  double unitCostAtOperation,  double? totalCostConsumed,  String? notes,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldOperationItemRequestDto() when $default != null:
return $default(_that.id,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFieldOperationItemRequestDto implements UpdateFieldOperationItemRequestDto {
  const _UpdateFieldOperationItemRequestDto({this.id, required this.productId, required this.quantitySent, this.quantityReturned, this.quantityConsumed, required this.unitCostAtOperation, this.totalCostConsumed, this.notes, this.active = true});
  factory _UpdateFieldOperationItemRequestDto.fromJson(Map<String, dynamic> json) => _$UpdateFieldOperationItemRequestDtoFromJson(json);

@override final  String? id;
@override final  String productId;
@override final  double quantitySent;
@override final  double? quantityReturned;
@override final  double? quantityConsumed;
@override final  double unitCostAtOperation;
@override final  double? totalCostConsumed;
@override final  String? notes;
@override@JsonKey() final  bool active;

/// Create a copy of UpdateFieldOperationItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFieldOperationItemRequestDtoCopyWith<_UpdateFieldOperationItemRequestDto> get copyWith => __$UpdateFieldOperationItemRequestDtoCopyWithImpl<_UpdateFieldOperationItemRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFieldOperationItemRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFieldOperationItemRequestDto&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.totalCostConsumed, totalCostConsumed) || other.totalCostConsumed == totalCostConsumed)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,totalCostConsumed,notes,active);

@override
String toString() {
  return 'UpdateFieldOperationItemRequestDto(id: $id, productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, totalCostConsumed: $totalCostConsumed, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateFieldOperationItemRequestDtoCopyWith<$Res> implements $UpdateFieldOperationItemRequestDtoCopyWith<$Res> {
  factory _$UpdateFieldOperationItemRequestDtoCopyWith(_UpdateFieldOperationItemRequestDto value, $Res Function(_UpdateFieldOperationItemRequestDto) _then) = __$UpdateFieldOperationItemRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String productId, double quantitySent, double? quantityReturned, double? quantityConsumed, double unitCostAtOperation, double? totalCostConsumed, String? notes, bool active
});




}
/// @nodoc
class __$UpdateFieldOperationItemRequestDtoCopyWithImpl<$Res>
    implements _$UpdateFieldOperationItemRequestDtoCopyWith<$Res> {
  __$UpdateFieldOperationItemRequestDtoCopyWithImpl(this._self, this._then);

  final _UpdateFieldOperationItemRequestDto _self;
  final $Res Function(_UpdateFieldOperationItemRequestDto) _then;

/// Create a copy of UpdateFieldOperationItemRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? totalCostConsumed = freezed,Object? notes = freezed,Object? active = null,}) {
  return _then(_UpdateFieldOperationItemRequestDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantitySent: null == quantitySent ? _self.quantitySent : quantitySent // ignore: cast_nullable_to_non_nullable
as double,quantityReturned: freezed == quantityReturned ? _self.quantityReturned : quantityReturned // ignore: cast_nullable_to_non_nullable
as double?,quantityConsumed: freezed == quantityConsumed ? _self.quantityConsumed : quantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,unitCostAtOperation: null == unitCostAtOperation ? _self.unitCostAtOperation : unitCostAtOperation // ignore: cast_nullable_to_non_nullable
as double,totalCostConsumed: freezed == totalCostConsumed ? _self.totalCostConsumed : totalCostConsumed // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
