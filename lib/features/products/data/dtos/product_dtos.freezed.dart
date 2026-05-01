// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDto {

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get name; String get code; String get category; String get unitOfMeasureId; String? get description; String? get activeIngredient; List<ProductStockByLocationDto> get stockByLocation;@DoubleFromAnyConverter() double get totalStockQuantity;
/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDtoCopyWith<ProductDto> get copyWith => _$ProductDtoCopyWithImpl<ProductDto>(this as ProductDto, _$identity);

  /// Serializes this ProductDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other.stockByLocation, stockByLocation)&&(identical(other.totalStockQuantity, totalStockQuantity) || other.totalStockQuantity == totalStockQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(stockByLocation),totalStockQuantity);

@override
String toString() {
  return 'ProductDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, totalStockQuantity: $totalStockQuantity)';
}


}

/// @nodoc
abstract mixin class $ProductDtoCopyWith<$Res>  {
  factory $ProductDtoCopyWith(ProductDto value, $Res Function(ProductDto) _then) = _$ProductDtoCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<ProductStockByLocationDto> stockByLocation,@DoubleFromAnyConverter() double totalStockQuantity
});




}
/// @nodoc
class _$ProductDtoCopyWithImpl<$Res>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._self, this._then);

  final ProductDto _self;
  final $Res Function(ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? totalStockQuantity = null,}) {
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
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self.stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<ProductStockByLocationDto>,totalStockQuantity: null == totalStockQuantity ? _self.totalStockQuantity : totalStockQuantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDto].
extension ProductDtoPatterns on ProductDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<ProductStockByLocationDto> stockByLocation, @DoubleFromAnyConverter()  double totalStockQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.totalStockQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<ProductStockByLocationDto> stockByLocation, @DoubleFromAnyConverter()  double totalStockQuantity)  $default,) {final _that = this;
switch (_that) {
case _ProductDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.totalStockQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<ProductStockByLocationDto> stockByLocation, @DoubleFromAnyConverter()  double totalStockQuantity)?  $default,) {final _that = this;
switch (_that) {
case _ProductDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.totalStockQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDto implements ProductDto {
  const _ProductDto({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.name, required this.code, required this.category, required this.unitOfMeasureId, this.description, this.activeIngredient, final  List<ProductStockByLocationDto> stockByLocation = const <ProductStockByLocationDto>[], @DoubleFromAnyConverter() this.totalStockQuantity = 0}): _stockByLocation = stockByLocation;
  factory _ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);

@override final  String id;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String name;
@override final  String code;
@override final  String category;
@override final  String unitOfMeasureId;
@override final  String? description;
@override final  String? activeIngredient;
 final  List<ProductStockByLocationDto> _stockByLocation;
@override@JsonKey() List<ProductStockByLocationDto> get stockByLocation {
  if (_stockByLocation is EqualUnmodifiableListView) return _stockByLocation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stockByLocation);
}

@override@JsonKey()@DoubleFromAnyConverter() final  double totalStockQuantity;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDtoCopyWith<_ProductDto> get copyWith => __$ProductDtoCopyWithImpl<_ProductDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other._stockByLocation, _stockByLocation)&&(identical(other.totalStockQuantity, totalStockQuantity) || other.totalStockQuantity == totalStockQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(_stockByLocation),totalStockQuantity);

@override
String toString() {
  return 'ProductDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, totalStockQuantity: $totalStockQuantity)';
}


}

