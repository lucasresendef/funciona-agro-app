// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUserDto {

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get keycloakUserId; String get name; String get email; bool get isAdmin;
/// Create a copy of AppUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUserDtoCopyWith<AppUserDto> get copyWith => _$AppUserDtoCopyWithImpl<AppUserDto>(this as AppUserDto, _$identity);

  /// Serializes this AppUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,keycloakUserId,name,email,isAdmin);

@override
String toString() {
  return 'AppUserDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, keycloakUserId: $keycloakUserId, name: $name, email: $email, isAdmin: $isAdmin)';
}


}

/// @nodoc
abstract mixin class $AppUserDtoCopyWith<$Res>  {
  factory $AppUserDtoCopyWith(AppUserDto value, $Res Function(AppUserDto) _then) = _$AppUserDtoCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String keycloakUserId, String name, String email, bool isAdmin
});




}
/// @nodoc
class _$AppUserDtoCopyWithImpl<$Res>
    implements $AppUserDtoCopyWith<$Res> {
  _$AppUserDtoCopyWithImpl(this._self, this._then);

  final AppUserDto _self;
  final $Res Function(AppUserDto) _then;

/// Create a copy of AppUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? keycloakUserId = null,Object? name = null,Object? email = null,Object? isAdmin = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,keycloakUserId: null == keycloakUserId ? _self.keycloakUserId : keycloakUserId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppUserDto].
extension AppUserDtoPatterns on AppUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppUserDto value)  $default,){
final _that = this;
switch (_that) {
case _AppUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _AppUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String keycloakUserId,  String name,  String email,  bool isAdmin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppUserDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.keycloakUserId,_that.name,_that.email,_that.isAdmin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String keycloakUserId,  String name,  String email,  bool isAdmin)  $default,) {final _that = this;
switch (_that) {
case _AppUserDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.keycloakUserId,_that.name,_that.email,_that.isAdmin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String keycloakUserId,  String name,  String email,  bool isAdmin)?  $default,) {final _that = this;
switch (_that) {
case _AppUserDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.keycloakUserId,_that.name,_that.email,_that.isAdmin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppUserDto implements AppUserDto {
  const _AppUserDto({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.keycloakUserId, required this.name, required this.email, this.isAdmin = false});
  factory _AppUserDto.fromJson(Map<String, dynamic> json) => _$AppUserDtoFromJson(json);

@override final  String id;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String keycloakUserId;
@override final  String name;
@override final  String email;
@override@JsonKey() final  bool isAdmin;

/// Create a copy of AppUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUserDtoCopyWith<_AppUserDto> get copyWith => __$AppUserDtoCopyWithImpl<_AppUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,keycloakUserId,name,email,isAdmin);

@override
String toString() {
  return 'AppUserDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, keycloakUserId: $keycloakUserId, name: $name, email: $email, isAdmin: $isAdmin)';
}


}

/// @nodoc
abstract mixin class _$AppUserDtoCopyWith<$Res> implements $AppUserDtoCopyWith<$Res> {
  factory _$AppUserDtoCopyWith(_AppUserDto value, $Res Function(_AppUserDto) _then) = __$AppUserDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String keycloakUserId, String name, String email, bool isAdmin
});




}
/// @nodoc
class __$AppUserDtoCopyWithImpl<$Res>
    implements _$AppUserDtoCopyWith<$Res> {
  __$AppUserDtoCopyWithImpl(this._self, this._then);

  final _AppUserDto _self;
  final $Res Function(_AppUserDto) _then;

/// Create a copy of AppUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? keycloakUserId = null,Object? name = null,Object? email = null,Object? isAdmin = null,}) {
  return _then(_AppUserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,keycloakUserId: null == keycloakUserId ? _self.keycloakUserId : keycloakUserId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CreateAppUserRequestDto {

 String get keycloakUserId; String get name; String get email; bool get isAdmin; bool get active;
/// Create a copy of CreateAppUserRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAppUserRequestDtoCopyWith<CreateAppUserRequestDto> get copyWith => _$CreateAppUserRequestDtoCopyWithImpl<CreateAppUserRequestDto>(this as CreateAppUserRequestDto, _$identity);

  /// Serializes this CreateAppUserRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAppUserRequestDto&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keycloakUserId,name,email,isAdmin,active);

@override
String toString() {
  return 'CreateAppUserRequestDto(keycloakUserId: $keycloakUserId, name: $name, email: $email, isAdmin: $isAdmin, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateAppUserRequestDtoCopyWith<$Res>  {
  factory $CreateAppUserRequestDtoCopyWith(CreateAppUserRequestDto value, $Res Function(CreateAppUserRequestDto) _then) = _$CreateAppUserRequestDtoCopyWithImpl;
@useResult
$Res call({
 String keycloakUserId, String name, String email, bool isAdmin, bool active
});




}
/// @nodoc
class _$CreateAppUserRequestDtoCopyWithImpl<$Res>
    implements $CreateAppUserRequestDtoCopyWith<$Res> {
  _$CreateAppUserRequestDtoCopyWithImpl(this._self, this._then);

  final CreateAppUserRequestDto _self;
  final $Res Function(CreateAppUserRequestDto) _then;

/// Create a copy of CreateAppUserRequestDto
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


/// Adds pattern-matching-related methods to [CreateAppUserRequestDto].
extension CreateAppUserRequestDtoPatterns on CreateAppUserRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAppUserRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAppUserRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAppUserRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateAppUserRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAppUserRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAppUserRequestDto() when $default != null:
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
case _CreateAppUserRequestDto() when $default != null:
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
case _CreateAppUserRequestDto():
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
case _CreateAppUserRequestDto() when $default != null:
return $default(_that.keycloakUserId,_that.name,_that.email,_that.isAdmin,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateAppUserRequestDto implements CreateAppUserRequestDto {
  const _CreateAppUserRequestDto({required this.keycloakUserId, required this.name, required this.email, this.isAdmin = false, this.active = true});
  factory _CreateAppUserRequestDto.fromJson(Map<String, dynamic> json) => _$CreateAppUserRequestDtoFromJson(json);

@override final  String keycloakUserId;
@override final  String name;
@override final  String email;
@override@JsonKey() final  bool isAdmin;
@override@JsonKey() final  bool active;

/// Create a copy of CreateAppUserRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAppUserRequestDtoCopyWith<_CreateAppUserRequestDto> get copyWith => __$CreateAppUserRequestDtoCopyWithImpl<_CreateAppUserRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAppUserRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAppUserRequestDto&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keycloakUserId,name,email,isAdmin,active);

@override
String toString() {
  return 'CreateAppUserRequestDto(keycloakUserId: $keycloakUserId, name: $name, email: $email, isAdmin: $isAdmin, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateAppUserRequestDtoCopyWith<$Res> implements $CreateAppUserRequestDtoCopyWith<$Res> {
  factory _$CreateAppUserRequestDtoCopyWith(_CreateAppUserRequestDto value, $Res Function(_CreateAppUserRequestDto) _then) = __$CreateAppUserRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String keycloakUserId, String name, String email, bool isAdmin, bool active
});




}
/// @nodoc
class __$CreateAppUserRequestDtoCopyWithImpl<$Res>
    implements _$CreateAppUserRequestDtoCopyWith<$Res> {
  __$CreateAppUserRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateAppUserRequestDto _self;
  final $Res Function(_CreateAppUserRequestDto) _then;

/// Create a copy of CreateAppUserRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keycloakUserId = null,Object? name = null,Object? email = null,Object? isAdmin = null,Object? active = null,}) {
  return _then(_CreateAppUserRequestDto(
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
mixin _$UpdateAppUserRequestDto {

 String? get name; bool? get isAdmin; bool? get active;
/// Create a copy of UpdateAppUserRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAppUserRequestDtoCopyWith<UpdateAppUserRequestDto> get copyWith => _$UpdateAppUserRequestDtoCopyWithImpl<UpdateAppUserRequestDto>(this as UpdateAppUserRequestDto, _$identity);

  /// Serializes this UpdateAppUserRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAppUserRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,isAdmin,active);

@override
String toString() {
  return 'UpdateAppUserRequestDto(name: $name, isAdmin: $isAdmin, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateAppUserRequestDtoCopyWith<$Res>  {
  factory $UpdateAppUserRequestDtoCopyWith(UpdateAppUserRequestDto value, $Res Function(UpdateAppUserRequestDto) _then) = _$UpdateAppUserRequestDtoCopyWithImpl;
@useResult
$Res call({
 String? name, bool? isAdmin, bool? active
});




}
/// @nodoc
class _$UpdateAppUserRequestDtoCopyWithImpl<$Res>
    implements $UpdateAppUserRequestDtoCopyWith<$Res> {
  _$UpdateAppUserRequestDtoCopyWithImpl(this._self, this._then);

  final UpdateAppUserRequestDto _self;
  final $Res Function(UpdateAppUserRequestDto) _then;

/// Create a copy of UpdateAppUserRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? isAdmin = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isAdmin: freezed == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateAppUserRequestDto].
extension UpdateAppUserRequestDtoPatterns on UpdateAppUserRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateAppUserRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateAppUserRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateAppUserRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateAppUserRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateAppUserRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateAppUserRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  bool? isAdmin,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateAppUserRequestDto() when $default != null:
return $default(_that.name,_that.isAdmin,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  bool? isAdmin,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdateAppUserRequestDto():
return $default(_that.name,_that.isAdmin,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  bool? isAdmin,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateAppUserRequestDto() when $default != null:
return $default(_that.name,_that.isAdmin,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateAppUserRequestDto implements UpdateAppUserRequestDto {
  const _UpdateAppUserRequestDto({this.name, this.isAdmin, this.active});
  factory _UpdateAppUserRequestDto.fromJson(Map<String, dynamic> json) => _$UpdateAppUserRequestDtoFromJson(json);

@override final  String? name;
@override final  bool? isAdmin;
@override final  bool? active;

/// Create a copy of UpdateAppUserRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAppUserRequestDtoCopyWith<_UpdateAppUserRequestDto> get copyWith => __$UpdateAppUserRequestDtoCopyWithImpl<_UpdateAppUserRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateAppUserRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAppUserRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,isAdmin,active);

@override
String toString() {
  return 'UpdateAppUserRequestDto(name: $name, isAdmin: $isAdmin, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateAppUserRequestDtoCopyWith<$Res> implements $UpdateAppUserRequestDtoCopyWith<$Res> {
  factory _$UpdateAppUserRequestDtoCopyWith(_UpdateAppUserRequestDto value, $Res Function(_UpdateAppUserRequestDto) _then) = __$UpdateAppUserRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, bool? isAdmin, bool? active
});




}
/// @nodoc
class __$UpdateAppUserRequestDtoCopyWithImpl<$Res>
    implements _$UpdateAppUserRequestDtoCopyWith<$Res> {
  __$UpdateAppUserRequestDtoCopyWithImpl(this._self, this._then);

  final _UpdateAppUserRequestDto _self;
  final $Res Function(_UpdateAppUserRequestDto) _then;

/// Create a copy of UpdateAppUserRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? isAdmin = freezed,Object? active = freezed,}) {
  return _then(_UpdateAppUserRequestDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isAdmin: freezed == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
