// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthUserIdentity {

 String get sub; String get tenantId; String? get name; String? get email; String? get preferredUsername; String? get scope; List<String> get realmRoles; Map<String, List<String>> get resourceRoles;
/// Create a copy of AuthUserIdentity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthUserIdentityCopyWith<AuthUserIdentity> get copyWith => _$AuthUserIdentityCopyWithImpl<AuthUserIdentity>(this as AuthUserIdentity, _$identity);

  /// Serializes this AuthUserIdentity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthUserIdentity&&(identical(other.sub, sub) || other.sub == sub)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.preferredUsername, preferredUsername) || other.preferredUsername == preferredUsername)&&(identical(other.scope, scope) || other.scope == scope)&&const DeepCollectionEquality().equals(other.realmRoles, realmRoles)&&const DeepCollectionEquality().equals(other.resourceRoles, resourceRoles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sub,tenantId,name,email,preferredUsername,scope,const DeepCollectionEquality().hash(realmRoles),const DeepCollectionEquality().hash(resourceRoles));

@override
String toString() {
  return 'AuthUserIdentity(sub: $sub, tenantId: $tenantId, name: $name, email: $email, preferredUsername: $preferredUsername, scope: $scope, realmRoles: $realmRoles, resourceRoles: $resourceRoles)';
}


}

