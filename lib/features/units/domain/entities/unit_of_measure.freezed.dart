// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_of_measure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnitOfMeasure {

 AuditMetadata get metadata; String get name; String get symbol;
/// Create a copy of UnitOfMeasure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitOfMeasureCopyWith<UnitOfMeasure> get copyWith => _$UnitOfMeasureCopyWithImpl<UnitOfMeasure>(this as UnitOfMeasure, _$identity);

  /// Serializes this UnitOfMeasure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitOfMeasure&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,name,symbol);

@override
String toString() {
  return 'UnitOfMeasure(metadata: $metadata, name: $name, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class $UnitOfMeasureCopyWith<$Res>  {
  factory $UnitOfMeasureCopyWith(UnitOfMeasure value, $Res Function(UnitOfMeasure) _then) = _$UnitOfMeasureCopyWithImpl;
@useResult
$Res call({
 AuditMetadata metadata, String name, String symbol
});


$AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$UnitOfMeasureCopyWithImpl<$Res>
    implements $UnitOfMeasureCopyWith<$Res> {
  _$UnitOfMeasureCopyWithImpl(this._self, this._then);

  final UnitOfMeasure _self;
  final $Res Function(UnitOfMeasure) _then;

/// Create a copy of UnitOfMeasure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? name = null,Object? symbol = null,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UnitOfMeasure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [UnitOfMeasure].
extension UnitOfMeasurePatterns on UnitOfMeasure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnitOfMeasure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnitOfMeasure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnitOfMeasure value)  $default,){
final _that = this;
switch (_that) {
case _UnitOfMeasure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnitOfMeasure value)?  $default,){
final _that = this;
switch (_that) {
case _UnitOfMeasure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String name,  String symbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnitOfMeasure() when $default != null:
return $default(_that.metadata,_that.name,_that.symbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String name,  String symbol)  $default,) {final _that = this;
switch (_that) {
case _UnitOfMeasure():
return $default(_that.metadata,_that.name,_that.symbol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata metadata,  String name,  String symbol)?  $default,) {final _that = this;
switch (_that) {
case _UnitOfMeasure() when $default != null:
return $default(_that.metadata,_that.name,_that.symbol);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnitOfMeasure implements UnitOfMeasure {
  const _UnitOfMeasure({required this.metadata, required this.name, required this.symbol});
  factory _UnitOfMeasure.fromJson(Map<String, dynamic> json) => _$UnitOfMeasureFromJson(json);

@override final  AuditMetadata metadata;
@override final  String name;
@override final  String symbol;

/// Create a copy of UnitOfMeasure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitOfMeasureCopyWith<_UnitOfMeasure> get copyWith => __$UnitOfMeasureCopyWithImpl<_UnitOfMeasure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnitOfMeasureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitOfMeasure&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,name,symbol);

@override
String toString() {
  return 'UnitOfMeasure(metadata: $metadata, name: $name, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class _$UnitOfMeasureCopyWith<$Res> implements $UnitOfMeasureCopyWith<$Res> {
  factory _$UnitOfMeasureCopyWith(_UnitOfMeasure value, $Res Function(_UnitOfMeasure) _then) = __$UnitOfMeasureCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata metadata, String name, String symbol
});


@override $AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$UnitOfMeasureCopyWithImpl<$Res>
    implements _$UnitOfMeasureCopyWith<$Res> {
  __$UnitOfMeasureCopyWithImpl(this._self, this._then);

  final _UnitOfMeasure _self;
  final $Res Function(_UnitOfMeasure) _then;

/// Create a copy of UnitOfMeasure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? name = null,Object? symbol = null,}) {
  return _then(_UnitOfMeasure(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UnitOfMeasure
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
mixin _$CreateUnitInput {

 String get name; String get symbol; bool get active;
/// Create a copy of CreateUnitInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUnitInputCopyWith<CreateUnitInput> get copyWith => _$CreateUnitInputCopyWithImpl<CreateUnitInput>(this as CreateUnitInput, _$identity);

  /// Serializes this CreateUnitInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUnitInput&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,symbol,active);

@override
String toString() {
  return 'CreateUnitInput(name: $name, symbol: $symbol, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateUnitInputCopyWith<$Res>  {
  factory $CreateUnitInputCopyWith(CreateUnitInput value, $Res Function(CreateUnitInput) _then) = _$CreateUnitInputCopyWithImpl;
@useResult
$Res call({
 String name, String symbol, bool active
});




}
/// @nodoc
class _$CreateUnitInputCopyWithImpl<$Res>
    implements $CreateUnitInputCopyWith<$Res> {
  _$CreateUnitInputCopyWithImpl(this._self, this._then);

  final CreateUnitInput _self;
  final $Res Function(CreateUnitInput) _then;

/// Create a copy of CreateUnitInput
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


/// Adds pattern-matching-related methods to [CreateUnitInput].
extension CreateUnitInputPatterns on CreateUnitInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateUnitInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateUnitInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateUnitInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateUnitInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateUnitInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateUnitInput() when $default != null:
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
case _CreateUnitInput() when $default != null:
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
case _CreateUnitInput():
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
case _CreateUnitInput() when $default != null:
return $default(_that.name,_that.symbol,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateUnitInput implements CreateUnitInput {
  const _CreateUnitInput({required this.name, required this.symbol, this.active = true});
  factory _CreateUnitInput.fromJson(Map<String, dynamic> json) => _$CreateUnitInputFromJson(json);

@override final  String name;
@override final  String symbol;
@override@JsonKey() final  bool active;

/// Create a copy of CreateUnitInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUnitInputCopyWith<_CreateUnitInput> get copyWith => __$CreateUnitInputCopyWithImpl<_CreateUnitInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateUnitInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUnitInput&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,symbol,active);

@override
String toString() {
  return 'CreateUnitInput(name: $name, symbol: $symbol, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateUnitInputCopyWith<$Res> implements $CreateUnitInputCopyWith<$Res> {
  factory _$CreateUnitInputCopyWith(_CreateUnitInput value, $Res Function(_CreateUnitInput) _then) = __$CreateUnitInputCopyWithImpl;
@override @useResult
$Res call({
 String name, String symbol, bool active
});




}
/// @nodoc
class __$CreateUnitInputCopyWithImpl<$Res>
    implements _$CreateUnitInputCopyWith<$Res> {
  __$CreateUnitInputCopyWithImpl(this._self, this._then);

  final _CreateUnitInput _self;
  final $Res Function(_CreateUnitInput) _then;

/// Create a copy of CreateUnitInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? symbol = null,Object? active = null,}) {
  return _then(_CreateUnitInput(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateUnitInput {

 String get id; String get name; String get symbol; bool get active;
/// Create a copy of UpdateUnitInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUnitInputCopyWith<UpdateUnitInput> get copyWith => _$UpdateUnitInputCopyWithImpl<UpdateUnitInput>(this as UpdateUnitInput, _$identity);

  /// Serializes this UpdateUnitInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUnitInput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,symbol,active);

@override
String toString() {
  return 'UpdateUnitInput(id: $id, name: $name, symbol: $symbol, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateUnitInputCopyWith<$Res>  {
  factory $UpdateUnitInputCopyWith(UpdateUnitInput value, $Res Function(UpdateUnitInput) _then) = _$UpdateUnitInputCopyWithImpl;
@useResult
$Res call({
 String id, String name, String symbol, bool active
});




}
/// @nodoc
class _$UpdateUnitInputCopyWithImpl<$Res>
    implements $UpdateUnitInputCopyWith<$Res> {
  _$UpdateUnitInputCopyWithImpl(this._self, this._then);

  final UpdateUnitInput _self;
  final $Res Function(UpdateUnitInput) _then;

/// Create a copy of UpdateUnitInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? symbol = null,Object? active = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateUnitInput].
extension UpdateUnitInputPatterns on UpdateUnitInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUnitInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUnitInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUnitInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUnitInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUnitInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUnitInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String symbol,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUnitInput() when $default != null:
return $default(_that.id,_that.name,_that.symbol,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String symbol,  bool active)  $default,) {final _that = this;
switch (_that) {
case _UpdateUnitInput():
return $default(_that.id,_that.name,_that.symbol,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String symbol,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUnitInput() when $default != null:
return $default(_that.id,_that.name,_that.symbol,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateUnitInput implements UpdateUnitInput {
  const _UpdateUnitInput({required this.id, required this.name, required this.symbol, this.active = true});
  factory _UpdateUnitInput.fromJson(Map<String, dynamic> json) => _$UpdateUnitInputFromJson(json);

@override final  String id;
@override final  String name;
@override final  String symbol;
@override@JsonKey() final  bool active;

/// Create a copy of UpdateUnitInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUnitInputCopyWith<_UpdateUnitInput> get copyWith => __$UpdateUnitInputCopyWithImpl<_UpdateUnitInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateUnitInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUnitInput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,symbol,active);

@override
String toString() {
  return 'UpdateUnitInput(id: $id, name: $name, symbol: $symbol, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateUnitInputCopyWith<$Res> implements $UpdateUnitInputCopyWith<$Res> {
  factory _$UpdateUnitInputCopyWith(_UpdateUnitInput value, $Res Function(_UpdateUnitInput) _then) = __$UpdateUnitInputCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String symbol, bool active
});




}
/// @nodoc
class __$UpdateUnitInputCopyWithImpl<$Res>
    implements _$UpdateUnitInputCopyWith<$Res> {
  __$UpdateUnitInputCopyWithImpl(this._self, this._then);

  final _UpdateUnitInput _self;
  final $Res Function(_UpdateUnitInput) _then;

/// Create a copy of UpdateUnitInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? symbol = null,Object? active = null,}) {
  return _then(_UpdateUnitInput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
