// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryLocationDto {

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get farmId; String get name; String? get description;
/// Create a copy of InventoryLocationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryLocationDtoCopyWith<InventoryLocationDto> get copyWith => _$InventoryLocationDtoCopyWithImpl<InventoryLocationDto>(this as InventoryLocationDto, _$identity);

  /// Serializes this InventoryLocationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryLocationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,name,description);

@override
String toString() {
  return 'InventoryLocationDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $InventoryLocationDtoCopyWith<$Res>  {
  factory $InventoryLocationDtoCopyWith(InventoryLocationDto value, $Res Function(InventoryLocationDto) _then) = _$InventoryLocationDtoCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String name, String? description
});




}
/// @nodoc
class _$InventoryLocationDtoCopyWithImpl<$Res>
    implements $InventoryLocationDtoCopyWith<$Res> {
  _$InventoryLocationDtoCopyWithImpl(this._self, this._then);

  final InventoryLocationDto _self;
  final $Res Function(InventoryLocationDto) _then;

/// Create a copy of InventoryLocationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? name = null,Object? description = freezed,}) {
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
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryLocationDto].
extension InventoryLocationDtoPatterns on InventoryLocationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryLocationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryLocationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryLocationDto value)  $default,){
final _that = this;
switch (_that) {
case _InventoryLocationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryLocationDto value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryLocationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String name,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryLocationDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String name,  String? description)  $default,) {final _that = this;
switch (_that) {
case _InventoryLocationDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String name,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _InventoryLocationDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryLocationDto implements InventoryLocationDto {
  const _InventoryLocationDto({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.farmId, required this.name, this.description});
  factory _InventoryLocationDto.fromJson(Map<String, dynamic> json) => _$InventoryLocationDtoFromJson(json);

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
@override final  String? description;

/// Create a copy of InventoryLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryLocationDtoCopyWith<_InventoryLocationDto> get copyWith => __$InventoryLocationDtoCopyWithImpl<_InventoryLocationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryLocationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryLocationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,name,description);

@override
String toString() {
  return 'InventoryLocationDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$InventoryLocationDtoCopyWith<$Res> implements $InventoryLocationDtoCopyWith<$Res> {
  factory _$InventoryLocationDtoCopyWith(_InventoryLocationDto value, $Res Function(_InventoryLocationDto) _then) = __$InventoryLocationDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String name, String? description
});




}
/// @nodoc
class __$InventoryLocationDtoCopyWithImpl<$Res>
    implements _$InventoryLocationDtoCopyWith<$Res> {
  __$InventoryLocationDtoCopyWithImpl(this._self, this._then);

  final _InventoryLocationDto _self;
  final $Res Function(_InventoryLocationDto) _then;

/// Create a copy of InventoryLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? name = null,Object? description = freezed,}) {
  return _then(_InventoryLocationDto(
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
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateInventoryLocationRequestDto {

 String get farmId; String get name; String? get description; bool get active;
/// Create a copy of CreateInventoryLocationRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateInventoryLocationRequestDtoCopyWith<CreateInventoryLocationRequestDto> get copyWith => _$CreateInventoryLocationRequestDtoCopyWithImpl<CreateInventoryLocationRequestDto>(this as CreateInventoryLocationRequestDto, _$identity);

  /// Serializes this CreateInventoryLocationRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateInventoryLocationRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,name,description,active);

@override
String toString() {
  return 'CreateInventoryLocationRequestDto(farmId: $farmId, name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateInventoryLocationRequestDtoCopyWith<$Res>  {
  factory $CreateInventoryLocationRequestDtoCopyWith(CreateInventoryLocationRequestDto value, $Res Function(CreateInventoryLocationRequestDto) _then) = _$CreateInventoryLocationRequestDtoCopyWithImpl;
@useResult
$Res call({
 String farmId, String name, String? description, bool active
});




}
/// @nodoc
class _$CreateInventoryLocationRequestDtoCopyWithImpl<$Res>
    implements $CreateInventoryLocationRequestDtoCopyWith<$Res> {
  _$CreateInventoryLocationRequestDtoCopyWithImpl(this._self, this._then);

  final CreateInventoryLocationRequestDto _self;
  final $Res Function(CreateInventoryLocationRequestDto) _then;

/// Create a copy of CreateInventoryLocationRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? farmId = null,Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateInventoryLocationRequestDto].
extension CreateInventoryLocationRequestDtoPatterns on CreateInventoryLocationRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateInventoryLocationRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateInventoryLocationRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateInventoryLocationRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateInventoryLocationRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateInventoryLocationRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateInventoryLocationRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  String name,  String? description,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateInventoryLocationRequestDto() when $default != null:
return $default(_that.farmId,_that.name,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  String name,  String? description,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateInventoryLocationRequestDto():
return $default(_that.farmId,_that.name,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  String name,  String? description,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateInventoryLocationRequestDto() when $default != null:
return $default(_that.farmId,_that.name,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateInventoryLocationRequestDto implements CreateInventoryLocationRequestDto {
  const _CreateInventoryLocationRequestDto({required this.farmId, required this.name, this.description, this.active = true});
  factory _CreateInventoryLocationRequestDto.fromJson(Map<String, dynamic> json) => _$CreateInventoryLocationRequestDtoFromJson(json);

@override final  String farmId;
@override final  String name;
@override final  String? description;
@override@JsonKey() final  bool active;

/// Create a copy of CreateInventoryLocationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateInventoryLocationRequestDtoCopyWith<_CreateInventoryLocationRequestDto> get copyWith => __$CreateInventoryLocationRequestDtoCopyWithImpl<_CreateInventoryLocationRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateInventoryLocationRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateInventoryLocationRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,name,description,active);

@override
String toString() {
  return 'CreateInventoryLocationRequestDto(farmId: $farmId, name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateInventoryLocationRequestDtoCopyWith<$Res> implements $CreateInventoryLocationRequestDtoCopyWith<$Res> {
  factory _$CreateInventoryLocationRequestDtoCopyWith(_CreateInventoryLocationRequestDto value, $Res Function(_CreateInventoryLocationRequestDto) _then) = __$CreateInventoryLocationRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String name, String? description, bool active
});




}
/// @nodoc
class __$CreateInventoryLocationRequestDtoCopyWithImpl<$Res>
    implements _$CreateInventoryLocationRequestDtoCopyWith<$Res> {
  __$CreateInventoryLocationRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateInventoryLocationRequestDto _self;
  final $Res Function(_CreateInventoryLocationRequestDto) _then;

/// Create a copy of CreateInventoryLocationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_CreateInventoryLocationRequestDto(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$InventoryBalanceDto {

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get farmId; String get inventoryLocationId; String get productId;@DoubleConverter() double get quantity;@DoubleConverter() double get averageUnitCost; InventoryBalanceFarmDto? get farm; InventoryBalanceLocationDto? get inventoryLocation; InventoryBalanceProductDto? get product;
/// Create a copy of InventoryBalanceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryBalanceDtoCopyWith<InventoryBalanceDto> get copyWith => _$InventoryBalanceDtoCopyWithImpl<InventoryBalanceDto>(this as InventoryBalanceDto, _$identity);

  /// Serializes this InventoryBalanceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryBalanceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.farm, farm) || other.farm == farm)&&(identical(other.inventoryLocation, inventoryLocation) || other.inventoryLocation == inventoryLocation)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,inventoryLocationId,productId,quantity,averageUnitCost,farm,inventoryLocation,product);

@override
String toString() {
  return 'InventoryBalanceDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, quantity: $quantity, averageUnitCost: $averageUnitCost, farm: $farm, inventoryLocation: $inventoryLocation, product: $product)';
}


}

/// @nodoc
abstract mixin class $InventoryBalanceDtoCopyWith<$Res>  {
  factory $InventoryBalanceDtoCopyWith(InventoryBalanceDto value, $Res Function(InventoryBalanceDto) _then) = _$InventoryBalanceDtoCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String inventoryLocationId, String productId,@DoubleConverter() double quantity,@DoubleConverter() double averageUnitCost, InventoryBalanceFarmDto? farm, InventoryBalanceLocationDto? inventoryLocation, InventoryBalanceProductDto? product
});


$InventoryBalanceFarmDtoCopyWith<$Res>? get farm;$InventoryBalanceLocationDtoCopyWith<$Res>? get inventoryLocation;$InventoryBalanceProductDtoCopyWith<$Res>? get product;

}
/// @nodoc
class _$InventoryBalanceDtoCopyWithImpl<$Res>
    implements $InventoryBalanceDtoCopyWith<$Res> {
  _$InventoryBalanceDtoCopyWithImpl(this._self, this._then);

  final InventoryBalanceDto _self;
  final $Res Function(InventoryBalanceDto) _then;

/// Create a copy of InventoryBalanceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? quantity = null,Object? averageUnitCost = null,Object? farm = freezed,Object? inventoryLocation = freezed,Object? product = freezed,}) {
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
as String,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averageUnitCost: null == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double,farm: freezed == farm ? _self.farm : farm // ignore: cast_nullable_to_non_nullable
as InventoryBalanceFarmDto?,inventoryLocation: freezed == inventoryLocation ? _self.inventoryLocation : inventoryLocation // ignore: cast_nullable_to_non_nullable
as InventoryBalanceLocationDto?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as InventoryBalanceProductDto?,
  ));
}
/// Create a copy of InventoryBalanceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryBalanceFarmDtoCopyWith<$Res>? get farm {
    if (_self.farm == null) {
    return null;
  }

  return $InventoryBalanceFarmDtoCopyWith<$Res>(_self.farm!, (value) {
    return _then(_self.copyWith(farm: value));
  });
}/// Create a copy of InventoryBalanceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryBalanceLocationDtoCopyWith<$Res>? get inventoryLocation {
    if (_self.inventoryLocation == null) {
    return null;
  }

  return $InventoryBalanceLocationDtoCopyWith<$Res>(_self.inventoryLocation!, (value) {
    return _then(_self.copyWith(inventoryLocation: value));
  });
}/// Create a copy of InventoryBalanceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryBalanceProductDtoCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $InventoryBalanceProductDtoCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [InventoryBalanceDto].
extension InventoryBalanceDtoPatterns on InventoryBalanceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryBalanceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryBalanceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryBalanceDto value)  $default,){
final _that = this;
switch (_that) {
case _InventoryBalanceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryBalanceDto value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryBalanceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String inventoryLocationId,  String productId, @DoubleConverter()  double quantity, @DoubleConverter()  double averageUnitCost,  InventoryBalanceFarmDto? farm,  InventoryBalanceLocationDto? inventoryLocation,  InventoryBalanceProductDto? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryBalanceDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.inventoryLocationId,_that.productId,_that.quantity,_that.averageUnitCost,_that.farm,_that.inventoryLocation,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String inventoryLocationId,  String productId, @DoubleConverter()  double quantity, @DoubleConverter()  double averageUnitCost,  InventoryBalanceFarmDto? farm,  InventoryBalanceLocationDto? inventoryLocation,  InventoryBalanceProductDto? product)  $default,) {final _that = this;
switch (_that) {
case _InventoryBalanceDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.inventoryLocationId,_that.productId,_that.quantity,_that.averageUnitCost,_that.farm,_that.inventoryLocation,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String inventoryLocationId,  String productId, @DoubleConverter()  double quantity, @DoubleConverter()  double averageUnitCost,  InventoryBalanceFarmDto? farm,  InventoryBalanceLocationDto? inventoryLocation,  InventoryBalanceProductDto? product)?  $default,) {final _that = this;
switch (_that) {
case _InventoryBalanceDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.inventoryLocationId,_that.productId,_that.quantity,_that.averageUnitCost,_that.farm,_that.inventoryLocation,_that.product);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryBalanceDto implements InventoryBalanceDto {
  const _InventoryBalanceDto({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.farmId, required this.inventoryLocationId, required this.productId, @DoubleConverter() required this.quantity, @DoubleConverter() required this.averageUnitCost, this.farm, this.inventoryLocation, this.product});
  factory _InventoryBalanceDto.fromJson(Map<String, dynamic> json) => _$InventoryBalanceDtoFromJson(json);

@override final  String id;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String farmId;
@override final  String inventoryLocationId;
@override final  String productId;
@override@DoubleConverter() final  double quantity;
@override@DoubleConverter() final  double averageUnitCost;
@override final  InventoryBalanceFarmDto? farm;
@override final  InventoryBalanceLocationDto? inventoryLocation;
@override final  InventoryBalanceProductDto? product;

/// Create a copy of InventoryBalanceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryBalanceDtoCopyWith<_InventoryBalanceDto> get copyWith => __$InventoryBalanceDtoCopyWithImpl<_InventoryBalanceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryBalanceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryBalanceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.farm, farm) || other.farm == farm)&&(identical(other.inventoryLocation, inventoryLocation) || other.inventoryLocation == inventoryLocation)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,inventoryLocationId,productId,quantity,averageUnitCost,farm,inventoryLocation,product);

@override
String toString() {
  return 'InventoryBalanceDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, quantity: $quantity, averageUnitCost: $averageUnitCost, farm: $farm, inventoryLocation: $inventoryLocation, product: $product)';
}


}

/// @nodoc
abstract mixin class _$InventoryBalanceDtoCopyWith<$Res> implements $InventoryBalanceDtoCopyWith<$Res> {
  factory _$InventoryBalanceDtoCopyWith(_InventoryBalanceDto value, $Res Function(_InventoryBalanceDto) _then) = __$InventoryBalanceDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String inventoryLocationId, String productId,@DoubleConverter() double quantity,@DoubleConverter() double averageUnitCost, InventoryBalanceFarmDto? farm, InventoryBalanceLocationDto? inventoryLocation, InventoryBalanceProductDto? product
});