/// @nodoc
abstract mixin class $AuthUserIdentityCopyWith<$Res>  {
  factory $AuthUserIdentityCopyWith(AuthUserIdentity value, $Res Function(AuthUserIdentity) _then) = _$AuthUserIdentityCopyWithImpl;
@useResult
$Res call({
 String sub, String tenantId, String? name, String? email, String? preferredUsername, String? scope, List<String> realmRoles, Map<String, List<String>> resourceRoles
});




}
/// @nodoc
class _$AuthUserIdentityCopyWithImpl<$Res>
    implements $AuthUserIdentityCopyWith<$Res> {
  _$AuthUserIdentityCopyWithImpl(this._self, this._then);

  final AuthUserIdentity _self;
  final $Res Function(AuthUserIdentity) _then;

/// Create a copy of AuthUserIdentity
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


/// Adds pattern-matching-related methods to [AuthUserIdentity].
extension AuthUserIdentityPatterns on AuthUserIdentity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthUserIdentity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthUserIdentity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthUserIdentity value)  $default,){
final _that = this;
switch (_that) {
case _AuthUserIdentity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthUserIdentity value)?  $default,){
final _that = this;
switch (_that) {
case _AuthUserIdentity() when $default != null:
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
case _AuthUserIdentity() when $default != null:
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
case _AuthUserIdentity():
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
case _AuthUserIdentity() when $default != null:
return $default(_that.sub,_that.tenantId,_that.name,_that.email,_that.preferredUsername,_that.scope,_that.realmRoles,_that.resourceRoles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthUserIdentity implements AuthUserIdentity {
  const _AuthUserIdentity({required this.sub, required this.tenantId, this.name, this.email, this.preferredUsername, this.scope, final  List<String> realmRoles = const <String>[], final  Map<String, List<String>> resourceRoles = const <String, List<String>>{}}): _realmRoles = realmRoles,_resourceRoles = resourceRoles;
  factory _AuthUserIdentity.fromJson(Map<String, dynamic> json) => _$AuthUserIdentityFromJson(json);

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


/// Create a copy of AuthUserIdentity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthUserIdentityCopyWith<_AuthUserIdentity> get copyWith => __$AuthUserIdentityCopyWithImpl<_AuthUserIdentity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthUserIdentityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthUserIdentity&&(identical(other.sub, sub) || other.sub == sub)&&(identical(other.tenantId, tenantId) || other.tenantId == tenantId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.preferredUsername, preferredUsername) || other.preferredUsername == preferredUsername)&&(identical(other.scope, scope) || other.scope == scope)&&const DeepCollectionEquality().equals(other._realmRoles, _realmRoles)&&const DeepCollectionEquality().equals(other._resourceRoles, _resourceRoles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sub,tenantId,name,email,preferredUsername,scope,const DeepCollectionEquality().hash(_realmRoles),const DeepCollectionEquality().hash(_resourceRoles));

@override
String toString() {
  return 'AuthUserIdentity(sub: $sub, tenantId: $tenantId, name: $name, email: $email, preferredUsername: $preferredUsername, scope: $scope, realmRoles: $realmRoles, resourceRoles: $resourceRoles)';
}


}

/// @nodoc
abstract mixin class _$AuthUserIdentityCopyWith<$Res> implements $AuthUserIdentityCopyWith<$Res> {
  factory _$AuthUserIdentityCopyWith(_AuthUserIdentity value, $Res Function(_AuthUserIdentity) _then) = __$AuthUserIdentityCopyWithImpl;
@override @useResult
$Res call({
 String sub, String tenantId, String? name, String? email, String? preferredUsername, String? scope, List<String> realmRoles, Map<String, List<String>> resourceRoles
});




}
/// @nodoc
class __$AuthUserIdentityCopyWithImpl<$Res>
    implements _$AuthUserIdentityCopyWith<$Res> {
  __$AuthUserIdentityCopyWithImpl(this._self, this._then);

  final _AuthUserIdentity _self;
  final $Res Function(_AuthUserIdentity) _then;

/// Create a copy of AuthUserIdentity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sub = null,Object? tenantId = null,Object? name = freezed,Object? email = freezed,Object? preferredUsername = freezed,Object? scope = freezed,Object? realmRoles = null,Object? resourceRoles = null,}) {
  return _then(_AuthUserIdentity(
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
mixin _$AuthProfile {

 AuthUserIdentity get authUser; AppUser get user; List<FarmUserPermission> get permissions;
/// Create a copy of AuthProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthProfileCopyWith<AuthProfile> get copyWith => _$AuthProfileCopyWithImpl<AuthProfile>(this as AuthProfile, _$identity);

  /// Serializes this AuthProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthProfile&&(identical(other.authUser, authUser) || other.authUser == authUser)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.permissions, permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authUser,user,const DeepCollectionEquality().hash(permissions));

@override
String toString() {
  return 'AuthProfile(authUser: $authUser, user: $user, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $AuthProfileCopyWith<$Res>  {
  factory $AuthProfileCopyWith(AuthProfile value, $Res Function(AuthProfile) _then) = _$AuthProfileCopyWithImpl;
@useResult
$Res call({
 AuthUserIdentity authUser, AppUser user, List<FarmUserPermission> permissions
});


$AuthUserIdentityCopyWith<$Res> get authUser;$AppUserCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthProfileCopyWithImpl<$Res>
    implements $AuthProfileCopyWith<$Res> {
  _$AuthProfileCopyWithImpl(this._self, this._then);

  final AuthProfile _self;
  final $Res Function(AuthProfile) _then;

/// Create a copy of AuthProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authUser = null,Object? user = null,Object? permissions = null,}) {
  return _then(_self.copyWith(
authUser: null == authUser ? _self.authUser : authUser // ignore: cast_nullable_to_non_nullable
as AuthUserIdentity,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppUser,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<FarmUserPermission>,
  ));
}
/// Create a copy of AuthProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserIdentityCopyWith<$Res> get authUser {
  
  return $AuthUserIdentityCopyWith<$Res>(_self.authUser, (value) {
    return _then(_self.copyWith(authUser: value));
  });
}/// Create a copy of AuthProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppUserCopyWith<$Res> get user {
  
  return $AppUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthProfile].
extension AuthProfilePatterns on AuthProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthProfile value)  $default,){
final _that = this;
switch (_that) {
case _AuthProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthProfile value)?  $default,){
final _that = this;
switch (_that) {
case _AuthProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthUserIdentity authUser,  AppUser user,  List<FarmUserPermission> permissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthProfile() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthUserIdentity authUser,  AppUser user,  List<FarmUserPermission> permissions)  $default,) {final _that = this;
switch (_that) {
case _AuthProfile():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthUserIdentity authUser,  AppUser user,  List<FarmUserPermission> permissions)?  $default,) {final _that = this;
switch (_that) {
case _AuthProfile() when $default != null:
return $default(_that.authUser,_that.user,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthProfile implements AuthProfile {
  const _AuthProfile({required this.authUser, required this.user, final  List<FarmUserPermission> permissions = const <FarmUserPermission>[]}): _permissions = permissions;
  factory _AuthProfile.fromJson(Map<String, dynamic> json) => _$AuthProfileFromJson(json);

@override final  AuthUserIdentity authUser;
@override final  AppUser user;
 final  List<FarmUserPermission> _permissions;
@override@JsonKey() List<FarmUserPermission> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}


/// Create a copy of AuthProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthProfileCopyWith<_AuthProfile> get copyWith => __$AuthProfileCopyWithImpl<_AuthProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthProfile&&(identical(other.authUser, authUser) || other.authUser == authUser)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authUser,user,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'AuthProfile(authUser: $authUser, user: $user, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$AuthProfileCopyWith<$Res> implements $AuthProfileCopyWith<$Res> {
  factory _$AuthProfileCopyWith(_AuthProfile value, $Res Function(_AuthProfile) _then) = __$AuthProfileCopyWithImpl;
@override @useResult
$Res call({
 AuthUserIdentity authUser, AppUser user, List<FarmUserPermission> permissions
});


@override $AuthUserIdentityCopyWith<$Res> get authUser;@override $AppUserCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthProfileCopyWithImpl<$Res>
    implements _$AuthProfileCopyWith<$Res> {
  __$AuthProfileCopyWithImpl(this._self, this._then);

  final _AuthProfile _self;
  final $Res Function(_AuthProfile) _then;

/// Create a copy of AuthProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authUser = null,Object? user = null,Object? permissions = null,}) {
  return _then(_AuthProfile(
authUser: null == authUser ? _self.authUser : authUser // ignore: cast_nullable_to_non_nullable
as AuthUserIdentity,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppUser,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<FarmUserPermission>,
  ));
}

/// Create a copy of AuthProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserIdentityCopyWith<$Res> get authUser {
  
  return $AuthUserIdentityCopyWith<$Res>(_self.authUser, (value) {
    return _then(_self.copyWith(authUser: value));
  });
}/// Create a copy of AuthProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppUserCopyWith<$Res> get user {
  
  return $AppUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$AuthSession {

 String get accessToken; String? get refreshToken; String? get tokenType; int? get expiresIn; int? get refreshExpiresIn; AuthProfile? get profile;
/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSessionCopyWith<AuthSession> get copyWith => _$AuthSessionCopyWithImpl<AuthSession>(this as AuthSession, _$identity);

  /// Serializes this AuthSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSession&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.refreshExpiresIn, refreshExpiresIn) || other.refreshExpiresIn == refreshExpiresIn)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,tokenType,expiresIn,refreshExpiresIn,profile);

@override
String toString() {
  return 'AuthSession(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshExpiresIn: $refreshExpiresIn, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $AuthSessionCopyWith<$Res>  {
  factory $AuthSessionCopyWith(AuthSession value, $Res Function(AuthSession) _then) = _$AuthSessionCopyWithImpl;
@useResult
$Res call({
 String accessToken, String? refreshToken, String? tokenType, int? expiresIn, int? refreshExpiresIn, AuthProfile? profile
});


$AuthProfileCopyWith<$Res>? get profile;

}
/// @nodoc
class _$AuthSessionCopyWithImpl<$Res>
    implements $AuthSessionCopyWith<$Res> {
  _$AuthSessionCopyWithImpl(this._self, this._then);

  final AuthSession _self;
  final $Res Function(AuthSession) _then;

/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = freezed,Object? tokenType = freezed,Object? expiresIn = freezed,Object? refreshExpiresIn = freezed,Object? profile = freezed,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,refreshExpiresIn: freezed == refreshExpiresIn ? _self.refreshExpiresIn : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
as int?,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as AuthProfile?,
  ));
}
/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $AuthProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthSession].
extension AuthSessionPatterns on AuthSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthSession value)  $default,){
final _that = this;
switch (_that) {
case _AuthSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthSession value)?  $default,){
final _that = this;
switch (_that) {
case _AuthSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn,  int? refreshExpiresIn,  AuthProfile? profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthSession() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn,_that.refreshExpiresIn,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn,  int? refreshExpiresIn,  AuthProfile? profile)  $default,) {final _that = this;
switch (_that) {
case _AuthSession():
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn,_that.refreshExpiresIn,_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn,  int? refreshExpiresIn,  AuthProfile? profile)?  $default,) {final _that = this;
switch (_that) {
case _AuthSession() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn,_that.refreshExpiresIn,_that.profile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthSession implements AuthSession {
  const _AuthSession({required this.accessToken, this.refreshToken, this.tokenType, this.expiresIn, this.refreshExpiresIn, this.profile});
  factory _AuthSession.fromJson(Map<String, dynamic> json) => _$AuthSessionFromJson(json);

@override final  String accessToken;
@override final  String? refreshToken;
@override final  String? tokenType;
@override final  int? expiresIn;
@override final  int? refreshExpiresIn;
@override final  AuthProfile? profile;

/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthSessionCopyWith<_AuthSession> get copyWith => __$AuthSessionCopyWithImpl<_AuthSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSession&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.refreshExpiresIn, refreshExpiresIn) || other.refreshExpiresIn == refreshExpiresIn)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,tokenType,expiresIn,refreshExpiresIn,profile);

@override
String toString() {
  return 'AuthSession(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshExpiresIn: $refreshExpiresIn, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$AuthSessionCopyWith<$Res> implements $AuthSessionCopyWith<$Res> {
  factory _$AuthSessionCopyWith(_AuthSession value, $Res Function(_AuthSession) _then) = __$AuthSessionCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String? refreshToken, String? tokenType, int? expiresIn, int? refreshExpiresIn, AuthProfile? profile
});


@override $AuthProfileCopyWith<$Res>? get profile;

}
/// @nodoc
class __$AuthSessionCopyWithImpl<$Res>
    implements _$AuthSessionCopyWith<$Res> {
  __$AuthSessionCopyWithImpl(this._self, this._then);

  final _AuthSession _self;
  final $Res Function(_AuthSession) _then;

/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = freezed,Object? tokenType = freezed,Object? expiresIn = freezed,Object? refreshExpiresIn = freezed,Object? profile = freezed,}) {
  return _then(_AuthSession(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,refreshExpiresIn: freezed == refreshExpiresIn ? _self.refreshExpiresIn : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
as int?,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as AuthProfile?,
  ));
}

