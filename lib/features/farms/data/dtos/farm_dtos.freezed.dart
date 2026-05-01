// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FarmDto {

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get name; String? get description;
/// Create a copy of FarmDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FarmDtoCopyWith<FarmDto> get copyWith => _$FarmDtoCopyWithImpl<FarmDto>(this as FarmDto, _$identity);

  /// Serializes this FarmDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FarmDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,name,description);

@override
String toString() {
  return 'FarmDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $FarmDtoCopyWith<$Res>  {
  factory $FarmDtoCopyWith(FarmDto value, $Res Function(FarmDto) _then) = _$FarmDtoCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String name, String? description
});




}
/// @nodoc
class _$FarmDtoCopyWithImpl<$Res>
    implements $FarmDtoCopyWith<$Res> {
  _$FarmDtoCopyWithImpl(this._self, this._then);

  final FarmDto _self;
  final $Res Function(FarmDto) _then;

/// Create a copy of FarmDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? name = null,Object? description = freezed,}) {
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
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FarmDto].
extension FarmDtoPatterns on FarmDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FarmDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FarmDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FarmDto value)  $default,){
final _that = this;
switch (_that) {
case _FarmDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FarmDto value)?  $default,){
final _that = this;
switch (_that) {
case _FarmDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String name,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FarmDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String name,  String? description)  $default,) {final _that = this;
switch (_that) {
case _FarmDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String name,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _FarmDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FarmDto implements FarmDto {
  const _FarmDto({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.name, this.description});
  factory _FarmDto.fromJson(Map<String, dynamic> json) => _$FarmDtoFromJson(json);

@override final  String id;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String name;
@override final  String? description;

/// Create a copy of FarmDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FarmDtoCopyWith<_FarmDto> get copyWith => __$FarmDtoCopyWithImpl<_FarmDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FarmDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FarmDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,name,description);

@override
String toString() {
  return 'FarmDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$FarmDtoCopyWith<$Res> implements $FarmDtoCopyWith<$Res> {
  factory _$FarmDtoCopyWith(_FarmDto value, $Res Function(_FarmDto) _then) = __$FarmDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String name, String? description
});




}
/// @nodoc
class __$FarmDtoCopyWithImpl<$Res>
    implements _$FarmDtoCopyWith<$Res> {
  __$FarmDtoCopyWithImpl(this._self, this._then);

  final _FarmDto _self;
  final $Res Function(_FarmDto) _then;

/// Create a copy of FarmDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? name = null,Object? description = freezed,}) {
  return _then(_FarmDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateFarmRequestDto {

 String get name; String? get description; bool get active;
/// Create a copy of CreateFarmRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFarmRequestDtoCopyWith<CreateFarmRequestDto> get copyWith => _$CreateFarmRequestDtoCopyWithImpl<CreateFarmRequestDto>(this as CreateFarmRequestDto, _$identity);

  /// Serializes this CreateFarmRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFarmRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,active);

@override
String toString() {
  return 'CreateFarmRequestDto(name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateFarmRequestDtoCopyWith<$Res>  {
  factory $CreateFarmRequestDtoCopyWith(CreateFarmRequestDto value, $Res Function(CreateFarmRequestDto) _then) = _$CreateFarmRequestDtoCopyWithImpl;
@useResult
$Res call({
 String name, String? description, bool active
});




}
/// @nodoc
class _$CreateFarmRequestDtoCopyWithImpl<$Res>
    implements $CreateFarmRequestDtoCopyWith<$Res> {
  _$CreateFarmRequestDtoCopyWithImpl(this._self, this._then);

  final CreateFarmRequestDto _self;
  final $Res Function(CreateFarmRequestDto) _then;

/// Create a copy of CreateFarmRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateFarmRequestDto].
extension CreateFarmRequestDtoPatterns on CreateFarmRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFarmRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFarmRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFarmRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateFarmRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFarmRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFarmRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? description,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFarmRequestDto() when $default != null:
return $default(_that.name,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? description,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateFarmRequestDto():
return $default(_that.name,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? description,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateFarmRequestDto() when $default != null:
return $default(_that.name,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFarmRequestDto implements CreateFarmRequestDto {
  const _CreateFarmRequestDto({required this.name, this.description, this.active = true});
  factory _CreateFarmRequestDto.fromJson(Map<String, dynamic> json) => _$CreateFarmRequestDtoFromJson(json);

@override final  String name;
@override final  String? description;
@override@JsonKey() final  bool active;

/// Create a copy of CreateFarmRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFarmRequestDtoCopyWith<_CreateFarmRequestDto> get copyWith => __$CreateFarmRequestDtoCopyWithImpl<_CreateFarmRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFarmRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFarmRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,active);

@override
String toString() {
  return 'CreateFarmRequestDto(name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateFarmRequestDtoCopyWith<$Res> implements $CreateFarmRequestDtoCopyWith<$Res> {
  factory _$CreateFarmRequestDtoCopyWith(_CreateFarmRequestDto value, $Res Function(_CreateFarmRequestDto) _then) = __$CreateFarmRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String? description, bool active
});




}
/// @nodoc
class __$CreateFarmRequestDtoCopyWithImpl<$Res>
    implements _$CreateFarmRequestDtoCopyWith<$Res> {
  __$CreateFarmRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateFarmRequestDto _self;
  final $Res Function(_CreateFarmRequestDto) _then;

/// Create a copy of CreateFarmRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_CreateFarmRequestDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateFarmRequestDto {

 String get name; String? get description; bool get active;
/// Create a copy of UpdateFarmRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFarmRequestDtoCopyWith<UpdateFarmRequestDto> get copyWith => _$UpdateFarmRequestDtoCopyWithImpl<UpdateFarmRequestDto>(this as UpdateFarmRequestDto, _$identity);

  /// Serializes this UpdateFarmRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFarmRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,active);

@override
String toString() {
  return 'UpdateFarmRequestDto(name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateFarmRequestDtoCopyWith<$Res>  {
  factory $UpdateFarmRequestDtoCopyWith(UpdateFarmRequestDto value, $Res Function(UpdateFarmRequestDto) _then) = _$UpdateFarmRequestDtoCopyWithImpl;
@useResult
$Res call({
 String name, String? description, bool active
});




}
/// @nodoc
class _$UpdateFarmRequestDtoCopyWithImpl<$Res>
    implements $UpdateFarmRequestDtoCopyWith<$Res> {
  _$UpdateFarmRequestDtoCopyWithImpl(this._self, this._then);

  final UpdateFarmRequestDto _self;
  final $Res Function(UpdateFarmRequestDto) _then;

/// Create a copy of UpdateFarmRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFarmRequestDto].
extension UpdateFarmRequestDtoPatterns on UpdateFarmRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFarmRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFarmRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFarmRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFarmRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFarmRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFarmRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? description,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFarmRequestDto() when $default != null:
return $default(_that.name,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? description,  bool active)  $default,) {final _that = this;
switch (_that) {
case _UpdateFarmRequestDto():
return $default(_that.name,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? description,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFarmRequestDto() when $default != null:
return $default(_that.name,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFarmRequestDto implements UpdateFarmRequestDto {
  const _UpdateFarmRequestDto({required this.name, this.description, required this.active});
  factory _UpdateFarmRequestDto.fromJson(Map<String, dynamic> json) => _$UpdateFarmRequestDtoFromJson(json);

@override final  String name;
@override final  String? description;
@override final  bool active;

/// Create a copy of UpdateFarmRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFarmRequestDtoCopyWith<_UpdateFarmRequestDto> get copyWith => __$UpdateFarmRequestDtoCopyWithImpl<_UpdateFarmRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFarmRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFarmRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,active);

@override
String toString() {
  return 'UpdateFarmRequestDto(name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateFarmRequestDtoCopyWith<$Res> implements $UpdateFarmRequestDtoCopyWith<$Res> {
  factory _$UpdateFarmRequestDtoCopyWith(_UpdateFarmRequestDto value, $Res Function(_UpdateFarmRequestDto) _then) = __$UpdateFarmRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String? description, bool active
});




}
/// @nodoc
class __$UpdateFarmRequestDtoCopyWithImpl<$Res>
    implements _$UpdateFarmRequestDtoCopyWith<$Res> {
  __$UpdateFarmRequestDtoCopyWithImpl(this._self, this._then);

  final _UpdateFarmRequestDto _self;
  final $Res Function(_UpdateFarmRequestDto) _then;

/// Create a copy of UpdateFarmRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_UpdateFarmRequestDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