/// @nodoc
abstract mixin class _$ProductDtoCopyWith<$Res> implements $ProductDtoCopyWith<$Res> {
  factory _$ProductDtoCopyWith(_ProductDto value, $Res Function(_ProductDto) _then) = __$ProductDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<ProductStockByLocationDto> stockByLocation,@DoubleFromAnyConverter() double totalStockQuantity
});




}
/// @nodoc
class __$ProductDtoCopyWithImpl<$Res>
    implements _$ProductDtoCopyWith<$Res> {
  __$ProductDtoCopyWithImpl(this._self, this._then);

  final _ProductDto _self;
  final $Res Function(_ProductDto) _then;

/// Create a copy of ProductDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? totalStockQuantity = null,}) {
  return _then(_ProductDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self._stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<ProductStockByLocationDto>,totalStockQuantity: null == totalStockQuantity ? _self.totalStockQuantity : totalStockQuantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$ProductStockByLocationDto {

 String get farmId; String? get farmName; String get inventoryLocationId; String? get inventoryLocationName;@DoubleFromAnyConverter() double get quantity;@DoubleFromAnyConverter() double get averageUnitCost;
/// Create a copy of ProductStockByLocationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStockByLocationDtoCopyWith<ProductStockByLocationDto> get copyWith => _$ProductStockByLocationDtoCopyWithImpl<ProductStockByLocationDto>(this as ProductStockByLocationDto, _$identity);

  /// Serializes this ProductStockByLocationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductStockByLocationDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.farmName, farmName) || other.farmName == farmName)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.inventoryLocationName, inventoryLocationName) || other.inventoryLocationName == inventoryLocationName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,farmName,inventoryLocationId,inventoryLocationName,quantity,averageUnitCost);

@override
String toString() {
  return 'ProductStockByLocationDto(farmId: $farmId, farmName: $farmName, inventoryLocationId: $inventoryLocationId, inventoryLocationName: $inventoryLocationName, quantity: $quantity, averageUnitCost: $averageUnitCost)';
}


}

/// @nodoc
abstract mixin class $ProductStockByLocationDtoCopyWith<$Res>  {
  factory $ProductStockByLocationDtoCopyWith(ProductStockByLocationDto value, $Res Function(ProductStockByLocationDto) _then) = _$ProductStockByLocationDtoCopyWithImpl;
@useResult
$Res call({
 String farmId, String? farmName, String inventoryLocationId, String? inventoryLocationName,@DoubleFromAnyConverter() double quantity,@DoubleFromAnyConverter() double averageUnitCost
});




}
/// @nodoc
class _$ProductStockByLocationDtoCopyWithImpl<$Res>
    implements $ProductStockByLocationDtoCopyWith<$Res> {
  _$ProductStockByLocationDtoCopyWithImpl(this._self, this._then);

  final ProductStockByLocationDto _self;
  final $Res Function(ProductStockByLocationDto) _then;

/// Create a copy of ProductStockByLocationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? farmId = null,Object? farmName = freezed,Object? inventoryLocationId = null,Object? inventoryLocationName = freezed,Object? quantity = null,Object? averageUnitCost = null,}) {
  return _then(_self.copyWith(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,farmName: freezed == farmName ? _self.farmName : farmName // ignore: cast_nullable_to_non_nullable
as String?,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationName: freezed == inventoryLocationName ? _self.inventoryLocationName : inventoryLocationName // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averageUnitCost: null == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductStockByLocationDto].
extension ProductStockByLocationDtoPatterns on ProductStockByLocationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductStockByLocationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductStockByLocationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductStockByLocationDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductStockByLocationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductStockByLocationDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductStockByLocationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  String? farmName,  String inventoryLocationId,  String? inventoryLocationName, @DoubleFromAnyConverter()  double quantity, @DoubleFromAnyConverter()  double averageUnitCost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductStockByLocationDto() when $default != null:
return $default(_that.farmId,_that.farmName,_that.inventoryLocationId,_that.inventoryLocationName,_that.quantity,_that.averageUnitCost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  String? farmName,  String inventoryLocationId,  String? inventoryLocationName, @DoubleFromAnyConverter()  double quantity, @DoubleFromAnyConverter()  double averageUnitCost)  $default,) {final _that = this;
switch (_that) {
case _ProductStockByLocationDto():
return $default(_that.farmId,_that.farmName,_that.inventoryLocationId,_that.inventoryLocationName,_that.quantity,_that.averageUnitCost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  String? farmName,  String inventoryLocationId,  String? inventoryLocationName, @DoubleFromAnyConverter()  double quantity, @DoubleFromAnyConverter()  double averageUnitCost)?  $default,) {final _that = this;
switch (_that) {
case _ProductStockByLocationDto() when $default != null:
return $default(_that.farmId,_that.farmName,_that.inventoryLocationId,_that.inventoryLocationName,_that.quantity,_that.averageUnitCost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductStockByLocationDto implements ProductStockByLocationDto {
  const _ProductStockByLocationDto({required this.farmId, this.farmName, required this.inventoryLocationId, this.inventoryLocationName, @DoubleFromAnyConverter() required this.quantity, @DoubleFromAnyConverter() required this.averageUnitCost});
  factory _ProductStockByLocationDto.fromJson(Map<String, dynamic> json) => _$ProductStockByLocationDtoFromJson(json);

@override final  String farmId;
@override final  String? farmName;
@override final  String inventoryLocationId;
@override final  String? inventoryLocationName;
@override@DoubleFromAnyConverter() final  double quantity;
@override@DoubleFromAnyConverter() final  double averageUnitCost;

/// Create a copy of ProductStockByLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStockByLocationDtoCopyWith<_ProductStockByLocationDto> get copyWith => __$ProductStockByLocationDtoCopyWithImpl<_ProductStockByLocationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductStockByLocationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductStockByLocationDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.farmName, farmName) || other.farmName == farmName)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.inventoryLocationName, inventoryLocationName) || other.inventoryLocationName == inventoryLocationName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,farmName,inventoryLocationId,inventoryLocationName,quantity,averageUnitCost);

@override
String toString() {
  return 'ProductStockByLocationDto(farmId: $farmId, farmName: $farmName, inventoryLocationId: $inventoryLocationId, inventoryLocationName: $inventoryLocationName, quantity: $quantity, averageUnitCost: $averageUnitCost)';
}


}

/// @nodoc
abstract mixin class _$ProductStockByLocationDtoCopyWith<$Res> implements $ProductStockByLocationDtoCopyWith<$Res> {
  factory _$ProductStockByLocationDtoCopyWith(_ProductStockByLocationDto value, $Res Function(_ProductStockByLocationDto) _then) = __$ProductStockByLocationDtoCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String? farmName, String inventoryLocationId, String? inventoryLocationName,@DoubleFromAnyConverter() double quantity,@DoubleFromAnyConverter() double averageUnitCost
});




}
/// @nodoc
class __$ProductStockByLocationDtoCopyWithImpl<$Res>
    implements _$ProductStockByLocationDtoCopyWith<$Res> {
  __$ProductStockByLocationDtoCopyWithImpl(this._self, this._then);

  final _ProductStockByLocationDto _self;
  final $Res Function(_ProductStockByLocationDto) _then;

/// Create a copy of ProductStockByLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? farmName = freezed,Object? inventoryLocationId = null,Object? inventoryLocationName = freezed,Object? quantity = null,Object? averageUnitCost = null,}) {
  return _then(_ProductStockByLocationDto(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,farmName: freezed == farmName ? _self.farmName : farmName // ignore: cast_nullable_to_non_nullable
as String?,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationName: freezed == inventoryLocationName ? _self.inventoryLocationName : inventoryLocationName // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averageUnitCost: null == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CreateProductStockByLocationRequestDto {

 String get farmId; String get inventoryLocationId; double get quantity; double get averageUnitCost; String? get notes;
/// Create a copy of CreateProductStockByLocationRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProductStockByLocationRequestDtoCopyWith<CreateProductStockByLocationRequestDto> get copyWith => _$CreateProductStockByLocationRequestDtoCopyWithImpl<CreateProductStockByLocationRequestDto>(this as CreateProductStockByLocationRequestDto, _$identity);

  /// Serializes this CreateProductStockByLocationRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductStockByLocationRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,inventoryLocationId,quantity,averageUnitCost,notes);

@override
String toString() {
  return 'CreateProductStockByLocationRequestDto(farmId: $farmId, inventoryLocationId: $inventoryLocationId, quantity: $quantity, averageUnitCost: $averageUnitCost, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $CreateProductStockByLocationRequestDtoCopyWith<$Res>  {
  factory $CreateProductStockByLocationRequestDtoCopyWith(CreateProductStockByLocationRequestDto value, $Res Function(CreateProductStockByLocationRequestDto) _then) = _$CreateProductStockByLocationRequestDtoCopyWithImpl;
@useResult
$Res call({
 String farmId, String inventoryLocationId, double quantity, double averageUnitCost, String? notes
});




}
/// @nodoc
class _$CreateProductStockByLocationRequestDtoCopyWithImpl<$Res>
    implements $CreateProductStockByLocationRequestDtoCopyWith<$Res> {
  _$CreateProductStockByLocationRequestDtoCopyWithImpl(this._self, this._then);

  final CreateProductStockByLocationRequestDto _self;
  final $Res Function(CreateProductStockByLocationRequestDto) _then;

/// Create a copy of CreateProductStockByLocationRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? farmId = null,Object? inventoryLocationId = null,Object? quantity = null,Object? averageUnitCost = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averageUnitCost: null == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateProductStockByLocationRequestDto].
extension CreateProductStockByLocationRequestDtoPatterns on CreateProductStockByLocationRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateProductStockByLocationRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateProductStockByLocationRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateProductStockByLocationRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateProductStockByLocationRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateProductStockByLocationRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateProductStockByLocationRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  String inventoryLocationId,  double quantity,  double averageUnitCost,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateProductStockByLocationRequestDto() when $default != null:
return $default(_that.farmId,_that.inventoryLocationId,_that.quantity,_that.averageUnitCost,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  String inventoryLocationId,  double quantity,  double averageUnitCost,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _CreateProductStockByLocationRequestDto():
return $default(_that.farmId,_that.inventoryLocationId,_that.quantity,_that.averageUnitCost,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  String inventoryLocationId,  double quantity,  double averageUnitCost,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _CreateProductStockByLocationRequestDto() when $default != null:
return $default(_that.farmId,_that.inventoryLocationId,_that.quantity,_that.averageUnitCost,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateProductStockByLocationRequestDto implements CreateProductStockByLocationRequestDto {
  const _CreateProductStockByLocationRequestDto({required this.farmId, required this.inventoryLocationId, required this.quantity, required this.averageUnitCost, this.notes});
  factory _CreateProductStockByLocationRequestDto.fromJson(Map<String, dynamic> json) => _$CreateProductStockByLocationRequestDtoFromJson(json);

@override final  String farmId;
@override final  String inventoryLocationId;
@override final  double quantity;
@override final  double averageUnitCost;
@override final  String? notes;

/// Create a copy of CreateProductStockByLocationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProductStockByLocationRequestDtoCopyWith<_CreateProductStockByLocationRequestDto> get copyWith => __$CreateProductStockByLocationRequestDtoCopyWithImpl<_CreateProductStockByLocationRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateProductStockByLocationRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProductStockByLocationRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,inventoryLocationId,quantity,averageUnitCost,notes);

@override
String toString() {
  return 'CreateProductStockByLocationRequestDto(farmId: $farmId, inventoryLocationId: $inventoryLocationId, quantity: $quantity, averageUnitCost: $averageUnitCost, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateProductStockByLocationRequestDtoCopyWith<$Res> implements $CreateProductStockByLocationRequestDtoCopyWith<$Res> {
  factory _$CreateProductStockByLocationRequestDtoCopyWith(_CreateProductStockByLocationRequestDto value, $Res Function(_CreateProductStockByLocationRequestDto) _then) = __$CreateProductStockByLocationRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String inventoryLocationId, double quantity, double averageUnitCost, String? notes
});




}
/// @nodoc
class __$CreateProductStockByLocationRequestDtoCopyWithImpl<$Res>
    implements _$CreateProductStockByLocationRequestDtoCopyWith<$Res> {
  __$CreateProductStockByLocationRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateProductStockByLocationRequestDto _self;
  final $Res Function(_CreateProductStockByLocationRequestDto) _then;

/// Create a copy of CreateProductStockByLocationRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? inventoryLocationId = null,Object? quantity = null,Object? averageUnitCost = null,Object? notes = freezed,}) {
  return _then(_CreateProductStockByLocationRequestDto(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averageUnitCost: null == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateProductRequestDto {

 String get name; String get code; String get category; String get unitOfMeasureId; String? get description; String? get activeIngredient; List<CreateProductStockByLocationRequestDto> get stockByLocation; bool get active;
/// Create a copy of CreateProductRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProductRequestDtoCopyWith<CreateProductRequestDto> get copyWith => _$CreateProductRequestDtoCopyWithImpl<CreateProductRequestDto>(this as CreateProductRequestDto, _$identity);

  /// Serializes this CreateProductRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other.stockByLocation, stockByLocation)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(stockByLocation),active);

@override
String toString() {
  return 'CreateProductRequestDto(name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateProductRequestDtoCopyWith<$Res>  {
  factory $CreateProductRequestDtoCopyWith(CreateProductRequestDto value, $Res Function(CreateProductRequestDto) _then) = _$CreateProductRequestDtoCopyWithImpl;
@useResult
$Res call({
 String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<CreateProductStockByLocationRequestDto> stockByLocation, bool active
});




}
/// @nodoc
class _$CreateProductRequestDtoCopyWithImpl<$Res>
    implements $CreateProductRequestDtoCopyWith<$Res> {
  _$CreateProductRequestDtoCopyWithImpl(this._self, this._then);

  final CreateProductRequestDto _self;
  final $Res Function(CreateProductRequestDto) _then;

/// Create a copy of CreateProductRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? active = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self.stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<CreateProductStockByLocationRequestDto>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateProductRequestDto].
extension CreateProductRequestDtoPatterns on CreateProductRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateProductRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateProductRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateProductRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateProductRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateProductRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateProductRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationRequestDto> stockByLocation,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateProductRequestDto() when $default != null:
return $default(_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationRequestDto> stockByLocation,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateProductRequestDto():
return $default(_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationRequestDto> stockByLocation,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateProductRequestDto() when $default != null:
return $default(_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateProductRequestDto implements CreateProductRequestDto {
  const _CreateProductRequestDto({required this.name, required this.code, required this.category, required this.unitOfMeasureId, this.description, this.activeIngredient, final  List<CreateProductStockByLocationRequestDto> stockByLocation = const <CreateProductStockByLocationRequestDto>[], this.active = true}): _stockByLocation = stockByLocation;
  factory _CreateProductRequestDto.fromJson(Map<String, dynamic> json) => _$CreateProductRequestDtoFromJson(json);

@override final  String name;
@override final  String code;
@override final  String category;
@override final  String unitOfMeasureId;
@override final  String? description;
@override final  String? activeIngredient;
 final  List<CreateProductStockByLocationRequestDto> _stockByLocation;
@override@JsonKey() List<CreateProductStockByLocationRequestDto> get stockByLocation {
  if (_stockByLocation is EqualUnmodifiableListView) return _stockByLocation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stockByLocation);
}

@override@JsonKey() final  bool active;

/// Create a copy of CreateProductRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProductRequestDtoCopyWith<_CreateProductRequestDto> get copyWith => __$CreateProductRequestDtoCopyWithImpl<_CreateProductRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateProductRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProductRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other._stockByLocation, _stockByLocation)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(_stockByLocation),active);

@override
String toString() {
  return 'CreateProductRequestDto(name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateProductRequestDtoCopyWith<$Res> implements $CreateProductRequestDtoCopyWith<$Res> {
  factory _$CreateProductRequestDtoCopyWith(_CreateProductRequestDto value, $Res Function(_CreateProductRequestDto) _then) = __$CreateProductRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<CreateProductStockByLocationRequestDto> stockByLocation, bool active
});




}
/// @nodoc
class __$CreateProductRequestDtoCopyWithImpl<$Res>
    implements _$CreateProductRequestDtoCopyWith<$Res> {
  __$CreateProductRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateProductRequestDto _self;
  final $Res Function(_CreateProductRequestDto) _then;

/// Create a copy of CreateProductRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? active = null,}) {
  return _then(_CreateProductRequestDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self._stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<CreateProductStockByLocationRequestDto>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateProductRequestDto {

 String get name; String get code; String get category; String get unitOfMeasureId; String? get description; String? get activeIngredient; List<CreateProductStockByLocationRequestDto> get stockByLocation; bool get active;
/// Create a copy of UpdateProductRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProductRequestDtoCopyWith<UpdateProductRequestDto> get copyWith => _$UpdateProductRequestDtoCopyWithImpl<UpdateProductRequestDto>(this as UpdateProductRequestDto, _$identity);

  /// Serializes this UpdateProductRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProductRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other.stockByLocation, stockByLocation)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(stockByLocation),active);

@override
String toString() {
  return 'UpdateProductRequestDto(name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateProductRequestDtoCopyWith<$Res>  {
  factory $UpdateProductRequestDtoCopyWith(UpdateProductRequestDto value, $Res Function(UpdateProductRequestDto) _then) = _$UpdateProductRequestDtoCopyWithImpl;
@useResult
$Res call({
 String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<CreateProductStockByLocationRequestDto> stockByLocation, bool active
});




}
/// @nodoc
class _$UpdateProductRequestDtoCopyWithImpl<$Res>
    implements $UpdateProductRequestDtoCopyWith<$Res> {
  _$UpdateProductRequestDtoCopyWithImpl(this._self, this._then);

  final UpdateProductRequestDto _self;
  final $Res Function(UpdateProductRequestDto) _then;

/// Create a copy of UpdateProductRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? active = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self.stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<CreateProductStockByLocationRequestDto>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProductRequestDto].
extension UpdateProductRequestDtoPatterns on UpdateProductRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProductRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProductRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProductRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProductRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProductRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProductRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationRequestDto> stockByLocation,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProductRequestDto() when $default != null:
return $default(_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationRequestDto> stockByLocation,  bool active)  $default,) {final _that = this;
switch (_that) {
case _UpdateProductRequestDto():
return $default(_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationRequestDto> stockByLocation,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProductRequestDto() when $default != null:
return $default(_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProductRequestDto implements UpdateProductRequestDto {
  const _UpdateProductRequestDto({required this.name, required this.code, required this.category, required this.unitOfMeasureId, this.description, this.activeIngredient, final  List<CreateProductStockByLocationRequestDto> stockByLocation = const <CreateProductStockByLocationRequestDto>[], required this.active}): _stockByLocation = stockByLocation;
  factory _UpdateProductRequestDto.fromJson(Map<String, dynamic> json) => _$UpdateProductRequestDtoFromJson(json);

@override final  String name;
@override final  String code;
@override final  String category;
@override final  String unitOfMeasureId;
@override final  String? description;
@override final  String? activeIngredient;
 final  List<CreateProductStockByLocationRequestDto> _stockByLocation;
@override@JsonKey() List<CreateProductStockByLocationRequestDto> get stockByLocation {
  if (_stockByLocation is EqualUnmodifiableListView) return _stockByLocation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stockByLocation);
}

@override final  bool active;

/// Create a copy of UpdateProductRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProductRequestDtoCopyWith<_UpdateProductRequestDto> get copyWith => __$UpdateProductRequestDtoCopyWithImpl<_UpdateProductRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProductRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProductRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other._stockByLocation, _stockByLocation)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(_stockByLocation),active);

@override
String toString() {
  return 'UpdateProductRequestDto(name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateProductRequestDtoCopyWith<$Res> implements $UpdateProductRequestDtoCopyWith<$Res> {
  factory _$UpdateProductRequestDtoCopyWith(_UpdateProductRequestDto value, $Res Function(_UpdateProductRequestDto) _then) = __$UpdateProductRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<CreateProductStockByLocationRequestDto> stockByLocation, bool active
});




}
/// @nodoc
class __$UpdateProductRequestDtoCopyWithImpl<$Res>
    implements _$UpdateProductRequestDtoCopyWith<$Res> {
  __$UpdateProductRequestDtoCopyWithImpl(this._self, this._then);

  final _UpdateProductRequestDto _self;
  final $Res Function(_UpdateProductRequestDto) _then;

/// Create a copy of UpdateProductRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? active = null,}) {
  return _then(_UpdateProductRequestDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self._stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<CreateProductStockByLocationRequestDto>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
