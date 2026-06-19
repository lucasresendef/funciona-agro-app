// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_operation_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FieldOperation {

 AuditMetadata get metadata; int? get sequenceNumber; String get farmId; List<String> get fieldIds; List<FieldOperationFieldRef> get fields; DateTime get operationDate; FieldOperationStatus get status; String? get description; String? get responsibleUserId; DateTime? get startedAt; DateTime? get finishedAt; List<FieldOperationItem> get items;
/// Create a copy of FieldOperation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationCopyWith<FieldOperation> get copyWith => _$FieldOperationCopyWithImpl<FieldOperation>(this as FieldOperation, _$identity);

  /// Serializes this FieldOperation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperation&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.sequenceNumber, sequenceNumber) || other.sequenceNumber == sequenceNumber)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&const DeepCollectionEquality().equals(other.fieldIds, fieldIds)&&const DeepCollectionEquality().equals(other.fields, fields)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,sequenceNumber,farmId,const DeepCollectionEquality().hash(fieldIds),const DeepCollectionEquality().hash(fields),operationDate,status,description,responsibleUserId,startedAt,finishedAt,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'FieldOperation(metadata: $metadata, sequenceNumber: $sequenceNumber, farmId: $farmId, fieldIds: $fieldIds, fields: $fields, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class $FieldOperationCopyWith<$Res>  {
  factory $FieldOperationCopyWith(FieldOperation value, $Res Function(FieldOperation) _then) = _$FieldOperationCopyWithImpl;
@useResult
$Res call({
 AuditMetadata metadata, int? sequenceNumber, String farmId, List<String> fieldIds, List<FieldOperationFieldRef> fields, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, List<FieldOperationItem> items
});


$AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$FieldOperationCopyWithImpl<$Res>
    implements $FieldOperationCopyWith<$Res> {
  _$FieldOperationCopyWithImpl(this._self, this._then);

  final FieldOperation _self;
  final $Res Function(FieldOperation) _then;

/// Create a copy of FieldOperation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? sequenceNumber = freezed,Object? farmId = null,Object? fieldIds = null,Object? fields = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,sequenceNumber: freezed == sequenceNumber ? _self.sequenceNumber : sequenceNumber // ignore: cast_nullable_to_non_nullable
as int?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,fieldIds: null == fieldIds ? _self.fieldIds : fieldIds // ignore: cast_nullable_to_non_nullable
as List<String>,fields: null == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<FieldOperationFieldRef>,operationDate: null == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FieldOperationItem>,
  ));
}
/// Create a copy of FieldOperation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [FieldOperation].
extension FieldOperationPatterns on FieldOperation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperation value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperation value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata metadata,  int? sequenceNumber,  String farmId,  List<String> fieldIds,  List<FieldOperationFieldRef> fields,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  List<FieldOperationItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperation() when $default != null:
return $default(_that.metadata,_that.sequenceNumber,_that.farmId,_that.fieldIds,_that.fields,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata metadata,  int? sequenceNumber,  String farmId,  List<String> fieldIds,  List<FieldOperationFieldRef> fields,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  List<FieldOperationItem> items)  $default,) {final _that = this;
switch (_that) {
case _FieldOperation():
return $default(_that.metadata,_that.sequenceNumber,_that.farmId,_that.fieldIds,_that.fields,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata metadata,  int? sequenceNumber,  String farmId,  List<String> fieldIds,  List<FieldOperationFieldRef> fields,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  List<FieldOperationItem> items)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperation() when $default != null:
return $default(_that.metadata,_that.sequenceNumber,_that.farmId,_that.fieldIds,_that.fields,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperation implements FieldOperation {
  const _FieldOperation({required this.metadata, this.sequenceNumber, required this.farmId, final  List<String> fieldIds = const <String>[], final  List<FieldOperationFieldRef> fields = const <FieldOperationFieldRef>[], required this.operationDate, required this.status, this.description, this.responsibleUserId, this.startedAt, this.finishedAt, final  List<FieldOperationItem> items = const <FieldOperationItem>[]}): _fieldIds = fieldIds,_fields = fields,_items = items;
  factory _FieldOperation.fromJson(Map<String, dynamic> json) => _$FieldOperationFromJson(json);

@override final  AuditMetadata metadata;
@override final  int? sequenceNumber;
@override final  String farmId;
 final  List<String> _fieldIds;
@override@JsonKey() List<String> get fieldIds {
  if (_fieldIds is EqualUnmodifiableListView) return _fieldIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fieldIds);
}

 final  List<FieldOperationFieldRef> _fields;
@override@JsonKey() List<FieldOperationFieldRef> get fields {
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
 final  List<FieldOperationItem> _items;
@override@JsonKey() List<FieldOperationItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FieldOperation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationCopyWith<_FieldOperation> get copyWith => __$FieldOperationCopyWithImpl<_FieldOperation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperation&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.sequenceNumber, sequenceNumber) || other.sequenceNumber == sequenceNumber)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&const DeepCollectionEquality().equals(other._fieldIds, _fieldIds)&&const DeepCollectionEquality().equals(other._fields, _fields)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,sequenceNumber,farmId,const DeepCollectionEquality().hash(_fieldIds),const DeepCollectionEquality().hash(_fields),operationDate,status,description,responsibleUserId,startedAt,finishedAt,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FieldOperation(metadata: $metadata, sequenceNumber: $sequenceNumber, farmId: $farmId, fieldIds: $fieldIds, fields: $fields, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationCopyWith<$Res> implements $FieldOperationCopyWith<$Res> {
  factory _$FieldOperationCopyWith(_FieldOperation value, $Res Function(_FieldOperation) _then) = __$FieldOperationCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata metadata, int? sequenceNumber, String farmId, List<String> fieldIds, List<FieldOperationFieldRef> fields, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, List<FieldOperationItem> items
});


@override $AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$FieldOperationCopyWithImpl<$Res>
    implements _$FieldOperationCopyWith<$Res> {
  __$FieldOperationCopyWithImpl(this._self, this._then);

  final _FieldOperation _self;
  final $Res Function(_FieldOperation) _then;

/// Create a copy of FieldOperation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? sequenceNumber = freezed,Object? farmId = null,Object? fieldIds = null,Object? fields = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? items = null,}) {
  return _then(_FieldOperation(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,sequenceNumber: freezed == sequenceNumber ? _self.sequenceNumber : sequenceNumber // ignore: cast_nullable_to_non_nullable
as int?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,fieldIds: null == fieldIds ? _self._fieldIds : fieldIds // ignore: cast_nullable_to_non_nullable
as List<String>,fields: null == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<FieldOperationFieldRef>,operationDate: null == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FieldOperationItem>,
  ));
}

/// Create a copy of FieldOperation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$FieldOperationFieldRef {

 String get fieldId; String? get name;@OptionalDoubleConverter() double? get areaHectares;
/// Create a copy of FieldOperationFieldRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationFieldRefCopyWith<FieldOperationFieldRef> get copyWith => _$FieldOperationFieldRefCopyWithImpl<FieldOperationFieldRef>(this as FieldOperationFieldRef, _$identity);

  /// Serializes this FieldOperationFieldRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationFieldRef&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldId,name,areaHectares);

@override
String toString() {
  return 'FieldOperationFieldRef(fieldId: $fieldId, name: $name, areaHectares: $areaHectares)';
}


}

/// @nodoc
abstract mixin class $FieldOperationFieldRefCopyWith<$Res>  {
  factory $FieldOperationFieldRefCopyWith(FieldOperationFieldRef value, $Res Function(FieldOperationFieldRef) _then) = _$FieldOperationFieldRefCopyWithImpl;
@useResult
$Res call({
 String fieldId, String? name,@OptionalDoubleConverter() double? areaHectares
});




}
/// @nodoc
class _$FieldOperationFieldRefCopyWithImpl<$Res>
    implements $FieldOperationFieldRefCopyWith<$Res> {
  _$FieldOperationFieldRefCopyWithImpl(this._self, this._then);

  final FieldOperationFieldRef _self;
  final $Res Function(FieldOperationFieldRef) _then;

/// Create a copy of FieldOperationFieldRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fieldId = null,Object? name = freezed,Object? areaHectares = freezed,}) {
  return _then(_self.copyWith(
fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,areaHectares: freezed == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldOperationFieldRef].
extension FieldOperationFieldRefPatterns on FieldOperationFieldRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationFieldRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationFieldRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationFieldRef value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationFieldRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationFieldRef value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationFieldRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fieldId,  String? name, @OptionalDoubleConverter()  double? areaHectares)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationFieldRef() when $default != null:
return $default(_that.fieldId,_that.name,_that.areaHectares);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fieldId,  String? name, @OptionalDoubleConverter()  double? areaHectares)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationFieldRef():
return $default(_that.fieldId,_that.name,_that.areaHectares);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fieldId,  String? name, @OptionalDoubleConverter()  double? areaHectares)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationFieldRef() when $default != null:
return $default(_that.fieldId,_that.name,_that.areaHectares);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationFieldRef implements FieldOperationFieldRef {
  const _FieldOperationFieldRef({required this.fieldId, this.name, @OptionalDoubleConverter() this.areaHectares});
  factory _FieldOperationFieldRef.fromJson(Map<String, dynamic> json) => _$FieldOperationFieldRefFromJson(json);

@override final  String fieldId;
@override final  String? name;
@override@OptionalDoubleConverter() final  double? areaHectares;

/// Create a copy of FieldOperationFieldRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationFieldRefCopyWith<_FieldOperationFieldRef> get copyWith => __$FieldOperationFieldRefCopyWithImpl<_FieldOperationFieldRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationFieldRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationFieldRef&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldId,name,areaHectares);

@override
String toString() {
  return 'FieldOperationFieldRef(fieldId: $fieldId, name: $name, areaHectares: $areaHectares)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationFieldRefCopyWith<$Res> implements $FieldOperationFieldRefCopyWith<$Res> {
  factory _$FieldOperationFieldRefCopyWith(_FieldOperationFieldRef value, $Res Function(_FieldOperationFieldRef) _then) = __$FieldOperationFieldRefCopyWithImpl;
@override @useResult
$Res call({
 String fieldId, String? name,@OptionalDoubleConverter() double? areaHectares
});




}
/// @nodoc
class __$FieldOperationFieldRefCopyWithImpl<$Res>
    implements _$FieldOperationFieldRefCopyWith<$Res> {
  __$FieldOperationFieldRefCopyWithImpl(this._self, this._then);

  final _FieldOperationFieldRef _self;
  final $Res Function(_FieldOperationFieldRef) _then;

/// Create a copy of FieldOperationFieldRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fieldId = null,Object? name = freezed,Object? areaHectares = freezed,}) {
  return _then(_FieldOperationFieldRef(
fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,areaHectares: freezed == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$FieldOperationItem {

 AuditMetadata? get metadata; String? get fieldOperationId; String get productId;@DoubleConverter() double get quantitySent;@OptionalDoubleConverter() double? get quantityReturned;@OptionalDoubleConverter() double? get quantityConsumed;@DoubleConverter() double get unitCostAtOperation;@OptionalDoubleConverter() double? get totalCostConsumed; String? get notes; List<FieldOperationItemFieldResult> get fieldResults;
/// Create a copy of FieldOperationItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationItemCopyWith<FieldOperationItem> get copyWith => _$FieldOperationItemCopyWithImpl<FieldOperationItem>(this as FieldOperationItem, _$identity);

  /// Serializes this FieldOperationItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationItem&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.fieldOperationId, fieldOperationId) || other.fieldOperationId == fieldOperationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.totalCostConsumed, totalCostConsumed) || other.totalCostConsumed == totalCostConsumed)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.fieldResults, fieldResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,fieldOperationId,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,totalCostConsumed,notes,const DeepCollectionEquality().hash(fieldResults));

@override
String toString() {
  return 'FieldOperationItem(metadata: $metadata, fieldOperationId: $fieldOperationId, productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, totalCostConsumed: $totalCostConsumed, notes: $notes, fieldResults: $fieldResults)';
}


}

/// @nodoc
abstract mixin class $FieldOperationItemCopyWith<$Res>  {
  factory $FieldOperationItemCopyWith(FieldOperationItem value, $Res Function(FieldOperationItem) _then) = _$FieldOperationItemCopyWithImpl;
@useResult
$Res call({
 AuditMetadata? metadata, String? fieldOperationId, String productId,@DoubleConverter() double quantitySent,@OptionalDoubleConverter() double? quantityReturned,@OptionalDoubleConverter() double? quantityConsumed,@DoubleConverter() double unitCostAtOperation,@OptionalDoubleConverter() double? totalCostConsumed, String? notes, List<FieldOperationItemFieldResult> fieldResults
});


$AuditMetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$FieldOperationItemCopyWithImpl<$Res>
    implements $FieldOperationItemCopyWith<$Res> {
  _$FieldOperationItemCopyWithImpl(this._self, this._then);

  final FieldOperationItem _self;
  final $Res Function(FieldOperationItem) _then;

/// Create a copy of FieldOperationItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = freezed,Object? fieldOperationId = freezed,Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? totalCostConsumed = freezed,Object? notes = freezed,Object? fieldResults = null,}) {
  return _then(_self.copyWith(
metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata?,fieldOperationId: freezed == fieldOperationId ? _self.fieldOperationId : fieldOperationId // ignore: cast_nullable_to_non_nullable
as String?,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantitySent: null == quantitySent ? _self.quantitySent : quantitySent // ignore: cast_nullable_to_non_nullable
as double,quantityReturned: freezed == quantityReturned ? _self.quantityReturned : quantityReturned // ignore: cast_nullable_to_non_nullable
as double?,quantityConsumed: freezed == quantityConsumed ? _self.quantityConsumed : quantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,unitCostAtOperation: null == unitCostAtOperation ? _self.unitCostAtOperation : unitCostAtOperation // ignore: cast_nullable_to_non_nullable
as double,totalCostConsumed: freezed == totalCostConsumed ? _self.totalCostConsumed : totalCostConsumed // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,fieldResults: null == fieldResults ? _self.fieldResults : fieldResults // ignore: cast_nullable_to_non_nullable
as List<FieldOperationItemFieldResult>,
  ));
}
/// Create a copy of FieldOperationItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $AuditMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [FieldOperationItem].
extension FieldOperationItemPatterns on FieldOperationItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationItem value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationItem value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata? metadata,  String? fieldOperationId,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes,  List<FieldOperationItemFieldResult> fieldResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationItem() when $default != null:
return $default(_that.metadata,_that.fieldOperationId,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes,_that.fieldResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata? metadata,  String? fieldOperationId,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes,  List<FieldOperationItemFieldResult> fieldResults)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationItem():
return $default(_that.metadata,_that.fieldOperationId,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes,_that.fieldResults);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata? metadata,  String? fieldOperationId,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes,  List<FieldOperationItemFieldResult> fieldResults)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationItem() when $default != null:
return $default(_that.metadata,_that.fieldOperationId,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes,_that.fieldResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationItem implements FieldOperationItem {
  const _FieldOperationItem({this.metadata, this.fieldOperationId, required this.productId, @DoubleConverter() required this.quantitySent, @OptionalDoubleConverter() this.quantityReturned, @OptionalDoubleConverter() this.quantityConsumed, @DoubleConverter() required this.unitCostAtOperation, @OptionalDoubleConverter() this.totalCostConsumed, this.notes, final  List<FieldOperationItemFieldResult> fieldResults = const <FieldOperationItemFieldResult>[]}): _fieldResults = fieldResults;
  factory _FieldOperationItem.fromJson(Map<String, dynamic> json) => _$FieldOperationItemFromJson(json);

@override final  AuditMetadata? metadata;
@override final  String? fieldOperationId;
@override final  String productId;
@override@DoubleConverter() final  double quantitySent;
@override@OptionalDoubleConverter() final  double? quantityReturned;
@override@OptionalDoubleConverter() final  double? quantityConsumed;
@override@DoubleConverter() final  double unitCostAtOperation;
@override@OptionalDoubleConverter() final  double? totalCostConsumed;
@override final  String? notes;
 final  List<FieldOperationItemFieldResult> _fieldResults;
@override@JsonKey() List<FieldOperationItemFieldResult> get fieldResults {
  if (_fieldResults is EqualUnmodifiableListView) return _fieldResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fieldResults);
}


/// Create a copy of FieldOperationItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationItemCopyWith<_FieldOperationItem> get copyWith => __$FieldOperationItemCopyWithImpl<_FieldOperationItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationItem&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.fieldOperationId, fieldOperationId) || other.fieldOperationId == fieldOperationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.totalCostConsumed, totalCostConsumed) || other.totalCostConsumed == totalCostConsumed)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._fieldResults, _fieldResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,fieldOperationId,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,totalCostConsumed,notes,const DeepCollectionEquality().hash(_fieldResults));

@override
String toString() {
  return 'FieldOperationItem(metadata: $metadata, fieldOperationId: $fieldOperationId, productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, totalCostConsumed: $totalCostConsumed, notes: $notes, fieldResults: $fieldResults)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationItemCopyWith<$Res> implements $FieldOperationItemCopyWith<$Res> {
  factory _$FieldOperationItemCopyWith(_FieldOperationItem value, $Res Function(_FieldOperationItem) _then) = __$FieldOperationItemCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata? metadata, String? fieldOperationId, String productId,@DoubleConverter() double quantitySent,@OptionalDoubleConverter() double? quantityReturned,@OptionalDoubleConverter() double? quantityConsumed,@DoubleConverter() double unitCostAtOperation,@OptionalDoubleConverter() double? totalCostConsumed, String? notes, List<FieldOperationItemFieldResult> fieldResults
});


@override $AuditMetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class __$FieldOperationItemCopyWithImpl<$Res>
    implements _$FieldOperationItemCopyWith<$Res> {
  __$FieldOperationItemCopyWithImpl(this._self, this._then);

  final _FieldOperationItem _self;
  final $Res Function(_FieldOperationItem) _then;

/// Create a copy of FieldOperationItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = freezed,Object? fieldOperationId = freezed,Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? totalCostConsumed = freezed,Object? notes = freezed,Object? fieldResults = null,}) {
  return _then(_FieldOperationItem(
metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata?,fieldOperationId: freezed == fieldOperationId ? _self.fieldOperationId : fieldOperationId // ignore: cast_nullable_to_non_nullable
as String?,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantitySent: null == quantitySent ? _self.quantitySent : quantitySent // ignore: cast_nullable_to_non_nullable
as double,quantityReturned: freezed == quantityReturned ? _self.quantityReturned : quantityReturned // ignore: cast_nullable_to_non_nullable
as double?,quantityConsumed: freezed == quantityConsumed ? _self.quantityConsumed : quantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,unitCostAtOperation: null == unitCostAtOperation ? _self.unitCostAtOperation : unitCostAtOperation // ignore: cast_nullable_to_non_nullable
as double,totalCostConsumed: freezed == totalCostConsumed ? _self.totalCostConsumed : totalCostConsumed // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,fieldResults: null == fieldResults ? _self._fieldResults : fieldResults // ignore: cast_nullable_to_non_nullable
as List<FieldOperationItemFieldResult>,
  ));
}

/// Create a copy of FieldOperationItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $AuditMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$FieldOperationItemFieldResult {

 String get fieldId; String? get fieldName;@OptionalDoubleConverter() double? get allocatedQuantityConsumed;@OptionalDoubleConverter() double? get allocatedCostConsumed;
/// Create a copy of FieldOperationItemFieldResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOperationItemFieldResultCopyWith<FieldOperationItemFieldResult> get copyWith => _$FieldOperationItemFieldResultCopyWithImpl<FieldOperationItemFieldResult>(this as FieldOperationItemFieldResult, _$identity);

  /// Serializes this FieldOperationItemFieldResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOperationItemFieldResult&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.allocatedQuantityConsumed, allocatedQuantityConsumed) || other.allocatedQuantityConsumed == allocatedQuantityConsumed)&&(identical(other.allocatedCostConsumed, allocatedCostConsumed) || other.allocatedCostConsumed == allocatedCostConsumed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldId,fieldName,allocatedQuantityConsumed,allocatedCostConsumed);

@override
String toString() {
  return 'FieldOperationItemFieldResult(fieldId: $fieldId, fieldName: $fieldName, allocatedQuantityConsumed: $allocatedQuantityConsumed, allocatedCostConsumed: $allocatedCostConsumed)';
}


}

/// @nodoc
abstract mixin class $FieldOperationItemFieldResultCopyWith<$Res>  {
  factory $FieldOperationItemFieldResultCopyWith(FieldOperationItemFieldResult value, $Res Function(FieldOperationItemFieldResult) _then) = _$FieldOperationItemFieldResultCopyWithImpl;
@useResult
$Res call({
 String fieldId, String? fieldName,@OptionalDoubleConverter() double? allocatedQuantityConsumed,@OptionalDoubleConverter() double? allocatedCostConsumed
});




}
/// @nodoc
class _$FieldOperationItemFieldResultCopyWithImpl<$Res>
    implements $FieldOperationItemFieldResultCopyWith<$Res> {
  _$FieldOperationItemFieldResultCopyWithImpl(this._self, this._then);

  final FieldOperationItemFieldResult _self;
  final $Res Function(FieldOperationItemFieldResult) _then;

/// Create a copy of FieldOperationItemFieldResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fieldId = null,Object? fieldName = freezed,Object? allocatedQuantityConsumed = freezed,Object? allocatedCostConsumed = freezed,}) {
  return _then(_self.copyWith(
fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,fieldName: freezed == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String?,allocatedQuantityConsumed: freezed == allocatedQuantityConsumed ? _self.allocatedQuantityConsumed : allocatedQuantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,allocatedCostConsumed: freezed == allocatedCostConsumed ? _self.allocatedCostConsumed : allocatedCostConsumed // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldOperationItemFieldResult].
extension FieldOperationItemFieldResultPatterns on FieldOperationItemFieldResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOperationItemFieldResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOperationItemFieldResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOperationItemFieldResult value)  $default,){
final _that = this;
switch (_that) {
case _FieldOperationItemFieldResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOperationItemFieldResult value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOperationItemFieldResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fieldId,  String? fieldName, @OptionalDoubleConverter()  double? allocatedQuantityConsumed, @OptionalDoubleConverter()  double? allocatedCostConsumed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOperationItemFieldResult() when $default != null:
return $default(_that.fieldId,_that.fieldName,_that.allocatedQuantityConsumed,_that.allocatedCostConsumed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fieldId,  String? fieldName, @OptionalDoubleConverter()  double? allocatedQuantityConsumed, @OptionalDoubleConverter()  double? allocatedCostConsumed)  $default,) {final _that = this;
switch (_that) {
case _FieldOperationItemFieldResult():
return $default(_that.fieldId,_that.fieldName,_that.allocatedQuantityConsumed,_that.allocatedCostConsumed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fieldId,  String? fieldName, @OptionalDoubleConverter()  double? allocatedQuantityConsumed, @OptionalDoubleConverter()  double? allocatedCostConsumed)?  $default,) {final _that = this;
switch (_that) {
case _FieldOperationItemFieldResult() when $default != null:
return $default(_that.fieldId,_that.fieldName,_that.allocatedQuantityConsumed,_that.allocatedCostConsumed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOperationItemFieldResult implements FieldOperationItemFieldResult {
  const _FieldOperationItemFieldResult({required this.fieldId, this.fieldName, @OptionalDoubleConverter() this.allocatedQuantityConsumed, @OptionalDoubleConverter() this.allocatedCostConsumed});
  factory _FieldOperationItemFieldResult.fromJson(Map<String, dynamic> json) => _$FieldOperationItemFieldResultFromJson(json);

@override final  String fieldId;
@override final  String? fieldName;
@override@OptionalDoubleConverter() final  double? allocatedQuantityConsumed;
@override@OptionalDoubleConverter() final  double? allocatedCostConsumed;

/// Create a copy of FieldOperationItemFieldResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOperationItemFieldResultCopyWith<_FieldOperationItemFieldResult> get copyWith => __$FieldOperationItemFieldResultCopyWithImpl<_FieldOperationItemFieldResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOperationItemFieldResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOperationItemFieldResult&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.allocatedQuantityConsumed, allocatedQuantityConsumed) || other.allocatedQuantityConsumed == allocatedQuantityConsumed)&&(identical(other.allocatedCostConsumed, allocatedCostConsumed) || other.allocatedCostConsumed == allocatedCostConsumed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fieldId,fieldName,allocatedQuantityConsumed,allocatedCostConsumed);

@override
String toString() {
  return 'FieldOperationItemFieldResult(fieldId: $fieldId, fieldName: $fieldName, allocatedQuantityConsumed: $allocatedQuantityConsumed, allocatedCostConsumed: $allocatedCostConsumed)';
}


}

/// @nodoc
abstract mixin class _$FieldOperationItemFieldResultCopyWith<$Res> implements $FieldOperationItemFieldResultCopyWith<$Res> {
  factory _$FieldOperationItemFieldResultCopyWith(_FieldOperationItemFieldResult value, $Res Function(_FieldOperationItemFieldResult) _then) = __$FieldOperationItemFieldResultCopyWithImpl;
@override @useResult
$Res call({
 String fieldId, String? fieldName,@OptionalDoubleConverter() double? allocatedQuantityConsumed,@OptionalDoubleConverter() double? allocatedCostConsumed
});




}
/// @nodoc
class __$FieldOperationItemFieldResultCopyWithImpl<$Res>
    implements _$FieldOperationItemFieldResultCopyWith<$Res> {
  __$FieldOperationItemFieldResultCopyWithImpl(this._self, this._then);

  final _FieldOperationItemFieldResult _self;
  final $Res Function(_FieldOperationItemFieldResult) _then;

/// Create a copy of FieldOperationItemFieldResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fieldId = null,Object? fieldName = freezed,Object? allocatedQuantityConsumed = freezed,Object? allocatedCostConsumed = freezed,}) {
  return _then(_FieldOperationItemFieldResult(
fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,fieldName: freezed == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String?,allocatedQuantityConsumed: freezed == allocatedQuantityConsumed ? _self.allocatedQuantityConsumed : allocatedQuantityConsumed // ignore: cast_nullable_to_non_nullable
as double?,allocatedCostConsumed: freezed == allocatedCostConsumed ? _self.allocatedCostConsumed : allocatedCostConsumed // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$CreateFieldOperationInput {

 String get farmId; List<String> get fieldIds; DateTime get operationDate; FieldOperationStatus get status; String? get description; String? get responsibleUserId; DateTime? get startedAt; DateTime? get finishedAt; bool get active; List<CreateFieldOperationItemInput> get items;
/// Create a copy of CreateFieldOperationInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFieldOperationInputCopyWith<CreateFieldOperationInput> get copyWith => _$CreateFieldOperationInputCopyWithImpl<CreateFieldOperationInput>(this as CreateFieldOperationInput, _$identity);

  /// Serializes this CreateFieldOperationInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFieldOperationInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&const DeepCollectionEquality().equals(other.fieldIds, fieldIds)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,const DeepCollectionEquality().hash(fieldIds),operationDate,status,description,responsibleUserId,startedAt,finishedAt,active,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'CreateFieldOperationInput(farmId: $farmId, fieldIds: $fieldIds, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, active: $active, items: $items)';
}


}

/// @nodoc
abstract mixin class $CreateFieldOperationInputCopyWith<$Res>  {
  factory $CreateFieldOperationInputCopyWith(CreateFieldOperationInput value, $Res Function(CreateFieldOperationInput) _then) = _$CreateFieldOperationInputCopyWithImpl;
@useResult
$Res call({
 String farmId, List<String> fieldIds, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, bool active, List<CreateFieldOperationItemInput> items
});




}
/// @nodoc
class _$CreateFieldOperationInputCopyWithImpl<$Res>
    implements $CreateFieldOperationInputCopyWith<$Res> {
  _$CreateFieldOperationInputCopyWithImpl(this._self, this._then);

  final CreateFieldOperationInput _self;
  final $Res Function(CreateFieldOperationInput) _then;

/// Create a copy of CreateFieldOperationInput
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
as List<CreateFieldOperationItemInput>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateFieldOperationInput].
extension CreateFieldOperationInputPatterns on CreateFieldOperationInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFieldOperationInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFieldOperationInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFieldOperationInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateFieldOperationInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFieldOperationInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFieldOperationInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  List<String> fieldIds,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  bool active,  List<CreateFieldOperationItemInput> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFieldOperationInput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  List<String> fieldIds,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  bool active,  List<CreateFieldOperationItemInput> items)  $default,) {final _that = this;
switch (_that) {
case _CreateFieldOperationInput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  List<String> fieldIds,  DateTime operationDate,  FieldOperationStatus status,  String? description,  String? responsibleUserId,  DateTime? startedAt,  DateTime? finishedAt,  bool active,  List<CreateFieldOperationItemInput> items)?  $default,) {final _that = this;
switch (_that) {
case _CreateFieldOperationInput() when $default != null:
return $default(_that.farmId,_that.fieldIds,_that.operationDate,_that.status,_that.description,_that.responsibleUserId,_that.startedAt,_that.finishedAt,_that.active,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFieldOperationInput implements CreateFieldOperationInput {
  const _CreateFieldOperationInput({required this.farmId, final  List<String> fieldIds = const <String>[], required this.operationDate, this.status = FieldOperationStatus.open, this.description, this.responsibleUserId, this.startedAt, this.finishedAt, this.active = true, final  List<CreateFieldOperationItemInput> items = const <CreateFieldOperationItemInput>[]}): _fieldIds = fieldIds,_items = items;
  factory _CreateFieldOperationInput.fromJson(Map<String, dynamic> json) => _$CreateFieldOperationInputFromJson(json);

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
 final  List<CreateFieldOperationItemInput> _items;
@override@JsonKey() List<CreateFieldOperationItemInput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CreateFieldOperationInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFieldOperationInputCopyWith<_CreateFieldOperationInput> get copyWith => __$CreateFieldOperationInputCopyWithImpl<_CreateFieldOperationInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFieldOperationInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFieldOperationInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&const DeepCollectionEquality().equals(other._fieldIds, _fieldIds)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,const DeepCollectionEquality().hash(_fieldIds),operationDate,status,description,responsibleUserId,startedAt,finishedAt,active,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'CreateFieldOperationInput(farmId: $farmId, fieldIds: $fieldIds, operationDate: $operationDate, status: $status, description: $description, responsibleUserId: $responsibleUserId, startedAt: $startedAt, finishedAt: $finishedAt, active: $active, items: $items)';
}


}

/// @nodoc
abstract mixin class _$CreateFieldOperationInputCopyWith<$Res> implements $CreateFieldOperationInputCopyWith<$Res> {
  factory _$CreateFieldOperationInputCopyWith(_CreateFieldOperationInput value, $Res Function(_CreateFieldOperationInput) _then) = __$CreateFieldOperationInputCopyWithImpl;
@override @useResult
$Res call({
 String farmId, List<String> fieldIds, DateTime operationDate, FieldOperationStatus status, String? description, String? responsibleUserId, DateTime? startedAt, DateTime? finishedAt, bool active, List<CreateFieldOperationItemInput> items
});




}
/// @nodoc
class __$CreateFieldOperationInputCopyWithImpl<$Res>
    implements _$CreateFieldOperationInputCopyWith<$Res> {
  __$CreateFieldOperationInputCopyWithImpl(this._self, this._then);

  final _CreateFieldOperationInput _self;
  final $Res Function(_CreateFieldOperationInput) _then;

/// Create a copy of CreateFieldOperationInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? fieldIds = null,Object? operationDate = null,Object? status = null,Object? description = freezed,Object? responsibleUserId = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? active = null,Object? items = null,}) {
  return _then(_CreateFieldOperationInput(
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
as List<CreateFieldOperationItemInput>,
  ));
}


}


/// @nodoc
mixin _$CreateFieldOperationItemInput {

 String get productId;@DoubleConverter() double get quantitySent;@OptionalDoubleConverter() double? get quantityReturned;@OptionalDoubleConverter() double? get quantityConsumed;@DoubleConverter() double get unitCostAtOperation; String? get notes; bool get active;
/// Create a copy of CreateFieldOperationItemInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFieldOperationItemInputCopyWith<CreateFieldOperationItemInput> get copyWith => _$CreateFieldOperationItemInputCopyWithImpl<CreateFieldOperationItemInput>(this as CreateFieldOperationItemInput, _$identity);

  /// Serializes this CreateFieldOperationItemInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFieldOperationItemInput&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,notes,active);

@override
String toString() {
  return 'CreateFieldOperationItemInput(productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateFieldOperationItemInputCopyWith<$Res>  {
  factory $CreateFieldOperationItemInputCopyWith(CreateFieldOperationItemInput value, $Res Function(CreateFieldOperationItemInput) _then) = _$CreateFieldOperationItemInputCopyWithImpl;
@useResult
$Res call({
 String productId,@DoubleConverter() double quantitySent,@OptionalDoubleConverter() double? quantityReturned,@OptionalDoubleConverter() double? quantityConsumed,@DoubleConverter() double unitCostAtOperation, String? notes, bool active
});




}
/// @nodoc
class _$CreateFieldOperationItemInputCopyWithImpl<$Res>
    implements $CreateFieldOperationItemInputCopyWith<$Res> {
  _$CreateFieldOperationItemInputCopyWithImpl(this._self, this._then);

  final CreateFieldOperationItemInput _self;
  final $Res Function(CreateFieldOperationItemInput) _then;

/// Create a copy of CreateFieldOperationItemInput
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


/// Adds pattern-matching-related methods to [CreateFieldOperationItemInput].
extension CreateFieldOperationItemInputPatterns on CreateFieldOperationItemInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFieldOperationItemInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFieldOperationItemInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFieldOperationItemInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateFieldOperationItemInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFieldOperationItemInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFieldOperationItemInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation,  String? notes,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFieldOperationItemInput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation,  String? notes,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateFieldOperationItemInput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation,  String? notes,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateFieldOperationItemInput() when $default != null:
return $default(_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.notes,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFieldOperationItemInput implements CreateFieldOperationItemInput {
  const _CreateFieldOperationItemInput({required this.productId, @DoubleConverter() required this.quantitySent, @OptionalDoubleConverter() this.quantityReturned, @OptionalDoubleConverter() this.quantityConsumed, @DoubleConverter() required this.unitCostAtOperation, this.notes, this.active = true});
  factory _CreateFieldOperationItemInput.fromJson(Map<String, dynamic> json) => _$CreateFieldOperationItemInputFromJson(json);

@override final  String productId;
@override@DoubleConverter() final  double quantitySent;
@override@OptionalDoubleConverter() final  double? quantityReturned;
@override@OptionalDoubleConverter() final  double? quantityConsumed;
@override@DoubleConverter() final  double unitCostAtOperation;
@override final  String? notes;
@override@JsonKey() final  bool active;

/// Create a copy of CreateFieldOperationItemInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFieldOperationItemInputCopyWith<_CreateFieldOperationItemInput> get copyWith => __$CreateFieldOperationItemInputCopyWithImpl<_CreateFieldOperationItemInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFieldOperationItemInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFieldOperationItemInput&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,notes,active);

@override
String toString() {
  return 'CreateFieldOperationItemInput(productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateFieldOperationItemInputCopyWith<$Res> implements $CreateFieldOperationItemInputCopyWith<$Res> {
  factory _$CreateFieldOperationItemInputCopyWith(_CreateFieldOperationItemInput value, $Res Function(_CreateFieldOperationItemInput) _then) = __$CreateFieldOperationItemInputCopyWithImpl;
@override @useResult
$Res call({
 String productId,@DoubleConverter() double quantitySent,@OptionalDoubleConverter() double? quantityReturned,@OptionalDoubleConverter() double? quantityConsumed,@DoubleConverter() double unitCostAtOperation, String? notes, bool active
});




}
/// @nodoc
class __$CreateFieldOperationItemInputCopyWithImpl<$Res>
    implements _$CreateFieldOperationItemInputCopyWith<$Res> {
  __$CreateFieldOperationItemInputCopyWithImpl(this._self, this._then);

  final _CreateFieldOperationItemInput _self;
  final $Res Function(_CreateFieldOperationItemInput) _then;

/// Create a copy of CreateFieldOperationItemInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? notes = freezed,Object? active = null,}) {
  return _then(_CreateFieldOperationItemInput(
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
mixin _$UpdateFieldOperationInput {

 String get id; FieldOperationStatus? get status; String? get description; String? get responsibleUserId; DateTime? get operationDate; DateTime? get startedAt; DateTime? get finishedAt; List<UpdateFieldOperationItemInput> get items;
/// Create a copy of UpdateFieldOperationInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFieldOperationInputCopyWith<UpdateFieldOperationInput> get copyWith => _$UpdateFieldOperationInputCopyWithImpl<UpdateFieldOperationInput>(this as UpdateFieldOperationInput, _$identity);

  /// Serializes this UpdateFieldOperationInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFieldOperationInput&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,description,responsibleUserId,operationDate,startedAt,finishedAt,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'UpdateFieldOperationInput(id: $id, status: $status, description: $description, responsibleUserId: $responsibleUserId, operationDate: $operationDate, startedAt: $startedAt, finishedAt: $finishedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class $UpdateFieldOperationInputCopyWith<$Res>  {
  factory $UpdateFieldOperationInputCopyWith(UpdateFieldOperationInput value, $Res Function(UpdateFieldOperationInput) _then) = _$UpdateFieldOperationInputCopyWithImpl;
@useResult
$Res call({
 String id, FieldOperationStatus? status, String? description, String? responsibleUserId, DateTime? operationDate, DateTime? startedAt, DateTime? finishedAt, List<UpdateFieldOperationItemInput> items
});




}
/// @nodoc
class _$UpdateFieldOperationInputCopyWithImpl<$Res>
    implements $UpdateFieldOperationInputCopyWith<$Res> {
  _$UpdateFieldOperationInputCopyWithImpl(this._self, this._then);

  final UpdateFieldOperationInput _self;
  final $Res Function(UpdateFieldOperationInput) _then;

/// Create a copy of UpdateFieldOperationInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = freezed,Object? description = freezed,Object? responsibleUserId = freezed,Object? operationDate = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,operationDate: freezed == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<UpdateFieldOperationItemInput>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFieldOperationInput].
extension UpdateFieldOperationInputPatterns on UpdateFieldOperationInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFieldOperationInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFieldOperationInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFieldOperationInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldOperationInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFieldOperationInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldOperationInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  FieldOperationStatus? status,  String? description,  String? responsibleUserId,  DateTime? operationDate,  DateTime? startedAt,  DateTime? finishedAt,  List<UpdateFieldOperationItemInput> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFieldOperationInput() when $default != null:
return $default(_that.id,_that.status,_that.description,_that.responsibleUserId,_that.operationDate,_that.startedAt,_that.finishedAt,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  FieldOperationStatus? status,  String? description,  String? responsibleUserId,  DateTime? operationDate,  DateTime? startedAt,  DateTime? finishedAt,  List<UpdateFieldOperationItemInput> items)  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldOperationInput():
return $default(_that.id,_that.status,_that.description,_that.responsibleUserId,_that.operationDate,_that.startedAt,_that.finishedAt,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  FieldOperationStatus? status,  String? description,  String? responsibleUserId,  DateTime? operationDate,  DateTime? startedAt,  DateTime? finishedAt,  List<UpdateFieldOperationItemInput> items)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldOperationInput() when $default != null:
return $default(_that.id,_that.status,_that.description,_that.responsibleUserId,_that.operationDate,_that.startedAt,_that.finishedAt,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFieldOperationInput implements UpdateFieldOperationInput {
  const _UpdateFieldOperationInput({required this.id, this.status, this.description, this.responsibleUserId, this.operationDate, this.startedAt, this.finishedAt, final  List<UpdateFieldOperationItemInput> items = const <UpdateFieldOperationItemInput>[]}): _items = items;
  factory _UpdateFieldOperationInput.fromJson(Map<String, dynamic> json) => _$UpdateFieldOperationInputFromJson(json);

@override final  String id;
@override final  FieldOperationStatus? status;
@override final  String? description;
@override final  String? responsibleUserId;
@override final  DateTime? operationDate;
@override final  DateTime? startedAt;
@override final  DateTime? finishedAt;
 final  List<UpdateFieldOperationItemInput> _items;
@override@JsonKey() List<UpdateFieldOperationItemInput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of UpdateFieldOperationInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFieldOperationInputCopyWith<_UpdateFieldOperationInput> get copyWith => __$UpdateFieldOperationInputCopyWithImpl<_UpdateFieldOperationInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFieldOperationInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFieldOperationInput&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.responsibleUserId, responsibleUserId) || other.responsibleUserId == responsibleUserId)&&(identical(other.operationDate, operationDate) || other.operationDate == operationDate)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,description,responsibleUserId,operationDate,startedAt,finishedAt,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'UpdateFieldOperationInput(id: $id, status: $status, description: $description, responsibleUserId: $responsibleUserId, operationDate: $operationDate, startedAt: $startedAt, finishedAt: $finishedAt, items: $items)';
}


}

/// @nodoc
abstract mixin class _$UpdateFieldOperationInputCopyWith<$Res> implements $UpdateFieldOperationInputCopyWith<$Res> {
  factory _$UpdateFieldOperationInputCopyWith(_UpdateFieldOperationInput value, $Res Function(_UpdateFieldOperationInput) _then) = __$UpdateFieldOperationInputCopyWithImpl;
@override @useResult
$Res call({
 String id, FieldOperationStatus? status, String? description, String? responsibleUserId, DateTime? operationDate, DateTime? startedAt, DateTime? finishedAt, List<UpdateFieldOperationItemInput> items
});




}
/// @nodoc
class __$UpdateFieldOperationInputCopyWithImpl<$Res>
    implements _$UpdateFieldOperationInputCopyWith<$Res> {
  __$UpdateFieldOperationInputCopyWithImpl(this._self, this._then);

  final _UpdateFieldOperationInput _self;
  final $Res Function(_UpdateFieldOperationInput) _then;

/// Create a copy of UpdateFieldOperationInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = freezed,Object? description = freezed,Object? responsibleUserId = freezed,Object? operationDate = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? items = null,}) {
  return _then(_UpdateFieldOperationInput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FieldOperationStatus?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,responsibleUserId: freezed == responsibleUserId ? _self.responsibleUserId : responsibleUserId // ignore: cast_nullable_to_non_nullable
as String?,operationDate: freezed == operationDate ? _self.operationDate : operationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<UpdateFieldOperationItemInput>,
  ));
}


}


/// @nodoc
mixin _$UpdateFieldOperationItemInput {

 String? get id; String get productId;@DoubleConverter() double get quantitySent;@OptionalDoubleConverter() double? get quantityReturned;@OptionalDoubleConverter() double? get quantityConsumed;@DoubleConverter() double get unitCostAtOperation;@OptionalDoubleConverter() double? get totalCostConsumed; String? get notes; bool get active;
/// Create a copy of UpdateFieldOperationItemInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFieldOperationItemInputCopyWith<UpdateFieldOperationItemInput> get copyWith => _$UpdateFieldOperationItemInputCopyWithImpl<UpdateFieldOperationItemInput>(this as UpdateFieldOperationItemInput, _$identity);

  /// Serializes this UpdateFieldOperationItemInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFieldOperationItemInput&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.totalCostConsumed, totalCostConsumed) || other.totalCostConsumed == totalCostConsumed)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,totalCostConsumed,notes,active);

@override
String toString() {
  return 'UpdateFieldOperationItemInput(id: $id, productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, totalCostConsumed: $totalCostConsumed, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateFieldOperationItemInputCopyWith<$Res>  {
  factory $UpdateFieldOperationItemInputCopyWith(UpdateFieldOperationItemInput value, $Res Function(UpdateFieldOperationItemInput) _then) = _$UpdateFieldOperationItemInputCopyWithImpl;
@useResult
$Res call({
 String? id, String productId,@DoubleConverter() double quantitySent,@OptionalDoubleConverter() double? quantityReturned,@OptionalDoubleConverter() double? quantityConsumed,@DoubleConverter() double unitCostAtOperation,@OptionalDoubleConverter() double? totalCostConsumed, String? notes, bool active
});




}
/// @nodoc
class _$UpdateFieldOperationItemInputCopyWithImpl<$Res>
    implements $UpdateFieldOperationItemInputCopyWith<$Res> {
  _$UpdateFieldOperationItemInputCopyWithImpl(this._self, this._then);

  final UpdateFieldOperationItemInput _self;
  final $Res Function(UpdateFieldOperationItemInput) _then;

/// Create a copy of UpdateFieldOperationItemInput
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


/// Adds pattern-matching-related methods to [UpdateFieldOperationItemInput].
extension UpdateFieldOperationItemInputPatterns on UpdateFieldOperationItemInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFieldOperationItemInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFieldOperationItemInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFieldOperationItemInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldOperationItemInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFieldOperationItemInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldOperationItemInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFieldOperationItemInput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes,  bool active)  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldOperationItemInput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String productId, @DoubleConverter()  double quantitySent, @OptionalDoubleConverter()  double? quantityReturned, @OptionalDoubleConverter()  double? quantityConsumed, @DoubleConverter()  double unitCostAtOperation, @OptionalDoubleConverter()  double? totalCostConsumed,  String? notes,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldOperationItemInput() when $default != null:
return $default(_that.id,_that.productId,_that.quantitySent,_that.quantityReturned,_that.quantityConsumed,_that.unitCostAtOperation,_that.totalCostConsumed,_that.notes,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFieldOperationItemInput implements UpdateFieldOperationItemInput {
  const _UpdateFieldOperationItemInput({this.id, required this.productId, @DoubleConverter() required this.quantitySent, @OptionalDoubleConverter() this.quantityReturned, @OptionalDoubleConverter() this.quantityConsumed, @DoubleConverter() required this.unitCostAtOperation, @OptionalDoubleConverter() this.totalCostConsumed, this.notes, this.active = true});
  factory _UpdateFieldOperationItemInput.fromJson(Map<String, dynamic> json) => _$UpdateFieldOperationItemInputFromJson(json);

@override final  String? id;
@override final  String productId;
@override@DoubleConverter() final  double quantitySent;
@override@OptionalDoubleConverter() final  double? quantityReturned;
@override@OptionalDoubleConverter() final  double? quantityConsumed;
@override@DoubleConverter() final  double unitCostAtOperation;
@override@OptionalDoubleConverter() final  double? totalCostConsumed;
@override final  String? notes;
@override@JsonKey() final  bool active;

/// Create a copy of UpdateFieldOperationItemInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFieldOperationItemInputCopyWith<_UpdateFieldOperationItemInput> get copyWith => __$UpdateFieldOperationItemInputCopyWithImpl<_UpdateFieldOperationItemInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFieldOperationItemInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFieldOperationItemInput&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantitySent, quantitySent) || other.quantitySent == quantitySent)&&(identical(other.quantityReturned, quantityReturned) || other.quantityReturned == quantityReturned)&&(identical(other.quantityConsumed, quantityConsumed) || other.quantityConsumed == quantityConsumed)&&(identical(other.unitCostAtOperation, unitCostAtOperation) || other.unitCostAtOperation == unitCostAtOperation)&&(identical(other.totalCostConsumed, totalCostConsumed) || other.totalCostConsumed == totalCostConsumed)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,quantitySent,quantityReturned,quantityConsumed,unitCostAtOperation,totalCostConsumed,notes,active);

@override
String toString() {
  return 'UpdateFieldOperationItemInput(id: $id, productId: $productId, quantitySent: $quantitySent, quantityReturned: $quantityReturned, quantityConsumed: $quantityConsumed, unitCostAtOperation: $unitCostAtOperation, totalCostConsumed: $totalCostConsumed, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateFieldOperationItemInputCopyWith<$Res> implements $UpdateFieldOperationItemInputCopyWith<$Res> {
  factory _$UpdateFieldOperationItemInputCopyWith(_UpdateFieldOperationItemInput value, $Res Function(_UpdateFieldOperationItemInput) _then) = __$UpdateFieldOperationItemInputCopyWithImpl;
@override @useResult
$Res call({
 String? id, String productId,@DoubleConverter() double quantitySent,@OptionalDoubleConverter() double? quantityReturned,@OptionalDoubleConverter() double? quantityConsumed,@DoubleConverter() double unitCostAtOperation,@OptionalDoubleConverter() double? totalCostConsumed, String? notes, bool active
});




}
/// @nodoc
class __$UpdateFieldOperationItemInputCopyWithImpl<$Res>
    implements _$UpdateFieldOperationItemInputCopyWith<$Res> {
  __$UpdateFieldOperationItemInputCopyWithImpl(this._self, this._then);

  final _UpdateFieldOperationItemInput _self;
  final $Res Function(_UpdateFieldOperationItemInput) _then;

/// Create a copy of UpdateFieldOperationItemInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productId = null,Object? quantitySent = null,Object? quantityReturned = freezed,Object? quantityConsumed = freezed,Object? unitCostAtOperation = null,Object? totalCostConsumed = freezed,Object? notes = freezed,Object? active = null,}) {
  return _then(_UpdateFieldOperationItemInput(
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
