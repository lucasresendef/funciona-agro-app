// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 AuditMetadata get metadata; String get name; String get code; String get category; String get unitOfMeasureId; String? get description; String? get activeIngredient; List<ProductStockByLocation> get stockByLocation; double get totalStockQuantity;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other.stockByLocation, stockByLocation)&&(identical(other.totalStockQuantity, totalStockQuantity) || other.totalStockQuantity == totalStockQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(stockByLocation),totalStockQuantity);

@override
String toString() {
  return 'Product(metadata: $metadata, name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, totalStockQuantity: $totalStockQuantity)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 AuditMetadata metadata, String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<ProductStockByLocation> stockByLocation, double totalStockQuantity
});


$AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? totalStockQuantity = null,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self.stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<ProductStockByLocation>,totalStockQuantity: null == totalStockQuantity ? _self.totalStockQuantity : totalStockQuantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<ProductStockByLocation> stockByLocation,  double totalStockQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.metadata,_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.totalStockQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<ProductStockByLocation> stockByLocation,  double totalStockQuantity)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.metadata,_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.totalStockQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata metadata,  String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<ProductStockByLocation> stockByLocation,  double totalStockQuantity)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.metadata,_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.totalStockQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({required this.metadata, required this.name, required this.code, required this.category, required this.unitOfMeasureId, this.description, this.activeIngredient, final  List<ProductStockByLocation> stockByLocation = const <ProductStockByLocation>[], this.totalStockQuantity = 0}): _stockByLocation = stockByLocation;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  AuditMetadata metadata;
@override final  String name;
@override final  String code;
@override final  String category;
@override final  String unitOfMeasureId;
@override final  String? description;
@override final  String? activeIngredient;
 final  List<ProductStockByLocation> _stockByLocation;
@override@JsonKey() List<ProductStockByLocation> get stockByLocation {
  if (_stockByLocation is EqualUnmodifiableListView) return _stockByLocation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stockByLocation);
}

@override@JsonKey() final  double totalStockQuantity;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other._stockByLocation, _stockByLocation)&&(identical(other.totalStockQuantity, totalStockQuantity) || other.totalStockQuantity == totalStockQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(_stockByLocation),totalStockQuantity);

@override
String toString() {
  return 'Product(metadata: $metadata, name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, totalStockQuantity: $totalStockQuantity)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata metadata, String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<ProductStockByLocation> stockByLocation, double totalStockQuantity
});


