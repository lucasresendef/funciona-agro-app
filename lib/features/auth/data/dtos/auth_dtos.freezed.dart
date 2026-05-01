// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthTokenResponseDto {

 String get accessToken; String? get refreshToken; String? get tokenType; int? get expiresIn; int? get refreshExpiresIn;
/// Create a copy of AuthTokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthTokenResponseDtoCopyWith<AuthTokenResponseDto> get copyWith => _$AuthTokenResponseDtoCopyWithImpl<AuthTokenResponseDto>(this as AuthTokenResponseDto, _$identity);

  /// Serializes this AuthTokenResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthTokenResponseDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.refreshExpiresIn, refreshExpiresIn) || other.refreshExpiresIn == refreshExpiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,tokenType,expiresIn,refreshExpiresIn);

@override
String toString() {
  return 'AuthTokenResponseDto(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshExpiresIn: $refreshExpiresIn)';
}


}

/// @nodoc
abstract mixin class $AuthTokenResponseDtoCopyWith<$Res>  {
  factory $AuthTokenResponseDtoCopyWith(AuthTokenResponseDto value, $Res Function(AuthTokenResponseDto) _then) = _$AuthTokenResponseDtoCopyWithImpl;
@useResult
$Res call({
 String accessToken, String? refreshToken, String? tokenType, int? expiresIn, int? refreshExpiresIn
});




}
/// @nodoc
class _$AuthTokenResponseDtoCopyWithImpl<$Res>
    implements $AuthTokenResponseDtoCopyWith<$Res> {
  _$AuthTokenResponseDtoCopyWithImpl(this._self, this._then);

  final AuthTokenResponseDto _self;
  final $Res Function(AuthTokenResponseDto) _then;

/// Create a copy of AuthTokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = freezed,Object? tokenType = freezed,Object? expiresIn = freezed,Object? refreshExpiresIn = freezed,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,refreshExpiresIn: freezed == refreshExpiresIn ? _self.refreshExpiresIn : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthTokenResponseDto].
extension AuthTokenResponseDtoPatterns on AuthTokenResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthTokenResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthTokenResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthTokenResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _AuthTokenResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthTokenResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _AuthTokenResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn,  int? refreshExpiresIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthTokenResponseDto() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn,_that.refreshExpiresIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn,  int? refreshExpiresIn)  $default,) {final _that = this;
switch (_that) {
case _AuthTokenResponseDto():
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn,_that.refreshExpiresIn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn,  int? refreshExpiresIn)?  $default,) {final _that = this;
switch (_that) {
case _AuthTokenResponseDto() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn,_that.refreshExpiresIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthTokenResponseDto implements AuthTokenResponseDto {
  const _AuthTokenResponseDto({required this.accessToken, this.refreshToken, this.tokenType, this.expiresIn, this.refreshExpiresIn});
  factory _AuthTokenResponseDto.fromJson(Map<String, dynamic> json) => _$AuthTokenResponseDtoFromJson(json);

@override final  String accessToken;
@override final  String? refreshToken;
@override final  String? tokenType;
@override final  int? expiresIn;
@override final  int? refreshExpiresIn;

/// Create a copy of AuthTokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthTokenResponseDtoCopyWith<_AuthTokenResponseDto> get copyWith => __$AuthTokenResponseDtoCopyWithImpl<_AuthTokenResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthTokenResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthTokenResponseDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.refreshExpiresIn, refreshExpiresIn) || other.refreshExpiresIn == refreshExpiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,tokenType,expiresIn,refreshExpiresIn);

@override
String toString() {
  return 'AuthTokenResponseDto(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshExpiresIn: $refreshExpiresIn)';
}


}

/// @nodoc
abstract mixin class _$AuthTokenResponseDtoCopyWith<$Res> implements $AuthTokenResponseDtoCopyWith<$Res> {
  factory _$AuthTokenResponseDtoCopyWith(_AuthTokenResponseDto value, $Res Function(_AuthTokenResponseDto) _then) = __$AuthTokenResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String? refreshToken, String? tokenType, int? expiresIn, int? refreshExpiresIn
});




}
/// @nodoc
class __$AuthTokenResponseDtoCopyWithImpl<$Res>
    implements _$AuthTokenResponseDtoCopyWith<$Res> {
  __$AuthTokenResponseDtoCopyWithImpl(this._self, this._then);

  final _AuthTokenResponseDto _self;
  final $Res Function(_AuthTokenResponseDto) _then;

/// Create a copy of AuthTokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = freezed,Object? tokenType = freezed,Object? expiresIn = freezed,Object? refreshExpiresIn = freezed,}) {
  return _then(_AuthTokenResponseDto(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,refreshExpiresIn: freezed == refreshExpiresIn ? _self.refreshExpiresIn : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AuthUserIdentityDto {

 String get sub; String get tenantId; String? get name; String? get email; String? get preferredUsername; String? get scope; List<String> get realmRoles; Map<String, List<String>> get resourceRoles;
/// Create a copy of AuthUserIdentityDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthUserIdentityDtoCopyWith<AuthUserIdentityDto> get copyWith => _$AuthUserIdentityDtoCopyWithImpl<AuthUserIdentityDto>(this as AuthUserIdentityDto, _$identity);

  /// Serializes this AuthUserIdentityDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthUserIdentityDto&&(identical(other.sub, sub) || other.sub == sub)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.preferredUsername, preferredUsername) || other.preferredUsername == preferredUsername)&&(identical(other.scope, scope) || other.scope == scope)&&const DeepCollectionEquality().equals(other.realmRoles, realmRoles)&&const DeepCollectionEquality().equals(other.resourceRoles, resourceRoles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sub,tenantId,name,email,preferredUsername,scope,const DeepCollectionEquality().hash(realmRoles),const DeepCollectionEquality().hash(resourceRoles));

@override
String toString() {
  return 'AuthUserIdentityDto(sub: $sub, tenantId: $tenantId, name: $name, email: $email, preferredUsername: $preferredUsername, scope: $scope, realmRoles: $realmRoles, resourceRoles: $resourceRoles)';
}


}

/// @nodoc
abstract mixin class $AuthUserIdentityDtoCopyWith<$Res>  {
  factory $AuthUserIdentityDtoCopyWith(AuthUserIdentityDto value, $Res Function(AuthUserIdentityDto) _then) = _$AuthUserIdentityDtoCopyWithImpl;
@useResult
$Res call({
 String sub, String tenantId, String? name, String? email, String? preferredUsername, String? scope, List<String> realmRoles, Map<String, List<String>> resourceRoles
});




}
/// @nodoc
class _$AuthUserIdentityDtoCopyWithImpl<$Res>
    implements $AuthUserIdentityDtoCopyWith<$Res> {
  _$AuthUserIdentityDtoCopyWithImpl(this._self, this._then);

  final AuthUserIdentityDto _self;
  final $Res Function(AuthUserIdentityDto) _then;

/// Create a copy of AuthUserIdentityDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sub = null,Object? tenantId = null,Object? name = freezed,Object? email = freezed,Object? preferredUsername = freezed,Object? scope = freezed,Object? realmRoles = null,Object? resourceRoles = null,}) {
  return _then(_self.copyWith(
sub: null == sub ? _self.sub : sub // ignore: cast_nullable_to_non_nullable
as String,tenantId: null == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,preferredUsername: freezed == preferredUsername ? _self.preferredUsername : preferredUsername // ignore: cast_nullable_to_non_nullable
as String?,scope: freezed == scope ? _self.scope : scope // ignore: cast_nullable_to_non_nullable
as String?,realmRoles: null == realmRoles ? _self.realmRoles : realmRoles // ignore: cast_nullable_to_non_nullable
as List<String>,resourceRoles: null == resourceRoles ? _self.resourceRoles : resourceRoles // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthUserIdentityDto].
extension AuthUserIdentityDtoPatterns on AuthUserIdentityDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthUserIdentityDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthUserIdentityDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthUserIdentityDto value)  $default,){
final _that = this;
switch (_that) {
case _AuthUserIdentityDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthUserIdentityDto value)?  $default,){
final _that = this;
switch (_that) {
case _AuthUserIdentityDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sub,  String tenantId,  String? name,  String? email,  String? preferredUsername,  String? scope,  List<String> realmRoles,  Map<String, List<String>> resourceRoles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthUserIdentityDto() when $default != null:
return $default(_that.sub,_that.tenantId,_that.name,_that.email,_that.preferredUsername,_that.scope,_that.realmRoles,_that.resourceRoles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sub,  String tenantId,  String? name,  String? email,  String? preferredUsername,  String? scope,  List<String> realmRoles,  Map<String, List<String>> resourceRoles)  $default,) {final _that = this;
switch (_that) {
case _AuthUserIdentityDto():
return $default(_that.sub,_that.tenantId,_that.name,_that.email,_that.preferredUsername,_that.scope,_that.realmRoles,_that.resourceRoles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sub,  String tenantId,  String? name,  String? email,  String? preferredUsername,  String? scope,  List<String> realmRoles,  Map<String, List<String>> resourceRoles)?  $default,) {final _that = this;
switch (_that) {
case _AuthUserIdentityDto() when $default != null:
return $default(_that.sub,_that.tenantId,_that.name,_that.email,_that.preferredUsername,_that.scope,_that.realmRoles,_that.resourceRoles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthUserIdentityDto implements AuthUserIdentityDto {
  const _AuthUserIdentityDto({required this.sub, required this.tenantId, this.name, this.email, this.preferredUsername, this.scope, final  List<String> realmRoles = const <String>[], final  Map<String, List<String>> resourceRoles = const <String, List<String>>{}}): _realmRoles = realmRoles,_resourceRoles = resourceRoles;
  factory _AuthUserIdentityDto.fromJson(Map<String, dynamic> json) => _$AuthUserIdentityDtoFromJson(json);

@override final  String sub;
@override final  String tenantId;
@override final  String? name;
@override final  String? email;
@override final  String? preferredUsername;
@override final  String? scope;
 final  List<String> _realmRoles;
@override@JsonKey() List<String> get realmRoles {
  if (_realmRoles is EqualUnmodifiableListView) return _realmRoles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_realmRoles);
}

 final  Map<String, List<String>> _resourceRoles;
@override@JsonKey() Map<String, List<String>> get resourceRoles {
  if (_resourceRoles is EqualUnmodifiableMapView) return _resourceRoles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_resourceRoles);
}


/// Create a copy of AuthUserIdentityDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthUserIdentityDtoCopyWith<_AuthUserIdentityDto> get copyWith => __$AuthUserIdentityDtoCopyWithImpl<_AuthUserIdentityDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthUserIdentityDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthUserIdentityDto&&(identical(other.sub, sub) || other.sub == sub)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.preferredUsername, preferredUsername) || other.preferredUsername == preferredUsername)&&(identical(other.scope, scope) || other.scope == scope)&&const DeepCollectionEquality().equals(other._realmRoles, _realmRoles)&&const DeepCollectionEquality().equals(other._resourceRoles, _resourceRoles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sub,tenantId,name,email,preferredUsername,scope,const DeepCollectionEquality().hash(_realmRoles),const DeepCollectionEquality().hash(_resourceRoles));

@override
String toString() {
  return 'AuthUserIdentityDto(sub: $sub, tenantId: $tenantId, name: $name, email: $email, preferredUsername: $preferredUsername, scope: $scope, realmRoles: $realmRoles, resourceRoles: $resourceRoles)';
}


}

/// @nodoc
abstract mixin class _$AuthUserIdentityDtoCopyWith<$Res> implements $AuthUserIdentityDtoCopyWith<$Res> {
  factory _$AuthUserIdentityDtoCopyWith(_AuthUserIdentityDto value, $Res Function(_AuthUserIdentityDto) _then) = __$AuthUserIdentityDtoCopyWithImpl;
@override @useResult
$Res call({
 String sub, String tenantId, String? name, String? email, String? preferredUsername, String? scope, List<String> realmRoles, Map<String, List<String>> resourceRoles
});




}
/// @nodoc
class __$AuthUserIdentityDtoCopyWithImpl<$Res>
    implements _$AuthUserIdentityDtoCopyWith<$Res> {
  __$AuthUserIdentityDtoCopyWithImpl(this._self, this._then);

  final _AuthUserIdentityDto _self;
  final $Res Function(_AuthUserIdentityDto) _then;

/// Create a copy of AuthUserIdentityDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sub = null,Object? tenantId = null,Object? name = freezed,Object? email = freezed,Object? preferredUsername = freezed,Object? scope = freezed,Object? realmRoles = null,Object? resourceRoles = null,}) {
  return _then(_AuthUserIdentityDto(
sub: null == sub ? _self.sub : sub // ignore: cast_nullable_to_non_nullable
as String,tenantId: null == tenantId ? _self.tenantId : tenantId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,preferredUsername: freezed == preferredUsername ? _self.preferredUsername : preferredUsername // ignore: cast_nullable_to_non_nullable
as String?,scope: freezed == scope ? _self.scope : scope // ignore: cast_nullable_to_non_nullable
as String?,realmRoles: null == realmRoles ? _self._realmRoles : realmRoles // ignore: cast_nullable_to_non_nullable
as List<String>,resourceRoles: null == resourceRoles ? _self._resourceRoles : resourceRoles // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,
  ));
}


}


/// @nodoc
mixin _$AuthProfilePayloadDto {

 AuthUserIdentityDto get authUser; AppUserDto get user; List<FarmUserPermissionDto> get permissions;
/// Create a copy of AuthProfilePayloadDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthProfilePayloadDtoCopyWith<AuthProfilePayloadDto> get copyWith => _$AuthProfilePayloadDtoCopyWithImpl<AuthProfilePayloadDto>(this as AuthProfilePayloadDto, _$identity);

  /// Serializes this AuthProfilePayloadDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthProfilePayloadDto&&(identical(other.authUser, authUser) || other.authUser == authUser)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.permissions, permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authUser,user,const DeepCollectionEquality().hash(permissions));

@override
String toString() {
  return 'AuthProfilePayloadDto(authUser: $authUser, user: $user, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $AuthProfilePayloadDtoCopyWith<$Res>  {
  factory $AuthProfilePayloadDtoCopyWith(AuthProfilePayloadDto value, $Res Function(AuthProfilePayloadDto) _then) = _$AuthProfilePayloadDtoCopyWithImpl;
@useResult
$Res call({
 AuthUserIdentityDto authUser, AppUserDto user, List<FarmUserPermissionDto> permissions
});


$AuthUserIdentityDtoCopyWith<$Res> get authUser;$AppUserDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthProfilePayloadDtoCopyWithImpl<$Res>
    implements $AuthProfilePayloadDtoCopyWith<$Res> {
  _$AuthProfilePayloadDtoCopyWithImpl(this._self, this._then);

  final AuthProfilePayloadDto _self;
  final $Res Function(AuthProfilePayloadDto) _then;

/// Create a copy of AuthProfilePayloadDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authUser = null,Object? user = null,Object? permissions = null,}) {
  return _then(_self.copyWith(
authUser: null == authUser ? _self.authUser : authUser // ignore: cast_nullable_to_non_nullable
as AuthUserIdentityDto,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppUserDto,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<FarmUserPermissionDto>,
  ));
}
/// Create a copy of AuthProfilePayloadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserIdentityDtoCopyWith<$Res> get authUser {
  
  return $AuthUserIdentityDtoCopyWith<$Res>(_self.authUser, (value) {
    return _then(_self.copyWith(authUser: value));
  });
}/// Create a copy of AuthProfilePayloadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppUserDtoCopyWith<$Res> get user {
  
  return $AppUserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthProfilePayloadDto].
extension AuthProfilePayloadDtoPatterns on AuthProfilePayloadDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthProfilePayloadDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthProfilePayloadDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthProfilePayloadDto value)  $default,){
final _that = this;
switch (_that) {
case _AuthProfilePayloadDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthProfilePayloadDto value)?  $default,){
final _that = this;
switch (_that) {
case _AuthProfilePayloadDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthUserIdentityDto authUser,  AppUserDto user,  List<FarmUserPermissionDto> permissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthProfilePayloadDto() when $default != null:
return $default(_that.authUser,_that.user,_that.permissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthUserIdentityDto authUser,  AppUserDto user,  List<FarmUserPermissionDto> permissions)  $default,) {final _that = this;
switch (_that) {
case _AuthProfilePayloadDto():
return $default(_that.authUser,_that.user,_that.permissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthUserIdentityDto authUser,  AppUserDto user,  List<FarmUserPermissionDto> permissions)?  $default,) {final _that = this;
switch (_that) {
case _AuthProfilePayloadDto() when $default != null:
return $default(_that.authUser,_that.user,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthProfilePayloadDto implements AuthProfilePayloadDto {
  const _AuthProfilePayloadDto({required this.authUser, required this.user, final  List<FarmUserPermissionDto> permissions = const <FarmUserPermissionDto>[]}): _permissions = permissions;
  factory _AuthProfilePayloadDto.fromJson(Map<String, dynamic> json) => _$AuthProfilePayloadDtoFromJson(json);

@override final  AuthUserIdentityDto authUser;
@override final  AppUserDto user;
 final  List<FarmUserPermissionDto> _permissions;
@override@JsonKey() List<FarmUserPermissionDto> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}


/// Create a copy of AuthProfilePayloadDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthProfilePayloadDtoCopyWith<_AuthProfilePayloadDto> get copyWith => __$AuthProfilePayloadDtoCopyWithImpl<_AuthProfilePayloadDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthProfilePayloadDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthProfilePayloadDto&&(identical(other.authUser, authUser) || other.authUser == authUser)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authUser,user,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'AuthProfilePayloadDto(authUser: $authUser, user: $user, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$AuthProfilePayloadDtoCopyWith<$Res> implements $AuthProfilePayloadDtoCopyWith<$Res> {
  factory _$AuthProfilePayloadDtoCopyWith(_AuthProfilePayloadDto value, $Res Function(_AuthProfilePayloadDto) _then) = __$AuthProfilePayloadDtoCopyWithImpl;
@override @useResult
$Res call({
 AuthUserIdentityDto authUser, AppUserDto user, List<FarmUserPermissionDto> permissions
});


@override $AuthUserIdentityDtoCopyWith<$Res> get authUser;@override $AppUserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthProfilePayloadDtoCopyWithImpl<$Res>
    implements _$AuthProfilePayloadDtoCopyWith<$Res> {
  __$AuthProfilePayloadDtoCopyWithImpl(this._self, this._then);

  final _AuthProfilePayloadDto _self;
  final $Res Function(_AuthProfilePayloadDto) _then;

/// Create a copy of AuthProfilePayloadDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authUser = null,Object? user = null,Object? permissions = null,}) {
  return _then(_AuthProfilePayloadDto(
authUser: null == authUser ? _self.authUser : authUser // ignore: cast_nullable_to_non_nullable
as AuthUserIdentityDto,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppUserDto,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<FarmUserPermissionDto>,
  ));
}

/// Create a copy of AuthProfilePayloadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserIdentityDtoCopyWith<$Res> get authUser {
  
  return $AuthUserIdentityDtoCopyWith<$Res>(_self.authUser, (value) {
    return _then(_self.copyWith(authUser: value));
  });
}/// Create a copy of AuthProfilePayloadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppUserDtoCopyWith<$Res> get user {
  
  return $AppUserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
