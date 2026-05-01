// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Field {

 AuditMetadata get metadata; String get farmId; String get name; double get areaHectares; String? get description;
/// Create a copy of Field
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldCopyWith<Field> get copyWith => _$FieldCopyWithImpl<Field>(this as Field, _$identity);

  /// Serializes this Field to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Field&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,farmId,name,areaHectares,description);

@override
String toString() {
  return 'Field(metadata: $metadata, farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description)';
}


}

/// @nodoc
abstract mixin class $FieldCopyWith<$Res>  {
  factory $FieldCopyWith(Field value, $Res Function(Field) _then) = _$FieldCopyWithImpl;
@useResult
$Res call({
 AuditMetadata metadata, String farmId, String name, double areaHectares, String? description
});


$AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$FieldCopyWithImpl<$Res>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._self, this._then);

  final Field _self;
  final $Res Function(Field) _then;

/// Create a copy of Field
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,areaHectares: null == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Field
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [Field].
extension FieldPatterns on Field {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Field value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Field() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Field value)  $default,){
final _that = this;
switch (_that) {
case _Field():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Field value)?  $default,){
final _that = this;
switch (_that) {
case _Field() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String farmId,  String name,  double areaHectares,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Field() when $default != null:
return $default(_that.metadata,_that.farmId,_that.name,_that.areaHectares,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String farmId,  String name,  double areaHectares,  String? description)  $default,) {final _that = this;
switch (_that) {
case _Field():
return $default(_that.metadata,_that.farmId,_that.name,_that.areaHectares,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata metadata,  String farmId,  String name,  double areaHectares,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _Field() when $default != null:
return $default(_that.metadata,_that.farmId,_that.name,_that.areaHectares,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Field implements Field {
  const _Field({required this.metadata, required this.farmId, required this.name, required this.areaHectares, this.description});
  factory _Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

@override final  AuditMetadata metadata;
@override final  String farmId;
@override final  String name;
@override final  double areaHectares;
@override final  String? description;

/// Create a copy of Field
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldCopyWith<_Field> get copyWith => __$FieldCopyWithImpl<_Field>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Field&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,farmId,name,areaHectares,description);

@override
String toString() {
  return 'Field(metadata: $metadata, farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description)';
}


}

/// @nodoc
abstract mixin class _$FieldCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$FieldCopyWith(_Field value, $Res Function(_Field) _then) = __$FieldCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata metadata, String farmId, String name, double areaHectares, String? description
});


@override $AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$FieldCopyWithImpl<$Res>
    implements _$FieldCopyWith<$Res> {
  __$FieldCopyWithImpl(this._self, this._then);

  final _Field _self;
  final $Res Function(_Field) _then;

/// Create a copy of Field
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,}) {
  return _then(_Field(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,areaHectares: null == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Field
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
mixin _$CreateFieldInput {

 String get farmId; String get name; double get areaHectares; String? get description; bool get active;
/// Create a copy of CreateFieldInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFieldInputCopyWith<CreateFieldInput> get copyWith => _$CreateFieldInputCopyWithImpl<CreateFieldInput>(this as CreateFieldInput, _$identity);

  /// Serializes this CreateFieldInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFieldInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,name,areaHectares,description,active);

@override
String toString() {
  return 'CreateFieldInput(farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateFieldInputCopyWith<$Res>  {
  factory $CreateFieldInputCopyWith(CreateFieldInput value, $Res Function(CreateFieldInput) _then) = _$CreateFieldInputCopyWithImpl;
@useResult
$Res call({
 String farmId, String name, double areaHectares, String? description, bool active
});




}
/// @nodoc
class _$CreateFieldInputCopyWithImpl<$Res>
    implements $CreateFieldInputCopyWith<$Res> {
  _$CreateFieldInputCopyWithImpl(this._self, this._then);

  final CreateFieldInput _self;
  final $Res Function(CreateFieldInput) _then;

/// Create a copy of CreateFieldInput
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


/// Adds pattern-matching-related methods to [CreateFieldInput].
extension CreateFieldInputPatterns on CreateFieldInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFieldInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFieldInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFieldInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateFieldInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFieldInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFieldInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  String name,  double areaHectares,  String? description,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFieldInput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  String name,  double areaHectares,  String? description,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateFieldInput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  String name,  double areaHectares,  String? description,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateFieldInput() when $default != null:
return $default(_that.farmId,_that.name,_that.areaHectares,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFieldInput implements CreateFieldInput {
  const _CreateFieldInput({required this.farmId, required this.name, required this.areaHectares, this.description, this.active = true});
  factory _CreateFieldInput.fromJson(Map<String, dynamic> json) => _$CreateFieldInputFromJson(json);

@override final  String farmId;
@override final  String name;
@override final  double areaHectares;
@override final  String? description;
@override@JsonKey() final  bool active;

/// Create a copy of CreateFieldInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFieldInputCopyWith<_CreateFieldInput> get copyWith => __$CreateFieldInputCopyWithImpl<_CreateFieldInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFieldInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFieldInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,name,areaHectares,description,active);

@override
String toString() {
  return 'CreateFieldInput(farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateFieldInputCopyWith<$Res> implements $CreateFieldInputCopyWith<$Res> {
  factory _$CreateFieldInputCopyWith(_CreateFieldInput value, $Res Function(_CreateFieldInput) _then) = __$CreateFieldInputCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String name, double areaHectares, String? description, bool active
});




}
/// @nodoc
class __$CreateFieldInputCopyWithImpl<$Res>
    implements _$CreateFieldInputCopyWith<$Res> {
  __$CreateFieldInputCopyWithImpl(this._self, this._then);

  final _CreateFieldInput _self;
  final $Res Function(_CreateFieldInput) _then;

/// Create a copy of CreateFieldInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,Object? active = null,}) {
  return _then(_CreateFieldInput(
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
mixin _$UpdateFieldInput {

 String get id; String get farmId; String get name; double get areaHectares; String? get description; bool get active;
/// Create a copy of UpdateFieldInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFieldInputCopyWith<UpdateFieldInput> get copyWith => _$UpdateFieldInputCopyWithImpl<UpdateFieldInput>(this as UpdateFieldInput, _$identity);

  /// Serializes this UpdateFieldInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFieldInput&&(identical(other.id, id) || other.id == id)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,farmId,name,areaHectares,description,active);

@override
String toString() {
  return 'UpdateFieldInput(id: $id, farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateFieldInputCopyWith<$Res>  {
  factory $UpdateFieldInputCopyWith(UpdateFieldInput value, $Res Function(UpdateFieldInput) _then) = _$UpdateFieldInputCopyWithImpl;
@useResult
$Res call({
 String id, String farmId, String name, double areaHectares, String? description, bool active
});




}
/// @nodoc
class _$UpdateFieldInputCopyWithImpl<$Res>
    implements $UpdateFieldInputCopyWith<$Res> {
  _$UpdateFieldInputCopyWithImpl(this._self, this._then);

  final UpdateFieldInput _self;
  final $Res Function(UpdateFieldInput) _then;

/// Create a copy of UpdateFieldInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,Object? active = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,areaHectares: null == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFieldInput].
extension UpdateFieldInputPatterns on UpdateFieldInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFieldInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFieldInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFieldInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFieldInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFieldInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String farmId,  String name,  double areaHectares,  String? description,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFieldInput() when $default != null:
return $default(_that.id,_that.farmId,_that.name,_that.areaHectares,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String farmId,  String name,  double areaHectares,  String? description,  bool active)  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldInput():
return $default(_that.id,_that.farmId,_that.name,_that.areaHectares,_that.description,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String farmId,  String name,  double areaHectares,  String? description,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFieldInput() when $default != null:
return $default(_that.id,_that.farmId,_that.name,_that.areaHectares,_that.description,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFieldInput implements UpdateFieldInput {
  const _UpdateFieldInput({required this.id, required this.farmId, required this.name, required this.areaHectares, this.description, this.active = true});
  factory _UpdateFieldInput.fromJson(Map<String, dynamic> json) => _$UpdateFieldInputFromJson(json);

@override final  String id;
@override final  String farmId;
@override final  String name;
@override final  double areaHectares;
@override final  String? description;
@override@JsonKey() final  bool active;

/// Create a copy of UpdateFieldInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFieldInputCopyWith<_UpdateFieldInput> get copyWith => __$UpdateFieldInputCopyWithImpl<_UpdateFieldInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFieldInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFieldInput&&(identical(other.id, id) || other.id == id)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.name, name) || other.name == name)&&(identical(other.areaHectares, areaHectares) || other.areaHectares == areaHectares)&&(identical(other.description, description) || other.description == description)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,farmId,name,areaHectares,description,active);

@override
String toString() {
  return 'UpdateFieldInput(id: $id, farmId: $farmId, name: $name, areaHectares: $areaHectares, description: $description, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateFieldInputCopyWith<$Res> implements $UpdateFieldInputCopyWith<$Res> {
  factory _$UpdateFieldInputCopyWith(_UpdateFieldInput value, $Res Function(_UpdateFieldInput) _then) = __$UpdateFieldInputCopyWithImpl;
@override @useResult
$Res call({
 String id, String farmId, String name, double areaHectares, String? description, bool active
});




}
/// @nodoc
class __$UpdateFieldInputCopyWithImpl<$Res>
    implements _$UpdateFieldInputCopyWith<$Res> {
  __$UpdateFieldInputCopyWithImpl(this._self, this._then);

  final _UpdateFieldInput _self;
  final $Res Function(_UpdateFieldInput) _then;

/// Create a copy of UpdateFieldInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? farmId = null,Object? name = null,Object? areaHectares = null,Object? description = freezed,Object? active = null,}) {
  return _then(_UpdateFieldInput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,areaHectares: null == areaHectares ? _self.areaHectares : areaHectares // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
