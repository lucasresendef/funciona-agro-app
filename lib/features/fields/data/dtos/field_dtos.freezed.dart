// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FieldDto {

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get farmId; String get name;@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) double get areaHectares; String? get description;
/// Create a copy of FieldDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldDtoCopyWith<FieldDto> get copyWith => _$FieldDtoCopyWithImpl<FieldDto>(this as FieldDto, _$identity);

  /// Serializes this FieldDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,name,areaHectares,description);

@override
String toString() {
  return 'FieldDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description)';
}


}

/// @nodoc
abstract mixin class $FieldDtoCopyWith<$Res>  {
  factory $FieldDtoCopyWith(FieldDto value, $Res Function(FieldDto) _then) = _$FieldDtoCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String name,@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) double areaHectares, String? description
});




}
/// @nodoc
class _$FieldDtoCopyWithImpl<$Res>
    implements $FieldDtoCopyWith<$Res> {
  _$FieldDtoCopyWithImpl(this._self, this._then);

  final FieldDto _self;
  final $Res Function(FieldDto) _then;

/// Create a copy of FieldDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,}) {
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
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,areaHectares: null == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldDto].
extension FieldDtoPatterns on FieldDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldDto value)  $default,){
final _that = this;
switch (_that) {
case _FieldDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldDto value)?  $default,){
final _that = this;
switch (_that) {
case _FieldDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)  double areaHectares,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.name,_that.areaHectares,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)  double areaHectares,  String? description)  $default,) {final _that = this;
switch (_that) {
case _FieldDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.name,_that.areaHectares,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)  double areaHectares,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _FieldDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.name,_that.areaHectares,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldDto implements FieldDto {
  const _FieldDto({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.farmId, required this.name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) required this.areaHectares, this.description});
  factory _FieldDto.fromJson(Map<String, dynamic> json) => _$FieldDtoFromJson(json);

@override final  String id;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String farmId;
@override final  String name;
@override@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) final  double areaHectares;
@override final  String? description;

/// Create a copy of FieldDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldDtoCopyWith<_FieldDto> get copyWith => __$FieldDtoCopyWithImpl<_FieldDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,name,areaHectares,description);

@override
String toString() {
  return 'FieldDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description)';
}


}

