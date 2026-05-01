// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryLocation {

 AuditMetadata get metadata; String get farmId; String get name; String? get description;
/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryLocationCopyWith<InventoryLocation> get copyWith => _$InventoryLocationCopyWithImpl<InventoryLocation>(this as InventoryLocation, _$identity);

  /// Serializes this InventoryLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryLocation&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,farmId,name,description);

@override
String toString() {
  return 'InventoryLocation(metadata: $metadata, farmId: $farmId, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $InventoryLocationCopyWith<$Res>  {
  factory $InventoryLocationCopyWith(InventoryLocation value, $Res Function(InventoryLocation) _then) = _$InventoryLocationCopyWithImpl;
@useResult
$Res call({
 AuditMetadata metadata, String farmId, String name, String? description
});


$AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$InventoryLocationCopyWithImpl<$Res>
    implements $InventoryLocationCopyWith<$Res> {
  _$InventoryLocationCopyWithImpl(this._self, this._then);

  final InventoryLocation _self;
  final $Res Function(InventoryLocation) _then;

/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? farmId = null,Object? name = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [InventoryLocation].
extension InventoryLocationPatterns on InventoryLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryLocation value)  $default,){
final _that = this;
switch (_that) {
case _InventoryLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryLocation value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String farmId,  String name,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
return $default(_that.metadata,_that.farmId,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String farmId,  String name,  String? description)  $default,) {final _that = this;
switch (_that) {
case _InventoryLocation():
return $default(_that.metadata,_that.farmId,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata metadata,  String farmId,  String name,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _InventoryLocation() when $default != null:
return $default(_that.metadata,_that.farmId,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryLocation implements InventoryLocation {
  const _InventoryLocation({required this.metadata, required this.farmId, required this.name, this.description});
  factory _InventoryLocation.fromJson(Map<String, dynamic> json) => _$InventoryLocationFromJson(json);

@override final  AuditMetadata metadata;
@override final  String farmId;
@override final  String name;
@override final  String? description;

/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryLocationCopyWith<_InventoryLocation> get copyWith => __$InventoryLocationCopyWithImpl<_InventoryLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryLocation&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,farmId,name,description);

@override
String toString() {
  return 'InventoryLocation(metadata: $metadata, farmId: $farmId, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$InventoryLocationCopyWith<$Res> implements $InventoryLocationCopyWith<$Res> {
  factory _$InventoryLocationCopyWith(_InventoryLocation value, $Res Function(_InventoryLocation) _then) = __$InventoryLocationCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata metadata, String farmId, String name, String? description
});


@override $AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$InventoryLocationCopyWithImpl<$Res>
    implements _$InventoryLocationCopyWith<$Res> {
  __$InventoryLocationCopyWithImpl(this._self, this._then);

  final _InventoryLocation _self;
  final $Res Function(_InventoryLocation) _then;

/// Create a copy of InventoryLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? farmId = null,Object? name = null,Object? description = freezed,}) {
  return _then(_InventoryLocation(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of InventoryLocation
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
mixin _$CreateInventoryLocationInput {

 String get farmId; String get name; String? get description; bool get active;
/// Create a copy of CreateInventoryLocationInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateInventoryLocationInputCopyWith<CreateInventoryLocationInput> get copyWith => _$CreateInventoryLocationInputCopyWithImpl<CreateInventoryLocationInput>(this as CreateInventoryLocationInput, _$identity);

  /// Serializes this CreateInventoryLocationInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateInventoryLocationInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,name,description,active);

@override
String toString() {
  return 'CreateInventoryLocationInput(farmId: $farmId, name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateInventoryLocationInputCopyWith<$Res>  {
  factory $CreateInventoryLocationInputCopyWith(CreateInventoryLocationInput value, $Res Function(CreateInventoryLocationInput) _then) = _$CreateInventoryLocationInputCopyWithImpl;
@useResult
$Res call({
 String farmId, String name, String? description, bool active
});




}
/// @nodoc
class _$CreateInventoryLocationInputCopyWithImpl<$Res>
    implements $CreateInventoryLocationInputCopyWith<$Res> {
  _$CreateInventoryLocationInputCopyWithImpl(this._self, this._then);

  final CreateInventoryLocationInput _self;
  final $Res Function(CreateInventoryLocationInput) _then;

/// Create a copy of CreateInventoryLocationInput
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


/// Adds pattern-matching-related methods to [CreateInventoryLocationInput].
extension CreateInventoryLocationInputPatterns on CreateInventoryLocationInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateInventoryLocationInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateInventoryLocationInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateInventoryLocationInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateInventoryLocationInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateInventoryLocationInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateInventoryLocationInput() when $default != null:
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
case _CreateInventoryLocationInput() when $default != null:
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
case _CreateInventoryLocationInput():
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
case _CreateInventoryLocationInput() when $default != null:
return $default(_that.farmId,_that.name,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateInventoryLocationInput implements CreateInventoryLocationInput {
  const _CreateInventoryLocationInput({required this.farmId, required this.name, this.description, this.active = true});
  factory _CreateInventoryLocationInput.fromJson(Map<String, dynamic> json) => _$CreateInventoryLocationInputFromJson(json);

@override final  String farmId;
@override final  String name;
@override final  String? description;
@override@JsonKey() final  bool active;

/// Create a copy of CreateInventoryLocationInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateInventoryLocationInputCopyWith<_CreateInventoryLocationInput> get copyWith => __$CreateInventoryLocationInputCopyWithImpl<_CreateInventoryLocationInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateInventoryLocationInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateInventoryLocationInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,name,description,active);

@override
String toString() {
  return 'CreateInventoryLocationInput(farmId: $farmId, name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateInventoryLocationInputCopyWith<$Res> implements $CreateInventoryLocationInputCopyWith<$Res> {
  factory _$CreateInventoryLocationInputCopyWith(_CreateInventoryLocationInput value, $Res Function(_CreateInventoryLocationInput) _then) = __$CreateInventoryLocationInputCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String name, String? description, bool active
});




}
/// @nodoc
class __$CreateInventoryLocationInputCopyWithImpl<$Res>
    implements _$CreateInventoryLocationInputCopyWith<$Res> {
  __$CreateInventoryLocationInputCopyWithImpl(this._self, this._then);

  final _CreateInventoryLocationInput _self;
  final $Res Function(_CreateInventoryLocationInput) _then;

/// Create a copy of CreateInventoryLocationInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_CreateInventoryLocationInput(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateInventoryLocationInput {

 String get id; String get farmId; String get name; String? get description; bool get active;
/// Create a copy of UpdateInventoryLocationInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateInventoryLocationInputCopyWith<UpdateInventoryLocationInput> get copyWith => _$UpdateInventoryLocationInputCopyWithImpl<UpdateInventoryLocationInput>(this as UpdateInventoryLocationInput, _$identity);

  /// Serializes this UpdateInventoryLocationInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateInventoryLocationInput&&(identical(other.id, id) || other.id == id)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,farmId,name,description,active);

@override
String toString() {
  return 'UpdateInventoryLocationInput(id: $id, farmId: $farmId, name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateInventoryLocationInputCopyWith<$Res>  {
  factory $UpdateInventoryLocationInputCopyWith(UpdateInventoryLocationInput value, $Res Function(UpdateInventoryLocationInput) _then) = _$UpdateInventoryLocationInputCopyWithImpl;
@useResult
$Res call({
 String id, String farmId, String name, String? description, bool active
});




}
/// @nodoc
class _$UpdateInventoryLocationInputCopyWithImpl<$Res>
    implements $UpdateInventoryLocationInputCopyWith<$Res> {
  _$UpdateInventoryLocationInputCopyWithImpl(this._self, this._then);

  final UpdateInventoryLocationInput _self;
  final $Res Function(UpdateInventoryLocationInput) _then;

/// Create a copy of UpdateInventoryLocationInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? farmId = null,Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateInventoryLocationInput].
extension UpdateInventoryLocationInputPatterns on UpdateInventoryLocationInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateInventoryLocationInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateInventoryLocationInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateInventoryLocationInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateInventoryLocationInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateInventoryLocationInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateInventoryLocationInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String farmId,  String name,  String? description,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateInventoryLocationInput() when $default != null:
return $default(_that.id,_that.farmId,_that.name,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String farmId,  String name,  String? description,  bool active)  $default,) {final _that = this;
switch (_that) {
case _UpdateInventoryLocationInput():
return $default(_that.id,_that.farmId,_that.name,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String farmId,  String name,  String? description,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateInventoryLocationInput() when $default != null:
return $default(_that.id,_that.farmId,_that.name,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateInventoryLocationInput implements UpdateInventoryLocationInput {
  const _UpdateInventoryLocationInput({required this.id, required this.farmId, required this.name, this.description, this.active = true});
  factory _UpdateInventoryLocationInput.fromJson(Map<String, dynamic> json) => _$UpdateInventoryLocationInputFromJson(json);

@override final  String id;
@override final  String farmId;
@override final  String name;
@override final  String? description;
@override@JsonKey() final  bool active;

/// Create a copy of UpdateInventoryLocationInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInventoryLocationInputCopyWith<_UpdateInventoryLocationInput> get copyWith => __$UpdateInventoryLocationInputCopyWithImpl<_UpdateInventoryLocationInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateInventoryLocationInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInventoryLocationInput&&(identical(other.id, id) || other.id == id)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,farmId,name,description,active);

@override
String toString() {
  return 'UpdateInventoryLocationInput(id: $id, farmId: $farmId, name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateInventoryLocationInputCopyWith<$Res> implements $UpdateInventoryLocationInputCopyWith<$Res> {
  factory _$UpdateInventoryLocationInputCopyWith(_UpdateInventoryLocationInput value, $Res Function(_UpdateInventoryLocationInput) _then) = __$UpdateInventoryLocationInputCopyWithImpl;
@override @useResult
$Res call({
 String id, String farmId, String name, String? description, bool active
});




}
/// @nodoc
class __$UpdateInventoryLocationInputCopyWithImpl<$Res>
    implements _$UpdateInventoryLocationInputCopyWith<$Res> {
  __$UpdateInventoryLocationInputCopyWithImpl(this._self, this._then);

  final _UpdateInventoryLocationInput _self;
  final $Res Function(_UpdateInventoryLocationInput) _then;

/// Create a copy of UpdateInventoryLocationInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? farmId = null,Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_UpdateInventoryLocationInput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$InventoryBalance {

 AuditMetadata get metadata; String get farmId; String get inventoryLocationId; String get productId; double get quantity; double get averageUnitCost;
/// Create a copy of InventoryBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryBalanceCopyWith<InventoryBalance> get copyWith => _$InventoryBalanceCopyWithImpl<InventoryBalance>(this as InventoryBalance, _$identity);

  /// Serializes this InventoryBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryBalance&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,farmId,inventoryLocationId,productId,quantity,averageUnitCost);

@override
String toString() {
  return 'InventoryBalance(metadata: $metadata, farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, quantity: $quantity, averageUnitCost: $averageUnitCost)';
}


}

/// @nodoc
abstract mixin class $InventoryBalanceCopyWith<$Res>  {
  factory $InventoryBalanceCopyWith(InventoryBalance value, $Res Function(InventoryBalance) _then) = _$InventoryBalanceCopyWithImpl;
@useResult
$Res call({
 AuditMetadata metadata, String farmId, String inventoryLocationId, String productId, double quantity, double averageUnitCost
});


$AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$InventoryBalanceCopyWithImpl<$Res>
    implements $InventoryBalanceCopyWith<$Res> {
  _$InventoryBalanceCopyWithImpl(this._self, this._then);

  final InventoryBalance _self;
  final $Res Function(InventoryBalance) _then;

/// Create a copy of InventoryBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? quantity = null,Object? averageUnitCost = null,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averageUnitCost: null == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of InventoryBalance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [InventoryBalance].
extension InventoryBalancePatterns on InventoryBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryBalance value)  $default,){
final _that = this;
switch (_that) {
case _InventoryBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryBalance value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String farmId,  String inventoryLocationId,  String productId,  double quantity,  double averageUnitCost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryBalance() when $default != null:
return $default(_that.metadata,_that.farmId,_that.inventoryLocationId,_that.productId,_that.quantity,_that.averageUnitCost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String farmId,  String inventoryLocationId,  String productId,  double quantity,  double averageUnitCost)  $default,) {final _that = this;
switch (_that) {
case _InventoryBalance():
return $default(_that.metadata,_that.farmId,_that.inventoryLocationId,_that.productId,_that.quantity,_that.averageUnitCost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata metadata,  String farmId,  String inventoryLocationId,  String productId,  double quantity,  double averageUnitCost)?  $default,) {final _that = this;
switch (_that) {
case _InventoryBalance() when $default != null:
return $default(_that.metadata,_that.farmId,_that.inventoryLocationId,_that.productId,_that.quantity,_that.averageUnitCost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryBalance implements InventoryBalance {
  const _InventoryBalance({required this.metadata, required this.farmId, required this.inventoryLocationId, required this.productId, required this.quantity, required this.averageUnitCost});
  factory _InventoryBalance.fromJson(Map<String, dynamic> json) => _$InventoryBalanceFromJson(json);

@override final  AuditMetadata metadata;
@override final  String farmId;
@override final  String inventoryLocationId;
@override final  String productId;
@override final  double quantity;
@override final  double averageUnitCost;

/// Create a copy of InventoryBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryBalanceCopyWith<_InventoryBalance> get copyWith => __$InventoryBalanceCopyWithImpl<_InventoryBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryBalance&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,farmId,inventoryLocationId,productId,quantity,averageUnitCost);

@override
String toString() {
  return 'InventoryBalance(metadata: $metadata, farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, quantity: $quantity, averageUnitCost: $averageUnitCost)';
}


}

/// @nodoc
abstract mixin class _$InventoryBalanceCopyWith<$Res> implements $InventoryBalanceCopyWith<$Res> {
  factory _$InventoryBalanceCopyWith(_InventoryBalance value, $Res Function(_InventoryBalance) _then) = __$InventoryBalanceCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata metadata, String farmId, String inventoryLocationId, String productId, double quantity, double averageUnitCost
});


@override $AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$InventoryBalanceCopyWithImpl<$Res>
    implements _$InventoryBalanceCopyWith<$Res> {
  __$InventoryBalanceCopyWithImpl(this._self, this._then);

  final _InventoryBalance _self;
  final $Res Function(_InventoryBalance) _then;

/// Create a copy of InventoryBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? quantity = null,Object? averageUnitCost = null,}) {
  return _then(_InventoryBalance(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,inventoryLocationId: null == inventoryLocationId ? _self.inventoryLocationId : inventoryLocationId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averageUnitCost: null == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of InventoryBalance
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
mixin _$CreateInventoryBalanceInput {

 String get farmId; String get inventoryLocationId; String get productId; double get quantity; double get averageUnitCost; DateTime? get occurredAt; String? get notes; bool get active;
/// Create a copy of CreateInventoryBalanceInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateInventoryBalanceInputCopyWith<CreateInventoryBalanceInput> get copyWith => _$CreateInventoryBalanceInputCopyWithImpl<CreateInventoryBalanceInput>(this as CreateInventoryBalanceInput, _$identity);

  /// Serializes this CreateInventoryBalanceInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateInventoryBalanceInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,inventoryLocationId,productId,quantity,averageUnitCost,occurredAt,notes,active);

@override
String toString() {
  return 'CreateInventoryBalanceInput(farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, quantity: $quantity, averageUnitCost: $averageUnitCost, occurredAt: $occurredAt, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateInventoryBalanceInputCopyWith<$Res>  {
  factory $CreateInventoryBalanceInputCopyWith(CreateInventoryBalanceInput value, $Res Function(CreateInventoryBalanceInput) _then) = _$CreateInventoryBalanceInputCopyWithImpl;
@useResult
$Res call({
 String farmId, String inventoryLocationId, String productId, double quantity, double averageUnitCost, DateTime? occurredAt, String? notes, bool active
});




}
/// @nodoc
class _$CreateInventoryBalanceInputCopyWithImpl<$Res>
    implements $CreateInventoryBalanceInputCopyWith<$Res> {
  _$CreateInventoryBalanceInputCopyWithImpl(this._self, this._then);

  final CreateInventoryBalanceInput _self;
  final $Res Function(CreateInventoryBalanceInput) _then;

/// Create a copy of CreateInventoryBalanceInput
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


/// Adds pattern-matching-related methods to [CreateInventoryBalanceInput].
extension CreateInventoryBalanceInputPatterns on CreateInventoryBalanceInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateInventoryBalanceInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateInventoryBalanceInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateInventoryBalanceInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateInventoryBalanceInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateInventoryBalanceInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateInventoryBalanceInput() when $default != null:
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
case _CreateInventoryBalanceInput() when $default != null:
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
case _CreateInventoryBalanceInput():
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
case _CreateInventoryBalanceInput() when $default != null:
return $default(_that.farmId,_that.inventoryLocationId,_that.productId,_that.quantity,_that.averageUnitCost,_that.occurredAt,_that.notes,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateInventoryBalanceInput implements CreateInventoryBalanceInput {
  const _CreateInventoryBalanceInput({required this.farmId, required this.inventoryLocationId, required this.productId, required this.quantity, required this.averageUnitCost, this.occurredAt, this.notes, this.active = true});
  factory _CreateInventoryBalanceInput.fromJson(Map<String, dynamic> json) => _$CreateInventoryBalanceInputFromJson(json);

@override final  String farmId;
@override final  String inventoryLocationId;
@override final  String productId;
@override final  double quantity;
@override final  double averageUnitCost;
@override final  DateTime? occurredAt;
@override final  String? notes;
@override@JsonKey() final  bool active;

/// Create a copy of CreateInventoryBalanceInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateInventoryBalanceInputCopyWith<_CreateInventoryBalanceInput> get copyWith => __$CreateInventoryBalanceInputCopyWithImpl<_CreateInventoryBalanceInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateInventoryBalanceInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateInventoryBalanceInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,inventoryLocationId,productId,quantity,averageUnitCost,occurredAt,notes,active);

@override
String toString() {
  return 'CreateInventoryBalanceInput(farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, quantity: $quantity, averageUnitCost: $averageUnitCost, occurredAt: $occurredAt, notes: $notes, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateInventoryBalanceInputCopyWith<$Res> implements $CreateInventoryBalanceInputCopyWith<$Res> {
  factory _$CreateInventoryBalanceInputCopyWith(_CreateInventoryBalanceInput value, $Res Function(_CreateInventoryBalanceInput) _then) = __$CreateInventoryBalanceInputCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String inventoryLocationId, String productId, double quantity, double averageUnitCost, DateTime? occurredAt, String? notes, bool active
});




}
/// @nodoc
class __$CreateInventoryBalanceInputCopyWithImpl<$Res>
    implements _$CreateInventoryBalanceInputCopyWith<$Res> {
  __$CreateInventoryBalanceInputCopyWithImpl(this._self, this._then);

  final _CreateInventoryBalanceInput _self;
  final $Res Function(_CreateInventoryBalanceInput) _then;

/// Create a copy of CreateInventoryBalanceInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? quantity = null,Object? averageUnitCost = null,Object? occurredAt = freezed,Object? notes = freezed,Object? active = null,}) {
  return _then(_CreateInventoryBalanceInput(
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
mixin _$UpdateInventoryBalanceInput {

 String get id; double? get quantity; double? get averageUnitCost; String? get notes;
/// Create a copy of UpdateInventoryBalanceInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateInventoryBalanceInputCopyWith<UpdateInventoryBalanceInput> get copyWith => _$UpdateInventoryBalanceInputCopyWithImpl<UpdateInventoryBalanceInput>(this as UpdateInventoryBalanceInput, _$identity);

  /// Serializes this UpdateInventoryBalanceInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateInventoryBalanceInput&&(identical(other.id, id) || other.id == id)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,quantity,averageUnitCost,notes);

@override
String toString() {
  return 'UpdateInventoryBalanceInput(id: $id, quantity: $quantity, averageUnitCost: $averageUnitCost, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $UpdateInventoryBalanceInputCopyWith<$Res>  {
  factory $UpdateInventoryBalanceInputCopyWith(UpdateInventoryBalanceInput value, $Res Function(UpdateInventoryBalanceInput) _then) = _$UpdateInventoryBalanceInputCopyWithImpl;
@useResult
$Res call({
 String id, double? quantity, double? averageUnitCost, String? notes
});




}
/// @nodoc
class _$UpdateInventoryBalanceInputCopyWithImpl<$Res>
    implements $UpdateInventoryBalanceInputCopyWith<$Res> {
  _$UpdateInventoryBalanceInputCopyWithImpl(this._self, this._then);

  final UpdateInventoryBalanceInput _self;
  final $Res Function(UpdateInventoryBalanceInput) _then;

/// Create a copy of UpdateInventoryBalanceInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? quantity = freezed,Object? averageUnitCost = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,averageUnitCost: freezed == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateInventoryBalanceInput].
extension UpdateInventoryBalanceInputPatterns on UpdateInventoryBalanceInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateInventoryBalanceInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateInventoryBalanceInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateInventoryBalanceInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateInventoryBalanceInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateInventoryBalanceInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateInventoryBalanceInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double? quantity,  double? averageUnitCost,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateInventoryBalanceInput() when $default != null:
return $default(_that.id,_that.quantity,_that.averageUnitCost,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double? quantity,  double? averageUnitCost,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _UpdateInventoryBalanceInput():
return $default(_that.id,_that.quantity,_that.averageUnitCost,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double? quantity,  double? averageUnitCost,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _UpdateInventoryBalanceInput() when $default != null:
return $default(_that.id,_that.quantity,_that.averageUnitCost,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateInventoryBalanceInput implements UpdateInventoryBalanceInput {
  const _UpdateInventoryBalanceInput({required this.id, this.quantity, this.averageUnitCost, this.notes});
  factory _UpdateInventoryBalanceInput.fromJson(Map<String, dynamic> json) => _$UpdateInventoryBalanceInputFromJson(json);

@override final  String id;
@override final  double? quantity;
@override final  double? averageUnitCost;
@override final  String? notes;

/// Create a copy of UpdateInventoryBalanceInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInventoryBalanceInputCopyWith<_UpdateInventoryBalanceInput> get copyWith => __$UpdateInventoryBalanceInputCopyWithImpl<_UpdateInventoryBalanceInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateInventoryBalanceInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInventoryBalanceInput&&(identical(other.id, id) || other.id == id)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averageUnitCost, averageUnitCost) || other.averageUnitCost == averageUnitCost)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,quantity,averageUnitCost,notes);

@override
String toString() {
  return 'UpdateInventoryBalanceInput(id: $id, quantity: $quantity, averageUnitCost: $averageUnitCost, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$UpdateInventoryBalanceInputCopyWith<$Res> implements $UpdateInventoryBalanceInputCopyWith<$Res> {
  factory _$UpdateInventoryBalanceInputCopyWith(_UpdateInventoryBalanceInput value, $Res Function(_UpdateInventoryBalanceInput) _then) = __$UpdateInventoryBalanceInputCopyWithImpl;
@override @useResult
$Res call({
 String id, double? quantity, double? averageUnitCost, String? notes
});




}
/// @nodoc
class __$UpdateInventoryBalanceInputCopyWithImpl<$Res>
    implements _$UpdateInventoryBalanceInputCopyWith<$Res> {
  __$UpdateInventoryBalanceInputCopyWithImpl(this._self, this._then);

  final _UpdateInventoryBalanceInput _self;
  final $Res Function(_UpdateInventoryBalanceInput) _then;

/// Create a copy of UpdateInventoryBalanceInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? quantity = freezed,Object? averageUnitCost = freezed,Object? notes = freezed,}) {
  return _then(_UpdateInventoryBalanceInput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,averageUnitCost: freezed == averageUnitCost ? _self.averageUnitCost : averageUnitCost // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InventoryMovement {

 AuditMetadata get metadata; String get farmId; String get inventoryLocationId; String get productId; MovementType get movementType; double get quantity; double get unitCost; double get totalCost; DateTime get occurredAt; String? get referenceType; String? get referenceId; String? get notes;
/// Create a copy of InventoryMovement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryMovementCopyWith<InventoryMovement> get copyWith => _$InventoryMovementCopyWithImpl<InventoryMovement>(this as InventoryMovement, _$identity);

  /// Serializes this InventoryMovement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryMovement&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.movementType, movementType) || other.movementType == movementType)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitCost, unitCost) || other.unitCost == unitCost)&&(identical(other.totalCost, totalCost) || other.totalCost == totalCost)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,farmId,inventoryLocationId,productId,movementType,quantity,unitCost,totalCost,occurredAt,referenceType,referenceId,notes);

@override
String toString() {
  return 'InventoryMovement(metadata: $metadata, farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, movementType: $movementType, quantity: $quantity, unitCost: $unitCost, totalCost: $totalCost, occurredAt: $occurredAt, referenceType: $referenceType, referenceId: $referenceId, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $InventoryMovementCopyWith<$Res>  {
  factory $InventoryMovementCopyWith(InventoryMovement value, $Res Function(InventoryMovement) _then) = _$InventoryMovementCopyWithImpl;
@useResult
$Res call({
 AuditMetadata metadata, String farmId, String inventoryLocationId, String productId, MovementType movementType, double quantity, double unitCost, double totalCost, DateTime occurredAt, String? referenceType, String? referenceId, String? notes
});


$AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$InventoryMovementCopyWithImpl<$Res>
    implements $InventoryMovementCopyWith<$Res> {
  _$InventoryMovementCopyWithImpl(this._self, this._then);

  final InventoryMovement _self;
  final $Res Function(InventoryMovement) _then;

/// Create a copy of InventoryMovement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? movementType = null,Object? quantity = null,Object? unitCost = null,Object? totalCost = null,Object? occurredAt = null,Object? referenceType = freezed,Object? referenceId = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
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
/// Create a copy of InventoryMovement
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [InventoryMovement].
extension InventoryMovementPatterns on InventoryMovement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryMovement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryMovement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryMovement value)  $default,){
final _that = this;
switch (_that) {
case _InventoryMovement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryMovement value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryMovement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String farmId,  String inventoryLocationId,  String productId,  MovementType movementType,  double quantity,  double unitCost,  double totalCost,  DateTime occurredAt,  String? referenceType,  String? referenceId,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryMovement() when $default != null:
return $default(_that.metadata,_that.farmId,_that.inventoryLocationId,_that.productId,_that.movementType,_that.quantity,_that.unitCost,_that.totalCost,_that.occurredAt,_that.referenceType,_that.referenceId,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String farmId,  String inventoryLocationId,  String productId,  MovementType movementType,  double quantity,  double unitCost,  double totalCost,  DateTime occurredAt,  String? referenceType,  String? referenceId,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _InventoryMovement():
return $default(_that.metadata,_that.farmId,_that.inventoryLocationId,_that.productId,_that.movementType,_that.quantity,_that.unitCost,_that.totalCost,_that.occurredAt,_that.referenceType,_that.referenceId,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata metadata,  String farmId,  String inventoryLocationId,  String productId,  MovementType movementType,  double quantity,  double unitCost,  double totalCost,  DateTime occurredAt,  String? referenceType,  String? referenceId,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _InventoryMovement() when $default != null:
return $default(_that.metadata,_that.farmId,_that.inventoryLocationId,_that.productId,_that.movementType,_that.quantity,_that.unitCost,_that.totalCost,_that.occurredAt,_that.referenceType,_that.referenceId,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryMovement implements InventoryMovement {
  const _InventoryMovement({required this.metadata, required this.farmId, required this.inventoryLocationId, required this.productId, required this.movementType, required this.quantity, required this.unitCost, required this.totalCost, required this.occurredAt, this.referenceType, this.referenceId, this.notes});
  factory _InventoryMovement.fromJson(Map<String, dynamic> json) => _$InventoryMovementFromJson(json);

@override final  AuditMetadata metadata;
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

/// Create a copy of InventoryMovement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryMovementCopyWith<_InventoryMovement> get copyWith => __$InventoryMovementCopyWithImpl<_InventoryMovement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryMovementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryMovement&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.inventoryLocationId, inventoryLocationId) || other.inventoryLocationId == inventoryLocationId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.movementType, movementType) || other.movementType == movementType)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitCost, unitCost) || other.unitCost == unitCost)&&(identical(other.totalCost, totalCost) || other.totalCost == totalCost)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,farmId,inventoryLocationId,productId,movementType,quantity,unitCost,totalCost,occurredAt,referenceType,referenceId,notes);

@override
String toString() {
  return 'InventoryMovement(metadata: $metadata, farmId: $farmId, inventoryLocationId: $inventoryLocationId, productId: $productId, movementType: $movementType, quantity: $quantity, unitCost: $unitCost, totalCost: $totalCost, occurredAt: $occurredAt, referenceType: $referenceType, referenceId: $referenceId, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$InventoryMovementCopyWith<$Res> implements $InventoryMovementCopyWith<$Res> {
  factory _$InventoryMovementCopyWith(_InventoryMovement value, $Res Function(_InventoryMovement) _then) = __$InventoryMovementCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata metadata, String farmId, String inventoryLocationId, String productId, MovementType movementType, double quantity, double unitCost, double totalCost, DateTime occurredAt, String? referenceType, String? referenceId, String? notes
});


@override $AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$InventoryMovementCopyWithImpl<$Res>
    implements _$InventoryMovementCopyWith<$Res> {
  __$InventoryMovementCopyWithImpl(this._self, this._then);

  final _InventoryMovement _self;
  final $Res Function(_InventoryMovement) _then;

/// Create a copy of InventoryMovement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? farmId = null,Object? inventoryLocationId = null,Object? productId = null,Object? movementType = null,Object? quantity = null,Object? unitCost = null,Object? totalCost = null,Object? occurredAt = null,Object? referenceType = freezed,Object? referenceId = freezed,Object? notes = freezed,}) {
  return _then(_InventoryMovement(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
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

/// Create a copy of InventoryMovement
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

// dart format on
