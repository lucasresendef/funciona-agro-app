// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Farm {

 AuditMetadata get metadata; String get name; String? get description;
/// Create a copy of Farm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FarmCopyWith<Farm> get copyWith => _$FarmCopyWithImpl<Farm>(this as Farm, _$identity);

  /// Serializes this Farm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Farm&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,name,description);

@override
String toString() {
  return 'Farm(metadata: $metadata, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $FarmCopyWith<$Res>  {
  factory $FarmCopyWith(Farm value, $Res Function(Farm) _then) = _$FarmCopyWithImpl;
@useResult
$Res call({
 AuditMetadata metadata, String name, String? description
});


$AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$FarmCopyWithImpl<$Res>
    implements $FarmCopyWith<$Res> {
  _$FarmCopyWithImpl(this._self, this._then);

  final Farm _self;
  final $Res Function(Farm) _then;

/// Create a copy of Farm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? name = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Farm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [Farm].
extension FarmPatterns on Farm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Farm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Farm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Farm value)  $default,){
final _that = this;
switch (_that) {
case _Farm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Farm value)?  $default,){
final _that = this;
switch (_that) {
case _Farm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String name,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Farm() when $default != null:
return $default(_that.metadata,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String name,  String? description)  $default,) {final _that = this;
switch (_that) {
case _Farm():
return $default(_that.metadata,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata metadata,  String name,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _Farm() when $default != null:
return $default(_that.metadata,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Farm implements Farm {
  const _Farm({required this.metadata, required this.name, this.description});
  factory _Farm.fromJson(Map<String, dynamic> json) => _$FarmFromJson(json);

@override final  AuditMetadata metadata;
@override final  String name;
@override final  String? description;

/// Create a copy of Farm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FarmCopyWith<_Farm> get copyWith => __$FarmCopyWithImpl<_Farm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FarmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Farm&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,name,description);

@override
String toString() {
  return 'Farm(metadata: $metadata, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$FarmCopyWith<$Res> implements $FarmCopyWith<$Res> {
  factory _$FarmCopyWith(_Farm value, $Res Function(_Farm) _then) = __$FarmCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata metadata, String name, String? description
});


@override $AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$FarmCopyWithImpl<$Res>
    implements _$FarmCopyWith<$Res> {
  __$FarmCopyWithImpl(this._self, this._then);

  final _Farm _self;
  final $Res Function(_Farm) _then;

/// Create a copy of Farm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? name = null,Object? description = freezed,}) {
  return _then(_Farm(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Farm
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
mixin _$CreateFarmInput {

 String get name; String? get description; bool get active;
/// Create a copy of CreateFarmInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFarmInputCopyWith<CreateFarmInput> get copyWith => _$CreateFarmInputCopyWithImpl<CreateFarmInput>(this as CreateFarmInput, _$identity);

  /// Serializes this CreateFarmInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFarmInput&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,active);

@override
String toString() {
  return 'CreateFarmInput(name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateFarmInputCopyWith<$Res>  {
  factory $CreateFarmInputCopyWith(CreateFarmInput value, $Res Function(CreateFarmInput) _then) = _$CreateFarmInputCopyWithImpl;
@useResult
$Res call({
 String name, String? description, bool active
});




}
/// @nodoc
class _$CreateFarmInputCopyWithImpl<$Res>
    implements $CreateFarmInputCopyWith<$Res> {
  _$CreateFarmInputCopyWithImpl(this._self, this._then);

  final CreateFarmInput _self;
  final $Res Function(CreateFarmInput) _then;

/// Create a copy of CreateFarmInput
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


/// Adds pattern-matching-related methods to [CreateFarmInput].
extension CreateFarmInputPatterns on CreateFarmInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFarmInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFarmInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFarmInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateFarmInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFarmInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFarmInput() when $default != null:
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
case _CreateFarmInput() when $default != null:
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
case _CreateFarmInput():
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
case _CreateFarmInput() when $default != null:
return $default(_that.name,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFarmInput implements CreateFarmInput {
  const _CreateFarmInput({required this.name, this.description, this.active = true});
  factory _CreateFarmInput.fromJson(Map<String, dynamic> json) => _$CreateFarmInputFromJson(json);

@override final  String name;
@override final  String? description;
@override@JsonKey() final  bool active;

/// Create a copy of CreateFarmInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFarmInputCopyWith<_CreateFarmInput> get copyWith => __$CreateFarmInputCopyWithImpl<_CreateFarmInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFarmInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFarmInput&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,active);

@override
String toString() {
  return 'CreateFarmInput(name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateFarmInputCopyWith<$Res> implements $CreateFarmInputCopyWith<$Res> {
  factory _$CreateFarmInputCopyWith(_CreateFarmInput value, $Res Function(_CreateFarmInput) _then) = __$CreateFarmInputCopyWithImpl;
@override @useResult
$Res call({
 String name, String? description, bool active
});




}
/// @nodoc
class __$CreateFarmInputCopyWithImpl<$Res>
    implements _$CreateFarmInputCopyWith<$Res> {
  __$CreateFarmInputCopyWithImpl(this._self, this._then);

  final _CreateFarmInput _self;
  final $Res Function(_CreateFarmInput) _then;

/// Create a copy of CreateFarmInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_CreateFarmInput(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateFarmInput {

 String get id; String get name; String? get description; bool get active;
/// Create a copy of UpdateFarmInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFarmInputCopyWith<UpdateFarmInput> get copyWith => _$UpdateFarmInputCopyWithImpl<UpdateFarmInput>(this as UpdateFarmInput, _$identity);

  /// Serializes this UpdateFarmInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFarmInput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,active);

@override
String toString() {
  return 'UpdateFarmInput(id: $id, name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateFarmInputCopyWith<$Res>  {
  factory $UpdateFarmInputCopyWith(UpdateFarmInput value, $Res Function(UpdateFarmInput) _then) = _$UpdateFarmInputCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, bool active
});




}
/// @nodoc
class _$UpdateFarmInputCopyWithImpl<$Res>
    implements $UpdateFarmInputCopyWith<$Res> {
  _$UpdateFarmInputCopyWithImpl(this._self, this._then);

  final UpdateFarmInput _self;
  final $Res Function(UpdateFarmInput) _then;

/// Create a copy of UpdateFarmInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFarmInput].
extension UpdateFarmInputPatterns on UpdateFarmInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFarmInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFarmInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFarmInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFarmInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFarmInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFarmInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFarmInput() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  bool active)  $default,) {final _that = this;
switch (_that) {
case _UpdateFarmInput():
return $default(_that.id,_that.name,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFarmInput() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFarmInput implements UpdateFarmInput {
  const _UpdateFarmInput({required this.id, required this.name, this.description, this.active = true});
  factory _UpdateFarmInput.fromJson(Map<String, dynamic> json) => _$UpdateFarmInputFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override@JsonKey() final  bool active;

/// Create a copy of UpdateFarmInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFarmInputCopyWith<_UpdateFarmInput> get copyWith => __$UpdateFarmInputCopyWithImpl<_UpdateFarmInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFarmInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFarmInput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,active);

@override
String toString() {
  return 'UpdateFarmInput(id: $id, name: $name, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateFarmInputCopyWith<$Res> implements $UpdateFarmInputCopyWith<$Res> {
  factory _$UpdateFarmInputCopyWith(_UpdateFarmInput value, $Res Function(_UpdateFarmInput) _then) = __$UpdateFarmInputCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, bool active
});




}
/// @nodoc
class __$UpdateFarmInputCopyWithImpl<$Res>
    implements _$UpdateFarmInputCopyWith<$Res> {
  __$UpdateFarmInputCopyWithImpl(this._self, this._then);

  final _UpdateFarmInput _self;
  final $Res Function(_UpdateFarmInput) _then;

/// Create a copy of UpdateFarmInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? active = null,}) {
  return _then(_UpdateFarmInput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