/// @nodoc
abstract mixin class _$FieldDtoCopyWith<$Res> implements $FieldDtoCopyWith<$Res> {
  factory _$FieldDtoCopyWith(_FieldDto value, $Res Function(_FieldDto) _then) = __$FieldDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String name,@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) double areaHectares, String? description
});




}
/// @nodoc
class __$FieldDtoCopyWithImpl<$Res>
    implements _$FieldDtoCopyWith<$Res> {
  __$FieldDtoCopyWithImpl(this._self, this._then);

  final _FieldDto _self;
  final $Res Function(_FieldDto) _then;

/// Create a copy of FieldDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,}) {
  return _then(_FieldDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,areaHectares: null == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateFieldRequestDto {

 String get farmId; String get name;@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) double get areaHectares; String? get description; bool get active;
/// Create a copy of CreateFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFieldRequestDtoCopyWith<CreateFieldRequestDto> get copyWith => _$CreateFieldRequestDtoCopyWithImpl<CreateFieldRequestDto>(this as CreateFieldRequestDto, _$identity);

  /// Serializes this CreateFieldRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFieldRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,name,areaHectares,description,active);

@override
String toString() {
  return 'CreateFieldRequestDto(farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateFieldRequestDtoCopyWith<$Res>  {
  factory $CreateFieldRequestDtoCopyWith(CreateFieldRequestDto value, $Res Function(CreateFieldRequestDto) _then) = _$CreateFieldRequestDtoCopyWithImpl;
@useResult
$Res call({
 String farmId, String name,@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) double areaHectares, String? description, bool active
});




}
/// @nodoc
class _$CreateFieldRequestDtoCopyWithImpl<$Res>
    implements $CreateFieldRequestDtoCopyWith<$Res> {
  _$CreateFieldRequestDtoCopyWithImpl(this._self, this._then);

  final CreateFieldRequestDto _self;
  final $Res Function(CreateFieldRequestDto) _then;

/// Create a copy of CreateFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,areaHectares: null == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateFieldRequestDto].
extension CreateFieldRequestDtoPatterns on CreateFieldRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFieldRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFieldRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFieldRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateFieldRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFieldRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFieldRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  String name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)  double areaHectares,  String? description,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFieldRequestDto() when $default != null:
return $default(_that.farmId,_that.name,_that.areaHectares,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  String name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)  double areaHectares,  String? description,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateFieldRequestDto():
return $default(_that.farmId,_that.name,_that.areaHectares,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  String name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)  double areaHectares,  String? description,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateFieldRequestDto() when $default != null:
return $default(_that.farmId,_that.name,_that.areaHectares,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFieldRequestDto implements CreateFieldRequestDto {
  const _CreateFieldRequestDto({required this.farmId, required this.name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) required this.areaHectares, this.description, this.active = true});
  factory _CreateFieldRequestDto.fromJson(Map<String, dynamic> json) => _$CreateFieldRequestDtoFromJson(json);

@override final  String farmId;
@override final  String name;
@override@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) final  double areaHectares;
@override final  String? description;
@override@JsonKey() final  bool active;

/// Create a copy of CreateFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFieldRequestDtoCopyWith<_CreateFieldRequestDto> get copyWith => __$CreateFieldRequestDtoCopyWithImpl<_CreateFieldRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFieldRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFieldRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,name,areaHectares,description,active);

@override
String toString() {
  return 'CreateFieldRequestDto(farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateFieldRequestDtoCopyWith<$Res> implements $CreateFieldRequestDtoCopyWith<$Res> {
  factory _$CreateFieldRequestDtoCopyWith(_CreateFieldRequestDto value, $Res Function(_CreateFieldRequestDto) _then) = __$CreateFieldRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String name,@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) double areaHectares, String? description, bool active
});




}
/// @nodoc
class __$CreateFieldRequestDtoCopyWithImpl<$Res>
    implements _$CreateFieldRequestDtoCopyWith<$Res> {
  __$CreateFieldRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateFieldRequestDto _self;
  final $Res Function(_CreateFieldRequestDto) _then;

/// Create a copy of CreateFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,Object? active = null,}) {
  return _then(_CreateFieldRequestDto(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,areaHectares: null == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateFieldRequestDto {

 String get farmId; String get name;@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) double get areaHectares; String? get description; bool get active;
/// Create a copy of UpdateFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFieldRequestDtoCopyWith<UpdateFieldRequestDto> get copyWith => _$UpdateFieldRequestDtoCopyWithImpl<UpdateFieldRequestDto>(this as UpdateFieldRequestDto, _$identity);

  /// Serializes this UpdateFieldRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFieldRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,name,areaHectares,description,active);

@override
String toString() {
  return 'UpdateFieldRequestDto(farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateFieldRequestDtoCopyWith<$Res>  {
  factory $UpdateFieldRequestDtoCopyWith(UpdateFieldRequestDto value, $Res Function(UpdateFieldRequestDto) _then) = _$UpdateFieldRequestDtoCopyWithImpl;
@useResult
$Res call({
 String farmId, String name,@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) double areaHectares, String? description, bool active
});




}
/// @nodoc
class _$UpdateFieldRequestDtoCopyWithImpl<$Res>
    implements $UpdateFieldRequestDtoCopyWith<$Res> {
  _$UpdateFieldRequestDtoCopyWithImpl(this._self, this._then);

  final UpdateFieldRequestDto _self;
  final $Res Function(UpdateFieldRequestDto) _then;

/// Create a copy of UpdateFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,areaHectares: null == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFieldRequestDto].
extension UpdateFieldRequestDtoPatterns on UpdateFieldRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFieldRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFieldRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFieldRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFieldRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  String name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)  double areaHectares,  String? description,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFieldRequestDto() when $default != null:
return $default(_that.farmId,_that.name,_that.areaHectares,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  String name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)  double areaHectares,  String? description,  bool active)  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldRequestDto():
return $default(_that.farmId,_that.name,_that.areaHectares,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  String name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble)  double areaHectares,  String? description,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldRequestDto() when $default != null:
return $default(_that.farmId,_that.name,_that.areaHectares,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFieldRequestDto implements UpdateFieldRequestDto {
  const _UpdateFieldRequestDto({required this.farmId, required this.name, @JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) required this.areaHectares, this.description, required this.active});
  factory _UpdateFieldRequestDto.fromJson(Map<String, dynamic> json) => _$UpdateFieldRequestDtoFromJson(json);

@override final  String farmId;
@override final  String name;
@override@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) final  double areaHectares;
@override final  String? description;
@override final  bool active;

/// Create a copy of UpdateFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFieldRequestDtoCopyWith<_UpdateFieldRequestDto> get copyWith => __$UpdateFieldRequestDtoCopyWithImpl<_UpdateFieldRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFieldRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFieldRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,name,areaHectares,description,active);

@override
String toString() {
  return 'UpdateFieldRequestDto(farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateFieldRequestDtoCopyWith<$Res> implements $UpdateFieldRequestDtoCopyWith<$Res> {
  factory _$UpdateFieldRequestDtoCopyWith(_UpdateFieldRequestDto value, $Res Function(_UpdateFieldRequestDto) _then) = __$UpdateFieldRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String name,@JsonKey(fromJson: _parseFlexibleDouble, toJson: _parseFlexibleDouble) double areaHectares, String? description, bool active
});




}
/// @nodoc
class __$UpdateFieldRequestDtoCopyWithImpl<$Res>
    implements _$UpdateFieldRequestDtoCopyWith<$Res> {
  __$UpdateFieldRequestDtoCopyWithImpl(this._self, this._then);

  final _UpdateFieldRequestDto _self;
  final $Res Function(_UpdateFieldRequestDto) _then;

/// Create a copy of UpdateFieldRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,Object? active = null,}) {
  return _then(_UpdateFieldRequestDto(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,areaHectares: null == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
