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

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get farmId; String get fieldId; DateTime get operationDate; FieldOperationStatus get status; String? get description; String? get responsibleUserId; DateTime? get startedAt; DateTime? get finishedAt; List<FieldOperationItemDto> get items;
/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationDtoCopyWith<FieldOperationDto> get copyWith => _$FieldOperationDtoCopyWithImpl<FieldOperationDto>(this as FieldOperationDto, _$identity);

  /// Serializes this FieldOperationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,fieldId,operationDate,status,description,responsibleUserId,startedAt,finishedAt,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'FieldOperationDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, fieldId: $fieldId, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class $FieldOperationDtoCopyWith<$Res>  {
  factory $FieldOperationDtoCopyWith(FieldOperationDto value, $Res Function(FieldOperationDto) _then) = _$FieldOperationDtoCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String fieldId, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, List<FieldOperationItemDto> items
});




}
/// @nodoc
class _$FieldOperationDtoCopyWithImpl<$Res>
    implements $FieldOperationDtoCopyWith<$Res> {
  _$FieldOperationDtoCopyWithImpl(this._self, this._then);

  final FieldOperationDto _self;
  final $Res Function(FieldOperationDto) _then;

/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? fieldId = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,operationDate: null == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FieldOperationItemDto>,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String fieldId,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  List<FieldOperationItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.fieldId,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String fieldId,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  List<FieldOperationItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.fieldId,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String fieldId,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  List<FieldOperationItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.fieldId,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationDto implements FieldOperationDto {
  const _FieldOperationDto({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.farmId, required this.fieldId, required this.operationDate, required this.status, this.description, this.responsibleUserId, this.startedAt, this.finishedAt, final  List<FieldOperationItemDto> items = const <FieldOperationItemDto>[]}): _items = items;
  factory _FieldOperationDto.fromJson(Map<String, dynamic> json) => _$FieldOperationDtoFromJson(json);

@override final  String id;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String farmId;
@override final  String fieldId;
@override final  DateTime operationDate;
@override final  FieldOperationStatus status;
@override final  String? description;
@override final  String? responsibleUserId;
@override final  DateTime? startedAt;
@override final  DateTime? finishedAt;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,fieldId,operationDate,status,description,responsibleUserId,startedAt,finishedAt,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FieldOperationDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, fieldId: $fieldId, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationDtoCopyWith<$Res> implements $FieldOperationDtoCopyWith<$Res> {
  factory _$FieldOperationDtoCopyWith(_FieldOperationDto value, $Res Function(_FieldOperationDto) _then) = __$FieldOperationDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String fieldId, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, List<FieldOperationItemDto> items
});




}
/// @nodoc
class __$FieldOperationDtoCopyWithImpl<$Res>
    implements _$FieldOperationDtoCopyWith<$Res> {
  __$FieldOperationDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationDto _self;
  final $Res Function(_FieldOperationDto) _then;

/// Create a copy of FieldOperationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? fieldId = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? items = null,}) {
  return _then(_FieldOperationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,operationDate: null == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FieldOperationItemDto>,
  ));
}


}


/// @nodoc
mixin _$FieldOperationItemDto {

 String? get id; bool? get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String? get fieldOperationId; String get productId;@DoubleConverter() double get quantitySent;@OptionalDoubleConverter() double? get quantityReturned;@OptionalDoubleConverter() double? get quantityConsumed;@DoubleConverter() double get unitCostAtOperation;@OptionalDoubleConverter() double? get totalCostConsumed; String? get notes;
/// Create a copy of FieldOperationItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationItemDtoCopyWith<FieldOperationItemDto> get copyWith => _$FieldOperationItemDtoCopyWithImpl<FieldOperationItemDto>(this as FieldOperationItemDto, _$identity);

  /// Serializes this FieldOperationItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.fieldOperationId, fieldOperationId) || other.fieldOperationId == fieldOperationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.totalCostConsumed, totalCostConsumed) || other.totalCostConsumed == totalCostConsumed)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,fieldOperationId,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,totalCostConsumed,notes);

@override
String toString() {
  return 'FieldOperationItemDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, fieldOperationId: $fieldOperationId, productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, totalCostConsumed: $totalCostConsumed, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $FieldOperationItemDtoCopyWith<$Res>  {
  factory $FieldOperationItemDtoCopyWith(FieldOperationItemDto value, $Res Function(FieldOperationItemDto) _then) = _$FieldOperationItemDtoCopyWithImpl;
@useResult
$Res call({
 String? id, bool? active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String? fieldOperationId, String productId,@DoubleConverter() double quantitySent,@OptionalDoubleConverter() double? quantityReturned,@OptionalDoubleConverter() double? quantityConsumed,@DoubleConverter() double unitCostAtOperation,@OptionalDoubleConverter() double? totalCostConsumed, String? notes
});




}
/// @nodoc
class _$FieldOperationItemDtoCopyWithImpl<$Res>
    implements $FieldOperationItemDtoCopyWith<$Res> {
  _$FieldOperationItemDtoCopyWithImpl(this._self, this._then);

  final FieldOperationItemDto _self;
  final $Res Function(FieldOperationItemDto) _then;

/// Create a copy of FieldOperationItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? active = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? fieldOperationId = freezed,Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? totalCostConsumed = freezed,Object? notes = freezed,}) {
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
as String?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String? fieldOperationId,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationItemDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.fieldOperationId,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String? fieldOperationId,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationItemDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.fieldOperationId,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String? fieldOperationId,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationItemDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.fieldOperationId,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationItemDto implements FieldOperationItemDto {
  const _FieldOperationItemDto({this.id, this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, this.fieldOperationId, required this.productId, @DoubleConverter() required this.quantitySent, @OptionalDoubleConverter() this.quantityReturned, @OptionalDoubleConverter() this.quantityConsumed, @DoubleConverter() required this.unitCostAtOperation, @OptionalDoubleConverter() this.totalCostConsumed, this.notes});
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.fieldOperationId, fieldOperationId) || other.fieldOperationId == fieldOperationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.totalCostConsumed, totalCostConsumed) || other.totalCostConsumed == totalCostConsumed)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,fieldOperationId,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,totalCostConsumed,notes);

