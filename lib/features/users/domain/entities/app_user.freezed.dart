// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUser {

 AuditMetadata get metadata; String get keycloakUserId; String get name; String get email; bool get isAdmin;
/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUserCopyWith<AppUser> get copyWith => _$AppUserCopyWithImpl<AppUser>(this as AppUser, _$identity);

  /// Serializes this AppUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUser&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,keycloakUserId,name,email,isAdmin);

@override
String toString() {
  return 'AppUser(metadata: $metadata, keycloakUserId: $keycloakUserId, name: $name, email: $email, isAdmin: $isAdmin)';
}


}

/// @nodoc
abstract mixin class $AppUserCopyWith<$Res>  {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) _then) = _$AppUserCopyWithImpl;
@useResult
$Res call({
 AuditMetadata metadata, String keycloakUserId, String name, String email, bool isAdmin
});


$AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$AppUserCopyWithImpl<$Res>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._self, this._then);

  final AppUser _self;
  final $Res Function(AppUser) _then;

/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? keycloakUserId = null,Object? name = null,Object? email = null,Object? isAdmin = null,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,keycloakUserId: null == keycloakUserId ? _self.keycloakUserId : keycloakUserId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppUser].
extension AppUserPatterns on AppUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppUser value)  $default,){
final _that = this;
switch (_that) {
case _AppUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppUser value)?  $default,){
final _that = this;
switch (_that) {
case _AppUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String keycloakUserId,  String name,  String email,  bool isAdmin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppUser() when $default != null:
return $default(_that.metadata,_that.keycloakUserId,_that.name,_that.email,_that.isAdmin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String keycloakUserId,  String name,  String email,  bool isAdmin)  $default,) {final _that = this;
switch (_that) {
case _AppUser():
return $default(_that.metadata,_that.keycloakUserId,_that.name,_that.email,_that.isAdmin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata metadata,  String keycloakUserId,  String name,  String email,  bool isAdmin)?  $default,) {final _that = this;
switch (_that) {
case _AppUser() when $default != null:
return $default(_that.metadata,_that.keycloakUserId,_that.name,_that.email,_that.isAdmin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppUser implements AppUser {
  const _AppUser({required this.metadata, required this.keycloakUserId, required this.name, required this.email, this.isAdmin = false});
  factory _AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);

@override final  AuditMetadata metadata;
@override final  String keycloakUserId;
@override final  String name;
@override final  String email;
@override@JsonKey() final  bool isAdmin;

/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUserCopyWith<_AppUser> get copyWith => __$AppUserCopyWithImpl<_AppUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUser&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,keycloakUserId,name,email,isAdmin);

@override
String toString() {
  return 'AppUser(metadata: $metadata, keycloakUserId: $keycloakUserId, name: $name, email: $email, isAdmin: $isAdmin)';
}


}

/// @nodoc
abstract mixin class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) _then) = __$AppUserCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata metadata, String keycloakUserId, String name, String email, bool isAdmin
});


@override $AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(this._self, this._then);

  final _AppUser _self;
  final $Res Function(_AppUser) _then;