/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $AuthProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// @nodoc
mixin _$LoginCredentials {

 String get username; String get password;
/// Create a copy of LoginCredentials
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginCredentialsCopyWith<LoginCredentials> get copyWith => _$LoginCredentialsCopyWithImpl<LoginCredentials>(this as LoginCredentials, _$identity);

  /// Serializes this LoginCredentials to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginCredentials&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginCredentials(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginCredentialsCopyWith<$Res>  {
  factory $LoginCredentialsCopyWith(LoginCredentials value, $Res Function(LoginCredentials) _then) = _$LoginCredentialsCopyWithImpl;
@useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class _$LoginCredentialsCopyWithImpl<$Res>
    implements $LoginCredentialsCopyWith<$Res> {
  _$LoginCredentialsCopyWithImpl(this._self, this._then);

  final LoginCredentials _self;
  final $Res Function(LoginCredentials) _then;

/// Create a copy of LoginCredentials
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginCredentials].
extension LoginCredentialsPatterns on LoginCredentials {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginCredentials value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginCredentials() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginCredentials value)  $default,){
final _that = this;
switch (_that) {
case _LoginCredentials():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginCredentials value)?  $default,){
final _that = this;
switch (_that) {
case _LoginCredentials() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginCredentials() when $default != null:
return $default(_that.username,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String password)  $default,) {final _that = this;
switch (_that) {
case _LoginCredentials():
return $default(_that.username,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String password)?  $default,) {final _that = this;
switch (_that) {
case _LoginCredentials() when $default != null:
return $default(_that.username,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginCredentials implements LoginCredentials {
  const _LoginCredentials({required this.username, required this.password});
  factory _LoginCredentials.fromJson(Map<String, dynamic> json) => _$LoginCredentialsFromJson(json);

@override final  String username;
@override final  String password;

/// Create a copy of LoginCredentials
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginCredentialsCopyWith<_LoginCredentials> get copyWith => __$LoginCredentialsCopyWithImpl<_LoginCredentials>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginCredentialsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginCredentials&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginCredentials(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginCredentialsCopyWith<$Res> implements $LoginCredentialsCopyWith<$Res> {
  factory _$LoginCredentialsCopyWith(_LoginCredentials value, $Res Function(_LoginCredentials) _then) = __$LoginCredentialsCopyWithImpl;
@override @useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class __$LoginCredentialsCopyWithImpl<$Res>
    implements _$LoginCredentialsCopyWith<$Res> {
  __$LoginCredentialsCopyWithImpl(this._self, this._then);

  final _LoginCredentials _self;
  final $Res Function(_LoginCredentials) _then;

/// Create a copy of LoginCredentials
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,}) {
  return _then(_LoginCredentials(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