@override
String toString() {
  return 'FieldOperationItemDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, fieldOperationId: $fieldOperationId, productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, totalCostConsumed: $totalCostConsumed, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationItemDtoCopyWith<$Res> implements $FieldOperationItemDtoCopyWith<$Res> {
  factory _$FieldOperationItemDtoCopyWith(_FieldOperationItemDto value, $Res Function(_FieldOperationItemDto) _then) = __$FieldOperationItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, bool? active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String? fieldOperationId, String productId,@DoubleConverter() double quantitySent,@OptionalDoubleConverter() double? quantityReturned,@OptionalDoubleConverter() double? quantityConsumed,@DoubleConverter() double unitCostAtOperation,@OptionalDoubleConverter() double? totalCostConsumed, String? notes
});




}
/// @nodoc
class __$FieldOperationItemDtoCopyWithImpl<$Res>
    implements _$FieldOperationItemDtoCopyWith<$Res> {
  __$FieldOperationItemDtoCopyWithImpl(this._self, this._then);

  final _FieldOperationItemDto _self;
  final $Res Function(_FieldOperationItemDto) _then;

/// Create a copy of FieldOperationItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? active = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? fieldOperationId = freezed,Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? totalCostConsumed = freezed,Object? notes = freezed,}) {
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
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateFieldOperationRequestDto {

 String get farmId; String get fieldId; DateTime get operationDate; FieldOperationStatus get status; String? get description; String? get responsibleUserId; DateTime? get startedAt; DateTime? get finishedAt; bool get active; List<CreateFieldOperationItemRequestDto> get items;
/// Create a copy of CreateFieldOperationRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFieldOperationRequestDtoCopyWith<CreateFieldOperationRequestDto> get copyWith => _$CreateFieldOperationRequestDtoCopyWithImpl<CreateFieldOperationRequestDto>(this as CreateFieldOperationRequestDto, _$identity);

  /// Serializes this CreateFieldOperationRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFieldOperationRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,fieldId,operationDate,status,description,responsibleUserId,startedAt,finishedAt,active,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'CreateFieldOperationRequestDto(farmId: $farmId, fieldId: $fieldId, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, active: $active, items: $items)';
}


}

/// @nodoc
abstract mixin class $CreateFieldOperationRequestDtoCopyWith<$Res>  {
  factory $CreateFieldOperationRequestDtoCopyWith(CreateFieldOperationRequestDto value, $Res Function(CreateFieldOperationRequestDto) _then) = _$CreateFieldOperationRequestDtoCopyWithImpl;
@useResult
$Res call({
 String farmId, String fieldId, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, bool active, List<CreateFieldOperationItemRequestDto> items
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
@pragma('vm:prefer-inline') @override $Res call({Object? farmId = null,Object? fieldId = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? active = null,Object? items = null,}) {
  return _then(_self.copyWith(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,operationDate: null == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  String fieldId,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  bool active,  List<CreateFieldOperationItemRequestDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFieldOperationRequestDto() when $default != null:
return $default(_that.farmId,_that.fieldId,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.active,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  String fieldId,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  bool active,  List<CreateFieldOperationItemRequestDto> items)  $default,) {final _that = this;
switch (_that) {
case _CreateFieldOperationRequestDto():
return $default(_that.farmId,_that.fieldId,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.active,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  String fieldId,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  bool active,  List<CreateFieldOperationItemRequestDto> items)?  $default,) {final _that = this;
switch (_that) {
case _CreateFieldOperationRequestDto() when $default != null:
return $default(_that.farmId,_that.fieldId,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.active,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFieldOperationRequestDto implements CreateFieldOperationRequestDto {
  const _CreateFieldOperationRequestDto({required this.farmId, required this.fieldId, required this.operationDate, this.status = FieldOperationStatus.open, this.description, this.responsibleUserId, this.startedAt, this.finishedAt, this.active = true, final  List<CreateFieldOperationItemRequestDto> items = const <CreateFieldOperationItemRequestDto>[]}): _items = items;
  factory _CreateFieldOperationRequestDto.fromJson(Map<String, dynamic> json) => _$CreateFieldOperationRequestDtoFromJson(json);

@override final  String farmId;
@override final  String fieldId;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFieldOperationRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,fieldId,operationDate,status,description,responsibleUserId,startedAt,finishedAt,active,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'CreateFieldOperationRequestDto(farmId: $farmId, fieldId: $fieldId, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, active: $active, items: $items)';
}


}

/// @nodoc
abstract mixin class _$CreateFieldOperationRequestDtoCopyWith<$Res> implements $CreateFieldOperationRequestDtoCopyWith<$Res> {
  factory _$CreateFieldOperationRequestDtoCopyWith(_CreateFieldOperationRequestDto value, $Res Function(_CreateFieldOperationRequestDto) _then) = __$CreateFieldOperationRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String fieldId, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, bool active, List<CreateFieldOperationItemRequestDto> items
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
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? fieldId = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? active = null,Object? items = null,}) {
  return _then(_CreateFieldOperationRequestDto(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,operationDate: null == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
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