@override $AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? totalStockQuantity = null,}) {
  return _then(_Product(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self._stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<ProductStockByLocation>,totalStockQuantity: null == totalStockQuantity ? _self.totalStockQuantity : totalStockQuantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of Product
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
mixin _$ProductStockByLocation {

 String get farmId; String? get farmName; String get inventoryLocationId; String? get inventoryLocationName; double get quantity; double get averageUnitCost;
/// Create a copy of ProductStockByLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStockByLocationCopyWith<ProductStockByLocation> get copyWith => _$ProductStockByLocationCopyWithImpl<ProductStockByLocation>(this as ProductStockByLocation, _$identity);

  /// Serializes this ProductStockByLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductStockByLocation&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.farmName, farmName) || other.farmName == farmName)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.inventoryLocationName, inventoryLocationName) || other.inventoryLocationName == inventoryLocationName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,farmName,inventoryLocationId,inventoryLocationName,quantity,averageUnitCost);

@override
String toString() {
  return 'ProductStockByLocation(farmId: $farmId, farmName: $farmName, inventoryLocationId: $inventoryLocationId, inventoryLocationName: $inventoryLocationName, quantity: $quantity, averageUnitCost: $averageUnitCost)';
}


}

/// @nodoc
abstract mixin class $ProductStockByLocationCopyWith<$Res>  {
  factory $ProductStockByLocationCopyWith(ProductStockByLocation value, $Res Function(ProductStockByLocation) _then) = _$ProductStockByLocationCopyWithImpl;
@useResult
$Res call({
 String farmId, String? farmName, String inventoryLocationId, String? inventoryLocationName, double quantity, double averageUnitCost
});




}
/// @nodoc
class _$ProductStockByLocationCopyWithImpl<$Res>
    implements $ProductStockByLocationCopyWith<$Res> {
  _$ProductStockByLocationCopyWithImpl(this._self, this._then);

  final ProductStockByLocation _self;
  final $Res Function(ProductStockByLocation) _then;

/// Create a copy of ProductStockByLocation
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


/// Adds pattern-matching-related methods to [ProductStockByLocation].
extension ProductStockByLocationPatterns on ProductStockByLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductStockByLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductStockByLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductStockByLocation value)  $default,){
final _that = this;
switch (_that) {
case _ProductStockByLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductStockByLocation value)?  $default,){
final _that = this;
switch (_that) {
case _ProductStockByLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  String? farmName,  String inventoryLocationId,  String? inventoryLocationName,  double quantity,  double averageUnitCost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductStockByLocation() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  String? farmName,  String inventoryLocationId,  String? inventoryLocationName,  double quantity,  double averageUnitCost)  $default,) {final _that = this;
switch (_that) {
case _ProductStockByLocation():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  String? farmName,  String inventoryLocationId,  String? inventoryLocationName,  double quantity,  double averageUnitCost)?  $default,) {final _that = this;
switch (_that) {
case _ProductStockByLocation() when $default != null:
return $default(_that.farmId,_that.farmName,_that.inventoryLocationId,_that.inventoryLocationName,_that.quantity,_that.averageUnitCost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductStockByLocation implements ProductStockByLocation {
  const _ProductStockByLocation({required this.farmId, this.farmName, required this.inventoryLocationId, this.inventoryLocationName, required this.quantity, required this.averageUnitCost});
  factory _ProductStockByLocation.fromJson(Map<String, dynamic> json) => _$ProductStockByLocationFromJson(json);

@override final  String farmId;
@override final  String? farmName;
@override final  String inventoryLocationId;
@override final  String? inventoryLocationName;
@override final  double quantity;
@override final  double averageUnitCost;

/// Create a copy of ProductStockByLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStockByLocationCopyWith<_ProductStockByLocation> get copyWith => __$ProductStockByLocationCopyWithImpl<_ProductStockByLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductStockByLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductStockByLocation&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.farmName, farmName) || other.farmName == farmName)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.inventoryLocationName, inventoryLocationName) || other.inventoryLocationName == inventoryLocationName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,farmName,inventoryLocationId,inventoryLocationName,quantity,averageUnitCost);

@override
String toString() {
  return 'ProductStockByLocation(farmId: $farmId, farmName: $farmName, inventoryLocationId: $inventoryLocationId, inventoryLocationName: $inventoryLocationName, quantity: $quantity, averageUnitCost: $averageUnitCost)';
}


}

/// @nodoc
abstract mixin class _$ProductStockByLocationCopyWith<$Res> implements $ProductStockByLocationCopyWith<$Res> {
  factory _$ProductStockByLocationCopyWith(_ProductStockByLocation value, $Res Function(_ProductStockByLocation) _then) = __$ProductStockByLocationCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String? farmName, String inventoryLocationId, String? inventoryLocationName, double quantity, double averageUnitCost
});




}
/// @nodoc
class __$ProductStockByLocationCopyWithImpl<$Res>
    implements _$ProductStockByLocationCopyWith<$Res> {
  __$ProductStockByLocationCopyWithImpl(this._self, this._then);

  final _ProductStockByLocation _self;
  final $Res Function(_ProductStockByLocation) _then;

/// Create a copy of ProductStockByLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? farmName = freezed,Object? inventoryLocationId = null,Object? inventoryLocationName = freezed,Object? quantity = null,Object? averageUnitCost = null,}) {
  return _then(_ProductStockByLocation(
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
mixin _$CreateProductStockByLocationInput {

 String get farmId; String get inventoryLocationId; double get quantity; double get averageUnitCost; String? get notes;
/// Create a copy of CreateProductStockByLocationInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProductStockByLocationInputCopyWith<CreateProductStockByLocationInput> get copyWith => _$CreateProductStockByLocationInputCopyWithImpl<CreateProductStockByLocationInput>(this as CreateProductStockByLocationInput, _$identity);

  /// Serializes this CreateProductStockByLocationInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductStockByLocationInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,inventoryLocationId,quantity,averageUnitCost,notes);

@override
String toString() {
  return 'CreateProductStockByLocationInput(farmId: $farmId, inventoryLocationId: $inventoryLocationId, quantity: $quantity, averageUnitCost: $averageUnitCost, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $CreateProductStockByLocationInputCopyWith<$Res>  {
  factory $CreateProductStockByLocationInputCopyWith(CreateProductStockByLocationInput value, $Res Function(CreateProductStockByLocationInput) _then) = _$CreateProductStockByLocationInputCopyWithImpl;
@useResult
$Res call({
 String farmId, String inventoryLocationId, double quantity, double averageUnitCost, String? notes
});




}
/// @nodoc
class _$CreateProductStockByLocationInputCopyWithImpl<$Res>
    implements $CreateProductStockByLocationInputCopyWith<$Res> {
  _$CreateProductStockByLocationInputCopyWithImpl(this._self, this._then);

  final CreateProductStockByLocationInput _self;
  final $Res Function(CreateProductStockByLocationInput) _then;

/// Create a copy of CreateProductStockByLocationInput
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


/// Adds pattern-matching-related methods to [CreateProductStockByLocationInput].
extension CreateProductStockByLocationInputPatterns on CreateProductStockByLocationInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateProductStockByLocationInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateProductStockByLocationInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateProductStockByLocationInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateProductStockByLocationInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateProductStockByLocationInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateProductStockByLocationInput() when $default != null:
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
case _CreateProductStockByLocationInput() when $default != null:
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
case _CreateProductStockByLocationInput():
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
case _CreateProductStockByLocationInput() when $default != null:
return $default(_that.farmId,_that.inventoryLocationId,_that.quantity,_that.averageUnitCost,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateProductStockByLocationInput implements CreateProductStockByLocationInput {
  const _CreateProductStockByLocationInput({required this.farmId, required this.inventoryLocationId, required this.quantity, required this.averageUnitCost, this.notes});
  factory _CreateProductStockByLocationInput.fromJson(Map<String, dynamic> json) => _$CreateProductStockByLocationInputFromJson(json);

@override final  String farmId;
@override final  String inventoryLocationId;
@override final  double quantity;
@override final  double averageUnitCost;
@override final  String? notes;

/// Create a copy of CreateProductStockByLocationInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProductStockByLocationInputCopyWith<_CreateProductStockByLocationInput> get copyWith => __$CreateProductStockByLocationInputCopyWithImpl<_CreateProductStockByLocationInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateProductStockByLocationInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProductStockByLocationInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,inventoryLocationId,quantity,averageUnitCost,notes);

@override
String toString() {
  return 'CreateProductStockByLocationInput(farmId: $farmId, inventoryLocationId: $inventoryLocationId, quantity: $quantity, averageUnitCost: $averageUnitCost, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateProductStockByLocationInputCopyWith<$Res> implements $CreateProductStockByLocationInputCopyWith<$Res> {
  factory _$CreateProductStockByLocationInputCopyWith(_CreateProductStockByLocationInput value, $Res Function(_CreateProductStockByLocationInput) _then) = __$CreateProductStockByLocationInputCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String inventoryLocationId, double quantity, double averageUnitCost, String? notes
});




}
/// @nodoc
class __$CreateProductStockByLocationInputCopyWithImpl<$Res>
    implements _$CreateProductStockByLocationInputCopyWith<$Res> {
  __$CreateProductStockByLocationInputCopyWithImpl(this._self, this._then);

  final _CreateProductStockByLocationInput _self;
  final $Res Function(_CreateProductStockByLocationInput) _then;

/// Create a copy of CreateProductStockByLocationInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? inventoryLocationId = null,Object? quantity = null,Object? averageUnitCost = null,Object? notes = freezed,}) {
  return _then(_CreateProductStockByLocationInput(
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
mixin _$CreateProductInput {

 String get name; String get code; String get category; String get unitOfMeasureId; String? get description; String? get activeIngredient; List<CreateProductStockByLocationInput> get stockByLocation; bool get active;
/// Create a copy of CreateProductInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProductInputCopyWith<CreateProductInput> get copyWith => _$CreateProductInputCopyWithImpl<CreateProductInput>(this as CreateProductInput, _$identity);

  /// Serializes this CreateProductInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductInput&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other.stockByLocation, stockByLocation)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(stockByLocation),active);

@override
String toString() {
  return 'CreateProductInput(name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateProductInputCopyWith<$Res>  {
  factory $CreateProductInputCopyWith(CreateProductInput value, $Res Function(CreateProductInput) _then) = _$CreateProductInputCopyWithImpl;
@useResult
$Res call({
 String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<CreateProductStockByLocationInput> stockByLocation, bool active
});




}
/// @nodoc
class _$CreateProductInputCopyWithImpl<$Res>
    implements $CreateProductInputCopyWith<$Res> {
  _$CreateProductInputCopyWithImpl(this._self, this._then);

  final CreateProductInput _self;
  final $Res Function(CreateProductInput) _then;

/// Create a copy of CreateProductInput
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
as List<CreateProductStockByLocationInput>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateProductInput].
extension CreateProductInputPatterns on CreateProductInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateProductInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateProductInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateProductInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateProductInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateProductInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateProductInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationInput> stockByLocation,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateProductInput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationInput> stockByLocation,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateProductInput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationInput> stockByLocation,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateProductInput() when $default != null:
return $default(_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateProductInput implements CreateProductInput {
  const _CreateProductInput({required this.name, required this.code, required this.category, required this.unitOfMeasureId, this.description, this.activeIngredient, final  List<CreateProductStockByLocationInput> stockByLocation = const <CreateProductStockByLocationInput>[], this.active = true}): _stockByLocation = stockByLocation;
  factory _CreateProductInput.fromJson(Map<String, dynamic> json) => _$CreateProductInputFromJson(json);

@override final  String name;
@override final  String code;
@override final  String category;
@override final  String unitOfMeasureId;
@override final  String? description;
@override final  String? activeIngredient;
 final  List<CreateProductStockByLocationInput> _stockByLocation;
@override@JsonKey() List<CreateProductStockByLocationInput> get stockByLocation {
  if (_stockByLocation is EqualUnmodifiableListView) return _stockByLocation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stockByLocation);
}

@override@JsonKey() final  bool active;

/// Create a copy of CreateProductInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProductInputCopyWith<_CreateProductInput> get copyWith => __$CreateProductInputCopyWithImpl<_CreateProductInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateProductInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProductInput&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other._stockByLocation, _stockByLocation)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(_stockByLocation),active);

@override
String toString() {
  return 'CreateProductInput(name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateProductInputCopyWith<$Res> implements $CreateProductInputCopyWith<$Res> {
  factory _$CreateProductInputCopyWith(_CreateProductInput value, $Res Function(_CreateProductInput) _then) = __$CreateProductInputCopyWithImpl;
@override @useResult
$Res call({
 String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<CreateProductStockByLocationInput> stockByLocation, bool active
});




}
/// @nodoc
class __$CreateProductInputCopyWithImpl<$Res>
    implements _$CreateProductInputCopyWith<$Res> {
  __$CreateProductInputCopyWithImpl(this._self, this._then);

  final _CreateProductInput _self;
  final $Res Function(_CreateProductInput) _then;

/// Create a copy of CreateProductInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? active = null,}) {
  return _then(_CreateProductInput(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self._stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<CreateProductStockByLocationInput>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateProductInput {

 String get id; String get name; String get code; String get category; String get unitOfMeasureId; String? get description; String? get activeIngredient; List<CreateProductStockByLocationInput> get stockByLocation; bool get active;
/// Create a copy of UpdateProductInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProductInputCopyWith<UpdateProductInput> get copyWith => _$UpdateProductInputCopyWithImpl<UpdateProductInput>(this as UpdateProductInput, _$identity);

  /// Serializes this UpdateProductInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProductInput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other.stockByLocation, stockByLocation)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(stockByLocation),active);

@override
String toString() {
  return 'UpdateProductInput(id: $id, name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateProductInputCopyWith<$Res>  {
  factory $UpdateProductInputCopyWith(UpdateProductInput value, $Res Function(UpdateProductInput) _then) = _$UpdateProductInputCopyWithImpl;
@useResult
$Res call({
 String id, String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<CreateProductStockByLocationInput> stockByLocation, bool active
});




}
/// @nodoc
class _$UpdateProductInputCopyWithImpl<$Res>
    implements $UpdateProductInputCopyWith<$Res> {
  _$UpdateProductInputCopyWithImpl(this._self, this._then);

  final UpdateProductInput _self;
  final $Res Function(UpdateProductInput) _then;

/// Create a copy of UpdateProductInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? active = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self.stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<CreateProductStockByLocationInput>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProductInput].
extension UpdateProductInputPatterns on UpdateProductInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProductInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProductInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProductInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProductInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProductInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProductInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationInput> stockByLocation,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProductInput() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationInput> stockByLocation,  bool active)  $default,) {final _that = this;
switch (_that) {
case _UpdateProductInput():
return $default(_that.id,_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String code,  String category,  String unitOfMeasureId,  String? description,  String? activeIngredient,  List<CreateProductStockByLocationInput> stockByLocation,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProductInput() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.category,_that.unitOfMeasureId,_that.description,_that.activeIngredient,_that.stockByLocation,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProductInput implements UpdateProductInput {
  const _UpdateProductInput({required this.id, required this.name, required this.code, required this.category, required this.unitOfMeasureId, this.description, this.activeIngredient, final  List<CreateProductStockByLocationInput> stockByLocation = const <CreateProductStockByLocationInput>[], this.active = true}): _stockByLocation = stockByLocation;
  factory _UpdateProductInput.fromJson(Map<String, dynamic> json) => _$UpdateProductInputFromJson(json);

@override final  String id;
@override final  String name;
@override final  String code;
@override final  String category;
@override final  String unitOfMeasureId;
@override final  String? description;
@override final  String? activeIngredient;
 final  List<CreateProductStockByLocationInput> _stockByLocation;
@override@JsonKey() List<CreateProductStockByLocationInput> get stockByLocation {
  if (_stockByLocation is EqualUnmodifiableListView) return _stockByLocation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stockByLocation);
}

@override@JsonKey() final  bool active;

/// Create a copy of UpdateProductInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProductInputCopyWith<_UpdateProductInput> get copyWith => __$UpdateProductInputCopyWithImpl<_UpdateProductInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProductInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProductInput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitOfMeasureId, unitOfMeasureId) || other.unitOfMeasureId == unitOfMeasureId)&&(identical(other.description, description) || other.description == description)&&(identical(other.activeIngredient, activeIngredient) || other.activeIngredient == activeIngredient)&&const DeepCollectionEquality().equals(other._stockByLocation, _stockByLocation)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,category,unitOfMeasureId,description,activeIngredient,const DeepCollectionEquality().hash(_stockByLocation),active);

@override
String toString() {
  return 'UpdateProductInput(id: $id, name: $name, code: $code, category: $category, unitOfMeasureId: $unitOfMeasureId, description: $description, activeIngredient: $activeIngredient, stockByLocation: $stockByLocation, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateProductInputCopyWith<$Res> implements $UpdateProductInputCopyWith<$Res> {
  factory _$UpdateProductInputCopyWith(_UpdateProductInput value, $Res Function(_UpdateProductInput) _then) = __$UpdateProductInputCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String code, String category, String unitOfMeasureId, String? description, String? activeIngredient, List<CreateProductStockByLocationInput> stockByLocation, bool active
});




}
/// @nodoc
class __$UpdateProductInputCopyWithImpl<$Res>
    implements _$UpdateProductInputCopyWith<$Res> {
  __$UpdateProductInputCopyWithImpl(this._self, this._then);

  final _UpdateProductInput _self;
  final $Res Function(_UpdateProductInput) _then;

/// Create a copy of UpdateProductInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = null,Object? category = null,Object? unitOfMeasureId = null,Object? description = freezed,Object? activeIngredient = freezed,Object? stockByLocation = null,Object? active = null,}) {
  return _then(_UpdateProductInput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasureId: null == unitOfMeasureId ? _self.unitOfMeasureId : unitOfMeasureId // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activeIngredient: freezed == activeIngredient ? _self.activeIngredient : activeIngredient // ignore: cast_nullable_to_non_nullable
as String?,stockByLocation: null == stockByLocation ? _self._stockByLocation : stockByLocation // ignore: cast_nullable_to_non_nullable
as List<CreateProductStockByLocationInput>,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
