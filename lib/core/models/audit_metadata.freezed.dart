// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuditMetadata {

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail;
/// Create a copy of AuditMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<AuditMetadata> get copyWith => _$AuditMetadataCopyWithImpl<AuditMetadata>(this as AuditMetadata, _$identity);

  /// Serializes this AuditMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuditMetadata&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail);

@override
String toString() {
  return 'AuditMetadata(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail)';
}


}

/// @nodoc
abstract mixin class $AuditMetadataCopyWith<$Res>  {
  factory $AuditMetadataCopyWith(AuditMetadata value, $Res Function(AuditMetadata) _then) = _$AuditMetadataCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail
});




}
/// @nodoc
class _$AuditMetadataCopyWithImpl<$Res>
    implements $AuditMetadataCopyWith<$Res> {
  _$AuditMetadataCopyWithImpl(this._self, this._then);

  final AuditMetadata _self;
  final $Res Function(AuditMetadata) _then;

/// Create a copy of AuditMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuditMetadata].
extension AuditMetadataPatterns on AuditMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuditMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuditMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuditMetadata value)  $default,){
final _that = this;
switch (_that) {
case _AuditMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuditMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _AuditMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuditMetadata() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail)  $default,) {final _that = this;
switch (_that) {
case _AuditMetadata():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail)?  $default,) {final _that = this;
switch (_that) {
case _AuditMetadata() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuditMetadata implements AuditMetadata {
  const _AuditMetadata({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail});
  factory _AuditMetadata.fromJson(Map<String, dynamic> json) => _$AuditMetadataFromJson(json);

@override final  String id;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;

/// Create a copy of AuditMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuditMetadataCopyWith<_AuditMetadata> get copyWith => __$AuditMetadataCopyWithImpl<_AuditMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuditMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuditMetadata&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail);

@override
String toString() {
  return 'AuditMetadata(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail)';
}


}

/// @nodoc
abstract mixin class _$AuditMetadataCopyWith<$Res> implements $AuditMetadataCopyWith<$Res> {
  factory _$AuditMetadataCopyWith(_AuditMetadata value, $Res Function(_AuditMetadata) _then) = __$AuditMetadataCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail
});




}
/// @nodoc
class __$AuditMetadataCopyWithImpl<$Res>
    implements _$AuditMetadataCopyWith<$Res> {
  __$AuditMetadataCopyWithImpl(this._self, this._then);

  final _AuditMetadata _self;
  final $Res Function(_AuditMetadata) _then;

/// Create a copy of AuditMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,}) {
  return _then(_AuditMetadata(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