@override $InventoryBalanceFarmDtoCopyWith<$Res>? get farm;@override $InventoryBalanceLocationDtoCopyWith<$Res>? get inventoryLocation;@override $InventoryBalanceProductDtoCopyWith<$Res>? get product;

}
/// @nodoc
class __$InventoryBalanceDtoCopyWithImpl<$Res>
    implements _$InventoryBalanceDtoCopyWith<$Res> {
  __$InventoryBalanceDtoCopyWithImpl(this._self, this._then);

  final _InventoryBalanceDto _self;
  final $Res Function(_InventoryBalanceDto) _then;

/// Create a copy of InventoryBalanceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? quantity = null,Object? averageUnitCost = null,Object? farm = freezed,Object? inventoryLocation = freezed,Object? product = freezed,}) {
  return _then(_InventoryBalanceDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averageUnitCost: null == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double,farm: freezed == farm ? _self.farm : farm // ignore: cast_nullable_to_non_nullable
as InventoryBalanceFarmDto?,inventoryLocation: freezed == inventoryLocation ? _self.inventoryLocation : inventoryLocation // ignore: cast_nullable_to_non_nullable
as InventoryBalanceLocationDto?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as InventoryBalanceProductDto?,
  ));
}

/// Create a copy of InventoryBalanceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryBalanceFarmDtoCopyWith<$Res>? get farm {
    if (_self.farm == null) {
    return null;
  }

  return $InventoryBalanceFarmDtoCopyWith<$Res>(_self.farm!, (value) {
    return _then(_self.copyWith(farm: value));
  });
}/// Create a copy of InventoryBalanceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryBalanceLocationDtoCopyWith<$Res>? get inventoryLocation {
    if (_self.inventoryLocation == null) {
    return null;
  }

  return $InventoryBalanceLocationDtoCopyWith<$Res>(_self.inventoryLocation!, (value) {
    return _then(_self.copyWith(inventoryLocation: value));
  });
}/// Create a copy of InventoryBalanceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryBalanceProductDtoCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $InventoryBalanceProductDtoCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$InventoryBalanceFarmDto {

 String get id; String get name;
