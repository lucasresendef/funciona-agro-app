// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnitOfMeasureDto {

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get name; String get symbol;
/// Create a copy of UnitOfMeasureDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitOfMeasureDtoCopyWith<UnitOfMeasureDto> get copyWith => _$UnitOfMeasureDtoCopyWithImpl<UnitOfMeasureDto>(this as UnitOfMeasureDto, _$identity);

  /// Serializes this UnitOfMeasureDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitOfMeasureDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,name,symbol);

@override
String toString() {
  return 'UnitOfMeasureDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, name: $name, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class $UnitOfMeasureDtoCopyWith<$Res>  {
  factory $UnitOfMeasureDtoCopyWith(UnitOfMeasureDto value, $Res Function(UnitOfMeasureDto) _then) = _$UnitOfMeasureDtoCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String name, String symbol
});




}
/// @nodoc
class _$UnitOfMeasureDtoCopyWithImpl<$Res>
    implements $UnitOfMeasureDtoCopyWith<$Res> {
  _$UnitOfMeasureDtoCopyWithImpl(this._self, this._then);

  final UnitOfMeasureDto _self;
  final $Res Function(UnitOfMeasureDto) _then;

/// Create a copy of UnitOfMeasureDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? name = null,Object? symbol = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UnitOfMeasureDto].
extension UnitOfMeasureDtoPatterns on UnitOfMeasureDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnitOfMeasureDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnitOfMeasureDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnitOfMeasureDto value)  $default,){
final _that = this;
switch (_that) {
case _UnitOfMeasureDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnitOfMeasureDto value)?  $default,){
final _that = this;
switch (_that) {
case _UnitOfMeasureDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String name,  String symbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnitOfMeasureDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.name,_that.symbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String name,  String symbol)  $default,) {final _that = this;
switch (_that) {
case _UnitOfMeasureDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.name,_that.symbol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String name,  String symbol)?  $default,) {final _that = this;
switch (_that) {
case _UnitOfMeasureDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.name,_that.symbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnitOfMeasureDto implements UnitOfMeasureDto {
  const _UnitOfMeasureDto({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.name, required this.symbol});
  factory _UnitOfMeasureDto.fromJson(Map<String, dynamic> json) => _$UnitOfMeasureDtoFromJson(json);

@override final  String id;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String name;
@override final  String symbol;

/// Create a copy of UnitOfMeasureDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitOfMeasureDtoCopyWith<_UnitOfMeasureDto> get copyWith => __$UnitOfMeasureDtoCopyWithImpl<_UnitOfMeasureDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnitOfMeasureDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitOfMeasureDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,name,symbol);

@override
String toString() {
  return 'UnitOfMeasureDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, name: $name, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class _$UnitOfMeasureDtoCopyWith<$Res> implements $UnitOfMeasureDtoCopyWith<$Res> {
  factory _$UnitOfMeasureDtoCopyWith(_UnitOfMeasureDto value, $Res Function(_UnitOfMeasureDto) _then) = __$UnitOfMeasureDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String name, String symbol
});




}
/// @nodoc
class __$UnitOfMeasureDtoCopyWithImpl<$Res>
    implements _$UnitOfMeasureDtoCopyWith<$Res> {
  __$UnitOfMeasureDtoCopyWithImpl(this._self, this._then);

  final _UnitOfMeasureDto _self;
  final $Res Function(_UnitOfMeasureDto) _then;

/// Create a copy of UnitOfMeasureDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? name = null,Object? symbol = null,}) {
  return _then(_UnitOfMeasureDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreateUnitRequestDto {

 String get name; String get symbol; bool get active;
/// Create a copy of CreateUnitRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUnitRequestDtoCopyWith<CreateUnitRequestDto> get copyWith => _$CreateUnitRequestDtoCopyWithImpl<CreateUnitRequestDto>(this as CreateUnitRequestDto, _$identity);

  /// Serializes this CreateUnitRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUnitRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,symbol,active);

@override
String toString() {
  return 'CreateUnitRequestDto(name: $name, symbol: $symbol, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateUnitRequestDtoCopyWith<$Res>  {
  factory $CreateUnitRequestDtoCopyWith(CreateUnitRequestDto value, $Res Function(CreateUnitRequestDto) _then) = _$CreateUnitRequestDtoCopyWithImpl;
@useResult
$Res call({
 String name, String symbol, bool active
});




}
/// @nodoc
class _$CreateUnitRequestDtoCopyWithImpl<$Res>
    implements $CreateUnitRequestDtoCopyWith<$Res> {
  _$CreateUnitRequestDtoCopyWithImpl(this._self, this._then);

  final CreateUnitRequestDto _self;
  final $Res Function(CreateUnitRequestDto) _then;

/// Create a copy of CreateUnitRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? symbol = null,Object? active = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateUnitRequestDto].
extension CreateUnitRequestDtoPatterns on CreateUnitRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateUnitRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateUnitRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateUnitRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateUnitRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateUnitRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateUnitRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String symbol,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateUnitRequestDto() when $default != null:
return $default(_that.name,_that.symbol,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String symbol,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateUnitRequestDto():
return $default(_that.name,_that.symbol,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String symbol,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateUnitRequestDto() when $default != null:
return $default(_that.name,_that.symbol,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateUnitRequestDto implements CreateUnitRequestDto {
  const _CreateUnitRequestDto({required this.name, required this.symbol, this.active = true});
  factory _CreateUnitRequestDto.fromJson(Map<String, dynamic> json) => _$CreateUnitRequestDtoFromJson(json);

@override final  String name;
@override final  String symbol;
@override@JsonKey() final  bool active;

/// Create a copy of CreateUnitRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUnitRequestDtoCopyWith<_CreateUnitRequestDto> get copyWith => __$CreateUnitRequestDtoCopyWithImpl<_CreateUnitRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateUnitRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUnitRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,symbol,active);

@override
String toString() {
  return 'CreateUnitRequestDto(name: $name, symbol: $symbol, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateUnitRequestDtoCopyWith<$Res> implements $CreateUnitRequestDtoCopyWith<$Res> {
  factory _$CreateUnitRequestDtoCopyWith(_CreateUnitRequestDto value, $Res Function(_CreateUnitRequestDto) _then) = __$CreateUnitRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String symbol, bool active
});




}
/// @nodoc
class __$CreateUnitRequestDtoCopyWithImpl<$Res>
    implements _$CreateUnitRequestDtoCopyWith<$Res> {
  __$CreateUnitRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateUnitRequestDto _self;
  final $Res Function(_CreateUnitRequestDto) _then;

/// Create a copy of CreateUnitRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? symbol = null,Object? active = null,}) {
  return _then(_CreateUnitRequestDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