/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? keycloakUserId = null,Object? name = null,Object? email = null,Object? isAdmin = null,}) {
  return _then(_AppUser(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,keycloakUserId: null == keycloakUserId ? _self.keycloakUserId : keycloakUserId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AppUser
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
mixin _$CreateAppUserInput {

 String get keycloakUserId; String get name; String get email; bool get isAdmin; bool get active;
/// Create a copy of CreateAppUserInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAppUserInputCopyWith<CreateAppUserInput> get copyWith => _$CreateAppUserInputCopyWithImpl<CreateAppUserInput>(this as CreateAppUserInput, _$identity);

  /// Serializes this CreateAppUserInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAppUserInput&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keycloakUserId,name,email,isAdmin,active);

@override
String toString() {
  return 'CreateAppUserInput(keycloakUserId: $keycloakUserId, name: $name, email: $email, isAdmin: $isAdmin, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateAppUserInputCopyWith<$Res>  {
  factory $CreateAppUserInputCopyWith(CreateAppUserInput value, $Res Function(CreateAppUserInput) _then) = _$CreateAppUserInputCopyWithImpl;
@useResult
$Res call({
 String keycloakUserId, String name, String email, bool isAdmin, bool active
});




}
/// @nodoc
class _$CreateAppUserInputCopyWithImpl<$Res>
    implements $CreateAppUserInputCopyWith<$Res> {
  _$CreateAppUserInputCopyWithImpl(this._self, this._then);

  final CreateAppUserInput _self;
  final $Res Function(CreateAppUserInput) _then;

/// Create a copy of CreateAppUserInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keycloakUserId = null,Object? name = null,Object? email = null,Object? isAdmin = null,Object? active = null,}) {
  return _then(_self.copyWith(
keycloakUserId: null == keycloakUserId ? _self.keycloakUserId : keycloakUserId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAppUserInput].
extension CreateAppUserInputPatterns on CreateAppUserInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAppUserInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAppUserInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAppUserInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateAppUserInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAppUserInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAppUserInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String keycloakUserId,  String name,  String email,  bool isAdmin,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAppUserInput() when $default != null:
return $default(_that.keycloakUserId,_that.name,_that.email,_that.isAdmin,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String keycloakUserId,  String name,  String email,  bool isAdmin,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateAppUserInput():
return $default(_that.keycloakUserId,_that.name,_that.email,_that.isAdmin,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String keycloakUserId,  String name,  String email,  bool isAdmin,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateAppUserInput() when $default != null:
return $default(_that.keycloakUserId,_that.name,_that.email,_that.isAdmin,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateAppUserInput implements CreateAppUserInput {
  const _CreateAppUserInput({required this.keycloakUserId, required this.name, required this.email, this.isAdmin = false, this.active = true});
  factory _CreateAppUserInput.fromJson(Map<String, dynamic> json) => _$CreateAppUserInputFromJson(json);

@override final  String keycloakUserId;
@override final  String name;
@override final  String email;
@override@JsonKey() final  bool isAdmin;
@override@JsonKey() final  bool active;

/// Create a copy of CreateAppUserInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAppUserInputCopyWith<_CreateAppUserInput> get copyWith => __$CreateAppUserInputCopyWithImpl<_CreateAppUserInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAppUserInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAppUserInput&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keycloakUserId,name,email,isAdmin,active);

@override
String toString() {
  return 'CreateAppUserInput(keycloakUserId: $keycloakUserId, name: $name, email: $email, isAdmin: $isAdmin, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateAppUserInputCopyWith<$Res> implements $CreateAppUserInputCopyWith<$Res> {
  factory _$CreateAppUserInputCopyWith(_CreateAppUserInput value, $Res Function(_CreateAppUserInput) _then) = __$CreateAppUserInputCopyWithImpl;
@override @useResult
$Res call({
 String keycloakUserId, String name, String email, bool isAdmin, bool active
});




}
/// @nodoc
class __$CreateAppUserInputCopyWithImpl<$Res>
    implements _$CreateAppUserInputCopyWith<$Res> {
  __$CreateAppUserInputCopyWithImpl(this._self, this._then);

  final _CreateAppUserInput _self;
  final $Res Function(_CreateAppUserInput) _then;

/// Create a copy of CreateAppUserInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keycloakUserId = null,Object? name = null,Object? email = null,Object? isAdmin = null,Object? active = null,}) {
  return _then(_CreateAppUserInput(
keycloakUserId: null == keycloakUserId ? _self.keycloakUserId : keycloakUserId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateAppUserInput {

 String get id; String? get name; bool? get isAdmin; bool? get active;
/// Create a copy of UpdateAppUserInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAppUserInputCopyWith<UpdateAppUserInput> get copyWith => _$UpdateAppUserInputCopyWithImpl<UpdateAppUserInput>(this as UpdateAppUserInput, _$identity);

  /// Serializes this UpdateAppUserInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAppUserInput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isAdmin,active);

@override
String toString() {
  return 'UpdateAppUserInput(id: $id, name: $name, isAdmin: $isAdmin, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateAppUserInputCopyWith<$Res>  {
  factory $UpdateAppUserInputCopyWith(UpdateAppUserInput value, $Res Function(UpdateAppUserInput) _then) = _$UpdateAppUserInputCopyWithImpl;
@useResult
$Res call({
 String id, String? name, bool? isAdmin, bool? active
});




}
/// @nodoc
class _$UpdateAppUserInputCopyWithImpl<$Res>
    implements $UpdateAppUserInputCopyWith<$Res> {
  _$UpdateAppUserInputCopyWithImpl(this._self, this._then);

  final UpdateAppUserInput _self;
  final $Res Function(UpdateAppUserInput) _then;

/// Create a copy of UpdateAppUserInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? isAdmin = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isAdmin: freezed == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateAppUserInput].
extension UpdateAppUserInputPatterns on UpdateAppUserInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateAppUserInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateAppUserInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateAppUserInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateAppUserInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateAppUserInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateAppUserInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  bool? isAdmin,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateAppUserInput() when $default != null:
return $default(_that.id,_that.name,_that.isAdmin,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  bool? isAdmin,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdateAppUserInput():
return $default(_that.id,_that.name,_that.isAdmin,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  bool? isAdmin,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateAppUserInput() when $default != null:
return $default(_that.id,_that.name,_that.isAdmin,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateAppUserInput implements UpdateAppUserInput {
  const _UpdateAppUserInput({required this.id, this.name, this.isAdmin, this.active});
  factory _UpdateAppUserInput.fromJson(Map<String, dynamic> json) => _$UpdateAppUserInputFromJson(json);

@override final  String id;
@override final  String? name;
@override final  bool? isAdmin;
@override final  bool? active;

/// Create a copy of UpdateAppUserInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAppUserInputCopyWith<_UpdateAppUserInput> get copyWith => __$UpdateAppUserInputCopyWithImpl<_UpdateAppUserInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateAppUserInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAppUserInput&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isAdmin,active);

@override
String toString() {
  return 'UpdateAppUserInput(id: $id, name: $name, isAdmin: $isAdmin, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateAppUserInputCopyWith<$Res> implements $UpdateAppUserInputCopyWith<$Res> {
  factory _$UpdateAppUserInputCopyWith(_UpdateAppUserInput value, $Res Function(_UpdateAppUserInput) _then) = __$UpdateAppUserInputCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, bool? isAdmin, bool? active
});




}
/// @nodoc
class __$UpdateAppUserInputCopyWithImpl<$Res>
    implements _$UpdateAppUserInputCopyWith<$Res> {
  __$UpdateAppUserInputCopyWithImpl(this._self, this._then);

  final _UpdateAppUserInput _self;
  final $Res Function(_UpdateAppUserInput) _then;

/// Create a copy of UpdateAppUserInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? isAdmin = freezed,Object? active = freezed,}) {
  return _then(_UpdateAppUserInput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isAdmin: freezed == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