/// Create a copy of InventoryBalanceFarmDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryBalanceFarmDtoCopyWith<InventoryBalanceFarmDto> get copyWith => _$InventoryBalanceFarmDtoCopyWithImpl<InventoryBalanceFarmDto>(this as InventoryBalanceFarmDto, _$identity);

  /// Serializes this InventoryBalanceFarmDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryBalanceFarmDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'InventoryBalanceFarmDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $InventoryBalanceFarmDtoCopyWith<$Res>  {
  factory $InventoryBalanceFarmDtoCopyWith(InventoryBalanceFarmDto value, $Res Function(InventoryBalanceFarmDto) _then) = _$InventoryBalanceFarmDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$InventoryBalanceFarmDtoCopyWithImpl<$Res>
    implements $InventoryBalanceFarmDtoCopyWith<$Res> {
  _$InventoryBalanceFarmDtoCopyWithImpl(this._self, this._then);

  final InventoryBalanceFarmDto _self;
  final $Res Function(InventoryBalanceFarmDto) _then;

/// Create a copy of InventoryBalanceFarmDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryBalanceFarmDto].
extension InventoryBalanceFarmDtoPatterns on InventoryBalanceFarmDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryBalanceFarmDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryBalanceFarmDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryBalanceFarmDto value)  $default,){
final _that = this;
switch (_that) {
case _InventoryBalanceFarmDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryBalanceFarmDto value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryBalanceFarmDto() when $default != null:
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
case _InventoryBalanceFarmDto() when $default != null:
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
case _InventoryBalanceFarmDto():
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
case _InventoryBalanceFarmDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryBalanceFarmDto implements InventoryBalanceFarmDto {
  const _InventoryBalanceFarmDto({required this.id, required this.name});
  factory _InventoryBalanceFarmDto.fromJson(Map<String, dynamic> json) => _$InventoryBalanceFarmDtoFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of InventoryBalanceFarmDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryBalanceFarmDtoCopyWith<_InventoryBalanceFarmDto> get copyWith => __$InventoryBalanceFarmDtoCopyWithImpl<_InventoryBalanceFarmDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryBalanceFarmDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryBalanceFarmDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'InventoryBalanceFarmDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$InventoryBalanceFarmDtoCopyWith<$Res> implements $InventoryBalanceFarmDtoCopyWith<$Res> {
  factory _$InventoryBalanceFarmDtoCopyWith(_InventoryBalanceFarmDto value, $Res Function(_InventoryBalanceFarmDto) _then) = __$InventoryBalanceFarmDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$InventoryBalanceFarmDtoCopyWithImpl<$Res>
    implements _$InventoryBalanceFarmDtoCopyWith<$Res> {
  __$InventoryBalanceFarmDtoCopyWithImpl(this._self, this._then);

  final _InventoryBalanceFarmDto _self;
  final $Res Function(_InventoryBalanceFarmDto) _then;

/// Create a copy of InventoryBalanceFarmDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_InventoryBalanceFarmDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$InventoryBalanceLocationDto {

 String get id; String get name;
/// Create a copy of InventoryBalanceLocationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryBalanceLocationDtoCopyWith<InventoryBalanceLocationDto> get copyWith => _$InventoryBalanceLocationDtoCopyWithImpl<InventoryBalanceLocationDto>(this as InventoryBalanceLocationDto, _$identity);

  /// Serializes this InventoryBalanceLocationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryBalanceLocationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'InventoryBalanceLocationDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $InventoryBalanceLocationDtoCopyWith<$Res>  {
  factory $InventoryBalanceLocationDtoCopyWith(InventoryBalanceLocationDto value, $Res Function(InventoryBalanceLocationDto) _then) = _$InventoryBalanceLocationDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$InventoryBalanceLocationDtoCopyWithImpl<$Res>
    implements $InventoryBalanceLocationDtoCopyWith<$Res> {
  _$InventoryBalanceLocationDtoCopyWithImpl(this._self, this._then);

  final InventoryBalanceLocationDto _self;
  final $Res Function(InventoryBalanceLocationDto) _then;

/// Create a copy of InventoryBalanceLocationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryBalanceLocationDto].
extension InventoryBalanceLocationDtoPatterns on InventoryBalanceLocationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryBalanceLocationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryBalanceLocationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryBalanceLocationDto value)  $default,){
final _that = this;
switch (_that) {
case _InventoryBalanceLocationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryBalanceLocationDto value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryBalanceLocationDto() when $default != null:
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
case _InventoryBalanceLocationDto() when $default != null:
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
case _InventoryBalanceLocationDto():
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
case _InventoryBalanceLocationDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryBalanceLocationDto implements InventoryBalanceLocationDto {
  const _InventoryBalanceLocationDto({required this.id, required this.name});
  factory _InventoryBalanceLocationDto.fromJson(Map<String, dynamic> json) => _$InventoryBalanceLocationDtoFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of InventoryBalanceLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryBalanceLocationDtoCopyWith<_InventoryBalanceLocationDto> get copyWith => __$InventoryBalanceLocationDtoCopyWithImpl<_InventoryBalanceLocationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryBalanceLocationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryBalanceLocationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'InventoryBalanceLocationDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$InventoryBalanceLocationDtoCopyWith<$Res> implements $InventoryBalanceLocationDtoCopyWith<$Res> {
  factory _$InventoryBalanceLocationDtoCopyWith(_InventoryBalanceLocationDto value, $Res Function(_InventoryBalanceLocationDto) _then) = __$InventoryBalanceLocationDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$InventoryBalanceLocationDtoCopyWithImpl<$Res>
    implements _$InventoryBalanceLocationDtoCopyWith<$Res> {
  __$InventoryBalanceLocationDtoCopyWithImpl(this._self, this._then);

  final _InventoryBalanceLocationDto _self;
  final $Res Function(_InventoryBalanceLocationDto) _then;

/// Create a copy of InventoryBalanceLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_InventoryBalanceLocationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$InventoryBalanceProductDto {

 String get id; String get name; String? get code;
/// Create a copy of InventoryBalanceProductDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryBalanceProductDtoCopyWith<InventoryBalanceProductDto> get copyWith => _$InventoryBalanceProductDtoCopyWithImpl<InventoryBalanceProductDto>(this as InventoryBalanceProductDto, _$identity);

  /// Serializes this InventoryBalanceProductDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryBalanceProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code);

@override
String toString() {
  return 'InventoryBalanceProductDto(id: $id, name: $name, code: $code)';
}


}

/// @nodoc
abstract mixin class $InventoryBalanceProductDtoCopyWith<$Res>  {
  factory $InventoryBalanceProductDtoCopyWith(InventoryBalanceProductDto value, $Res Function(InventoryBalanceProductDto) _then) = _$InventoryBalanceProductDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? code
});




}
/// @nodoc
class _$InventoryBalanceProductDtoCopyWithImpl<$Res>
    implements $InventoryBalanceProductDtoCopyWith<$Res> {
  _$InventoryBalanceProductDtoCopyWithImpl(this._self, this._then);

  final InventoryBalanceProductDto _self;
  final $Res Function(InventoryBalanceProductDto) _then;

/// Create a copy of InventoryBalanceProductDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryBalanceProductDto].
extension InventoryBalanceProductDtoPatterns on InventoryBalanceProductDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryBalanceProductDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryBalanceProductDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryBalanceProductDto value)  $default,){
final _that = this;
switch (_that) {
case _InventoryBalanceProductDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryBalanceProductDto value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryBalanceProductDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryBalanceProductDto() when $default != null:
return $default(_that.id,_that.name,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? code)  $default,) {final _that = this;
switch (_that) {
case _InventoryBalanceProductDto():
return $default(_that.id,_that.name,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? code)?  $default,) {final _that = this;
switch (_that) {
case _InventoryBalanceProductDto() when $default != null:
return $default(_that.id,_that.name,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryBalanceProductDto implements InventoryBalanceProductDto {
  const _InventoryBalanceProductDto({required this.id, required this.name, this.code});
  factory _InventoryBalanceProductDto.fromJson(Map<String, dynamic> json) => _$InventoryBalanceProductDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? code;

/// Create a copy of InventoryBalanceProductDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryBalanceProductDtoCopyWith<_InventoryBalanceProductDto> get copyWith => __$InventoryBalanceProductDtoCopyWithImpl<_InventoryBalanceProductDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryBalanceProductDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryBalanceProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code);

@override
String toString() {
  return 'InventoryBalanceProductDto(id: $id, name: $name, code: $code)';
}


}

/// @nodoc
abstract mixin class _$InventoryBalanceProductDtoCopyWith<$Res> implements $InventoryBalanceProductDtoCopyWith<$Res> {
  factory _$InventoryBalanceProductDtoCopyWith(_InventoryBalanceProductDto value, $Res Function(_InventoryBalanceProductDto) _then) = __$InventoryBalanceProductDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? code
});




}
/// @nodoc
class __$InventoryBalanceProductDtoCopyWithImpl<$Res>
    implements _$InventoryBalanceProductDtoCopyWith<$Res> {
  __$InventoryBalanceProductDtoCopyWithImpl(this._self, this._then);

  final _InventoryBalanceProductDto _self;
  final $Res Function(_InventoryBalanceProductDto) _then;

/// Create a copy of InventoryBalanceProductDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = freezed,}) {
  return _then(_InventoryBalanceProductDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateInventoryBalanceRequestDto {

 String get farmId; String get inventoryLocationId; String get productId; double get quantity; double get averageUnitCost; DateTime? get occurredAt; String? get notes; bool get active;
/// Create a copy of CreateInventoryBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateInventoryBalanceRequestDtoCopyWith<CreateInventoryBalanceRequestDto> get copyWith => _$CreateInventoryBalanceRequestDtoCopyWithImpl<CreateInventoryBalanceRequestDto>(this as CreateInventoryBalanceRequestDto, _$identity);

  /// Serializes this CreateInventoryBalanceRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateInventoryBalanceRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,inventoryLocationId,productId,quantity,averageUnitCost,occurredAt,notes,active);

@override
String toString() {
  return 'CreateInventoryBalanceRequestDto(farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, quantity: $quantity, averageUnitCost: $averageUnitCost, occurredAt: $occurredAt, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateInventoryBalanceRequestDtoCopyWith<$Res>  {
  factory $CreateInventoryBalanceRequestDtoCopyWith(CreateInventoryBalanceRequestDto value, $Res Function(CreateInventoryBalanceRequestDto) _then) = _$CreateInventoryBalanceRequestDtoCopyWithImpl;
@useResult
$Res call({
 String farmId, String inventoryLocationId, String productId, double quantity, double averageUnitCost, DateTime? occurredAt, String? notes, bool active
});




}
/// @nodoc
class _$CreateInventoryBalanceRequestDtoCopyWithImpl<$Res>
    implements $CreateInventoryBalanceRequestDtoCopyWith<$Res> {
  _$CreateInventoryBalanceRequestDtoCopyWithImpl(this._self, this._then);

  final CreateInventoryBalanceRequestDto _self;
  final $Res Function(CreateInventoryBalanceRequestDto) _then;

/// Create a copy of CreateInventoryBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? quantity = null,Object? averageUnitCost = null,Object? occurredAt = freezed,Object? notes = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averageUnitCost: null == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateInventoryBalanceRequestDto].
extension CreateInventoryBalanceRequestDtoPatterns on CreateInventoryBalanceRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateInventoryBalanceRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateInventoryBalanceRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateInventoryBalanceRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateInventoryBalanceRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateInventoryBalanceRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateInventoryBalanceRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  String inventoryLocationId,  String productId,  double quantity,  double averageUnitCost,  DateTime? occurredAt,  String? notes,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateInventoryBalanceRequestDto() when $default != null:
return $default(_that.farmId,_that.inventoryLocationId,_that.productId,_that.quantity,_that.averageUnitCost,_that.occurredAt,_that.notes,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  String inventoryLocationId,  String productId,  double quantity,  double averageUnitCost,  DateTime? occurredAt,  String? notes,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateInventoryBalanceRequestDto():
return $default(_that.farmId,_that.inventoryLocationId,_that.productId,_that.quantity,_that.averageUnitCost,_that.occurredAt,_that.notes,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  String inventoryLocationId,  String productId,  double quantity,  double averageUnitCost,  DateTime? occurredAt,  String? notes,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateInventoryBalanceRequestDto() when $default != null:
return $default(_that.farmId,_that.inventoryLocationId,_that.productId,_that.quantity,_that.averageUnitCost,_that.occurredAt,_that.notes,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateInventoryBalanceRequestDto implements CreateInventoryBalanceRequestDto {
  const _CreateInventoryBalanceRequestDto({required this.farmId, required this.inventoryLocationId, required this.productId, required this.quantity, required this.averageUnitCost, this.occurredAt, this.notes, this.active = true});
  factory _CreateInventoryBalanceRequestDto.fromJson(Map<String, dynamic> json) => _$CreateInventoryBalanceRequestDtoFromJson(json);

@override final  String farmId;
@override final  String inventoryLocationId;
@override final  String productId;
@override final  double quantity;
@override final  double averageUnitCost;
@override final  DateTime? occurredAt;
@override final  String? notes;
@override@JsonKey() final  bool active;

/// Create a copy of CreateInventoryBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateInventoryBalanceRequestDtoCopyWith<_CreateInventoryBalanceRequestDto> get copyWith => __$CreateInventoryBalanceRequestDtoCopyWithImpl<_CreateInventoryBalanceRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateInventoryBalanceRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateInventoryBalanceRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,inventoryLocationId,productId,quantity,averageUnitCost,occurredAt,notes,active);

@override
String toString() {
  return 'CreateInventoryBalanceRequestDto(farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, quantity: $quantity, averageUnitCost: $averageUnitCost, occurredAt: $occurredAt, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateInventoryBalanceRequestDtoCopyWith<$Res> implements $CreateInventoryBalanceRequestDtoCopyWith<$Res> {
  factory _$CreateInventoryBalanceRequestDtoCopyWith(_CreateInventoryBalanceRequestDto value, $Res Function(_CreateInventoryBalanceRequestDto) _then) = __$CreateInventoryBalanceRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String inventoryLocationId, String productId, double quantity, double averageUnitCost, DateTime? occurredAt, String? notes, bool active
});




}
/// @nodoc
class __$CreateInventoryBalanceRequestDtoCopyWithImpl<$Res>
    implements _$CreateInventoryBalanceRequestDtoCopyWith<$Res> {
  __$CreateInventoryBalanceRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateInventoryBalanceRequestDto _self;
  final $Res Function(_CreateInventoryBalanceRequestDto) _then;

/// Create a copy of CreateInventoryBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? quantity = null,Object? averageUnitCost = null,Object? occurredAt = freezed,Object? notes = freezed,Object? active = null,}) {
  return _then(_CreateInventoryBalanceRequestDto(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averageUnitCost: null == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateInventoryBalanceRequestDto {

 double? get quantity; double? get averageUnitCost; String? get notes;
/// Create a copy of UpdateInventoryBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateInventoryBalanceRequestDtoCopyWith<UpdateInventoryBalanceRequestDto> get copyWith => _$UpdateInventoryBalanceRequestDtoCopyWithImpl<UpdateInventoryBalanceRequestDto>(this as UpdateInventoryBalanceRequestDto, _$identity);

  /// Serializes this UpdateInventoryBalanceRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateInventoryBalanceRequestDto&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity,averageUnitCost,notes);

@override
String toString() {
  return 'UpdateInventoryBalanceRequestDto(quantity: $quantity, averageUnitCost: $averageUnitCost, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $UpdateInventoryBalanceRequestDtoCopyWith<$Res>  {
  factory $UpdateInventoryBalanceRequestDtoCopyWith(UpdateInventoryBalanceRequestDto value, $Res Function(UpdateInventoryBalanceRequestDto) _then) = _$UpdateInventoryBalanceRequestDtoCopyWithImpl;
@useResult
$Res call({
 double? quantity, double? averageUnitCost, String? notes
});




}
/// @nodoc
class _$UpdateInventoryBalanceRequestDtoCopyWithImpl<$Res>
    implements $UpdateInventoryBalanceRequestDtoCopyWith<$Res> {
  _$UpdateInventoryBalanceRequestDtoCopyWithImpl(this._self, this._then);

  final UpdateInventoryBalanceRequestDto _self;
  final $Res Function(UpdateInventoryBalanceRequestDto) _then;

/// Create a copy of UpdateInventoryBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = freezed,Object? averageUnitCost = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,averageUnitCost: freezed == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateInventoryBalanceRequestDto].
extension UpdateInventoryBalanceRequestDtoPatterns on UpdateInventoryBalanceRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateInventoryBalanceRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateInventoryBalanceRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateInventoryBalanceRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateInventoryBalanceRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateInventoryBalanceRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateInventoryBalanceRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? quantity,  double? averageUnitCost,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateInventoryBalanceRequestDto() when $default != null:
return $default(_that.quantity,_that.averageUnitCost,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? quantity,  double? averageUnitCost,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _UpdateInventoryBalanceRequestDto():
return $default(_that.quantity,_that.averageUnitCost,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? quantity,  double? averageUnitCost,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _UpdateInventoryBalanceRequestDto() when $default != null:
return $default(_that.quantity,_that.averageUnitCost,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateInventoryBalanceRequestDto implements UpdateInventoryBalanceRequestDto {
  const _UpdateInventoryBalanceRequestDto({this.quantity, this.averageUnitCost, this.notes});
  factory _UpdateInventoryBalanceRequestDto.fromJson(Map<String, dynamic> json) => _$UpdateInventoryBalanceRequestDtoFromJson(json);

@override final  double? quantity;
@override final  double? averageUnitCost;
@override final  String? notes;

/// Create a copy of UpdateInventoryBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInventoryBalanceRequestDtoCopyWith<_UpdateInventoryBalanceRequestDto> get copyWith => __$UpdateInventoryBalanceRequestDtoCopyWithImpl<_UpdateInventoryBalanceRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateInventoryBalanceRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInventoryBalanceRequestDto&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity,averageUnitCost,notes);

@override
String toString() {
  return 'UpdateInventoryBalanceRequestDto(quantity: $quantity, averageUnitCost: $averageUnitCost, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$UpdateInventoryBalanceRequestDtoCopyWith<$Res> implements $UpdateInventoryBalanceRequestDtoCopyWith<$Res> {
  factory _$UpdateInventoryBalanceRequestDtoCopyWith(_UpdateInventoryBalanceRequestDto value, $Res Function(_UpdateInventoryBalanceRequestDto) _then) = __$UpdateInventoryBalanceRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 double? quantity, double? averageUnitCost, String? notes
});




}
/// @nodoc
class __$UpdateInventoryBalanceRequestDtoCopyWithImpl<$Res>
    implements _$UpdateInventoryBalanceRequestDtoCopyWith<$Res> {
  __$UpdateInventoryBalanceRequestDtoCopyWithImpl(this._self, this._then);

  final _UpdateInventoryBalanceRequestDto _self;
  final $Res Function(_UpdateInventoryBalanceRequestDto) _then;

/// Create a copy of UpdateInventoryBalanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantity = freezed,Object? averageUnitCost = freezed,Object? notes = freezed,}) {
  return _then(_UpdateInventoryBalanceRequestDto(
quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,averageUnitCost: freezed == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InventoryMovementDto {

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get farmId; String get inventoryLocationId; String get productId; MovementType get movementType; double get quantity; double get unitCost; double get totalCost; DateTime get occurredAt; String? get referenceType; String? get referenceId; String? get notes;
/// Create a copy of InventoryMovementDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryMovementDtoCopyWith<InventoryMovementDto> get copyWith => _$InventoryMovementDtoCopyWithImpl<InventoryMovementDto>(this as InventoryMovementDto, _$identity);

  /// Serializes this InventoryMovementDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryMovementDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.movementType, movementType) || other.movementType == movementType)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitCost, unitCost) || other.unitCost == unitCost)&&(identical(other.totalCost, totalCost) || other.totalCost == totalCost)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,inventoryLocationId,productId,movementType,quantity,unitCost,totalCost,occurredAt,referenceType,referenceId,notes]);

@override
String toString() {
  return 'InventoryMovementDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, movementType: $movementType, quantity: $quantity, unitCost: $unitCost, totalCost: $totalCost, occurredAt: $occurredAt, referenceType: $referenceType, referenceId: $referenceId, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $InventoryMovementDtoCopyWith<$Res>  {
  factory $InventoryMovementDtoCopyWith(InventoryMovementDto value, $Res Function(InventoryMovementDto) _then) = _$InventoryMovementDtoCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String inventoryLocationId, String productId, MovementType movementType, double quantity, double unitCost, double totalCost, DateTime occurredAt, String? referenceType, String? referenceId, String? notes
});




}
/// @nodoc
class _$InventoryMovementDtoCopyWithImpl<$Res>
    implements $InventoryMovementDtoCopyWith<$Res> {
  _$InventoryMovementDtoCopyWithImpl(this._self, this._then);

  final InventoryMovementDto _self;
  final $Res Function(InventoryMovementDto) _then;

/// Create a copy of InventoryMovementDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? movementType = null,Object? quantity = null,Object? unitCost = null,Object? totalCost = null,Object? occurredAt = null,Object? referenceType = freezed,Object? referenceId = freezed,Object? notes = freezed,}) {
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
as String,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,movementType: null == movementType ? _self.movementType : movementType // ignore: cast_nullable_to_non_nullable
as MovementType,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unitCost: null == unitCost ? _self.unitCost : unitCost // ignore: cast_nullable_to_non_nullable
as double,totalCost: null == totalCost ? _self.totalCost : totalCost // ignore: cast_nullable_to_non_nullable
as double,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,referenceType: freezed == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryMovementDto].
extension InventoryMovementDtoPatterns on InventoryMovementDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryMovementDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryMovementDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryMovementDto value)  $default,){
final _that = this;
switch (_that) {
case _InventoryMovementDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryMovementDto value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryMovementDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String inventoryLocationId,  String productId,  MovementType movementType,  double quantity,  double unitCost,  double totalCost,  DateTime occurredAt,  String? referenceType,  String? referenceId,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryMovementDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.inventoryLocationId,_that.productId,_that.movementType,_that.quantity,_that.unitCost,_that.totalCost,_that.occurredAt,_that.referenceType,_that.referenceId,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String inventoryLocationId,  String productId,  MovementType movementType,  double quantity,  double unitCost,  double totalCost,  DateTime occurredAt,  String? referenceType,  String? referenceId,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _InventoryMovementDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.inventoryLocationId,_that.productId,_that.movementType,_that.quantity,_that.unitCost,_that.totalCost,_that.occurredAt,_that.referenceType,_that.referenceId,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String inventoryLocationId,  String productId,  MovementType movementType,  double quantity,  double unitCost,  double totalCost,  DateTime occurredAt,  String? referenceType,  String? referenceId,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _InventoryMovementDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.inventoryLocationId,_that.productId,_that.movementType,_that.quantity,_that.unitCost,_that.totalCost,_that.occurredAt,_that.referenceType,_that.referenceId,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryMovementDto implements InventoryMovementDto {
  const _InventoryMovementDto({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.farmId, required this.inventoryLocationId, required this.productId, required this.movementType, required this.quantity, required this.unitCost, required this.totalCost, required this.occurredAt, this.referenceType, this.referenceId, this.notes});
  factory _InventoryMovementDto.fromJson(Map<String, dynamic> json) => _$InventoryMovementDtoFromJson(json);

@override final  String id;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String farmId;
@override final  String inventoryLocationId;
@override final  String productId;
@override final  MovementType movementType;
@override final  double quantity;
@override final  double unitCost;
@override final  double totalCost;
@override final  DateTime occurredAt;
@override final  String? referenceType;
@override final  String? referenceId;
@override final  String? notes;

/// Create a copy of InventoryMovementDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryMovementDtoCopyWith<_InventoryMovementDto> get copyWith => __$InventoryMovementDtoCopyWithImpl<_InventoryMovementDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryMovementDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryMovementDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.movementType, movementType) || other.movementType == movementType)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitCost, unitCost) || other.unitCost == unitCost)&&(identical(other.totalCost, totalCost) || other.totalCost == totalCost)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,inventoryLocationId,productId,movementType,quantity,unitCost,totalCost,occurredAt,referenceType,referenceId,notes]);

@override
String toString() {
  return 'InventoryMovementDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, movementType: $movementType, quantity: $quantity, unitCost: $unitCost, totalCost: $totalCost, occurredAt: $occurredAt, referenceType: $referenceType, referenceId: $referenceId, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$InventoryMovementDtoCopyWith<$Res> implements $InventoryMovementDtoCopyWith<$Res> {
  factory _$InventoryMovementDtoCopyWith(_InventoryMovementDto value, $Res Function(_InventoryMovementDto) _then) = __$InventoryMovementDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String inventoryLocationId, String productId, MovementType movementType, double quantity, double unitCost, double totalCost, DateTime occurredAt, String? referenceType, String? referenceId, String? notes
});




}
/// @nodoc
class __$InventoryMovementDtoCopyWithImpl<$Res>
    implements _$InventoryMovementDtoCopyWith<$Res> {
  __$InventoryMovementDtoCopyWithImpl(this._self, this._then);

  final _InventoryMovementDto _self;
  final $Res Function(_InventoryMovementDto) _then;

/// Create a copy of InventoryMovementDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? movementType = null,Object? quantity = null,Object? unitCost = null,Object? totalCost = null,Object? occurredAt = null,Object? referenceType = freezed,Object? referenceId = freezed,Object? notes = freezed,}) {
  return _then(_InventoryMovementDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,movementType: null == movementType ? _self.movementType : movementType // ignore: cast_nullable_to_non_nullable
as MovementType,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unitCost: null == unitCost ? _self.unitCost : unitCost // ignore: cast_nullable_to_non_nullable
as double,totalCost: null == totalCost ? _self.totalCost : totalCost // ignore: cast_nullable_to_non_nullable
as double,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,referenceType: freezed == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
