// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm_user_permission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FarmUserPermission {

 AuditMetadata get metadata; String get farmId; String get keycloakUserId; String get userName; String get userEmail; FarmUserRole get role;
/// Create a copy of FarmUserPermission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FarmUserPermissionCopyWith<FarmUserPermission> get copyWith => _$FarmUserPermissionCopyWithImpl<FarmUserPermission>(this as FarmUserPermission, _$identity);

  /// Serializes this FarmUserPermission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FarmUserPermission&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,farmId,keycloakUserId,userName,userEmail,role);

@override
String toString() {
  return 'FarmUserPermission(metadata: $metadata, farmId: $farmId, keycloakUserId: $keycloakUserId, userName: $userName, userEmail: $userEmail, role: $role)';
}


}

/// @nodoc
abstract mixin class $FarmUserPermissionCopyWith<$Res>  {
  factory $FarmUserPermissionCopyWith(FarmUserPermission value, $Res Function(FarmUserPermission) _then) = _$FarmUserPermissionCopyWithImpl;
@useResult
$Res call({
 AuditMetadata metadata, String farmId, String keycloakUserId, String userName, String userEmail, FarmUserRole role
});


$AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$FarmUserPermissionCopyWithImpl<$Res>
    implements $FarmUserPermissionCopyWith<$Res> {
  _$FarmUserPermissionCopyWithImpl(this._self, this._then);

  final FarmUserPermission _self;
  final $Res Function(FarmUserPermission) _then;

/// Create a copy of FarmUserPermission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? farmId = null,Object? keycloakUserId = null,Object? userName = null,Object? userEmail = null,Object? role = null,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,keycloakUserId: null == keycloakUserId ? _self.keycloakUserId : keycloakUserId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,userEmail: null == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole,
  ));
}
/// Create a copy of FarmUserPermission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuditMetadataCopyWith<$Res> get metadata {
  
  return $AuditMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [FarmUserPermission].
extension FarmUserPermissionPatterns on FarmUserPermission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FarmUserPermission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FarmUserPermission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FarmUserPermission value)  $default,){
final _that = this;
switch (_that) {
case _FarmUserPermission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FarmUserPermission value)?  $default,){
final _that = this;
switch (_that) {
case _FarmUserPermission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String farmId,  String keycloakUserId,  String userName,  String userEmail,  FarmUserRole role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FarmUserPermission() when $default != null:
return $default(_that.metadata,_that.farmId,_that.keycloakUserId,_that.userName,_that.userEmail,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuditMetadata metadata,  String farmId,  String keycloakUserId,  String userName,  String userEmail,  FarmUserRole role)  $default,) {final _that = this;
switch (_that) {
case _FarmUserPermission():
return $default(_that.metadata,_that.farmId,_that.keycloakUserId,_that.userName,_that.userEmail,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuditMetadata metadata,  String farmId,  String keycloakUserId,  String userName,  String userEmail,  FarmUserRole role)?  $default,) {final _that = this;
switch (_that) {
case _FarmUserPermission() when $default != null:
return $default(_that.metadata,_that.farmId,_that.keycloakUserId,_that.userName,_that.userEmail,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FarmUserPermission implements FarmUserPermission {
  const _FarmUserPermission({required this.metadata, required this.farmId, required this.keycloakUserId, required this.userName, required this.userEmail, required this.role});
  factory _FarmUserPermission.fromJson(Map<String, dynamic> json) => _$FarmUserPermissionFromJson(json);

@override final  AuditMetadata metadata;
@override final  String farmId;
@override final  String keycloakUserId;
@override final  String userName;
@override final  String userEmail;
@override final  FarmUserRole role;

/// Create a copy of FarmUserPermission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FarmUserPermissionCopyWith<_FarmUserPermission> get copyWith => __$FarmUserPermissionCopyWithImpl<_FarmUserPermission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FarmUserPermissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FarmUserPermission&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata,farmId,keycloakUserId,userName,userEmail,role);

@override
String toString() {
  return 'FarmUserPermission(metadata: $metadata, farmId: $farmId, keycloakUserId: $keycloakUserId, userName: $userName, userEmail: $userEmail, role: $role)';
}


}

/// @nodoc
abstract mixin class _$FarmUserPermissionCopyWith<$Res> implements $FarmUserPermissionCopyWith<$Res> {
  factory _$FarmUserPermissionCopyWith(_FarmUserPermission value, $Res Function(_FarmUserPermission) _then) = __$FarmUserPermissionCopyWithImpl;
@override @useResult
$Res call({
 AuditMetadata metadata, String farmId, String keycloakUserId, String userName, String userEmail, FarmUserRole role
});


@override $AuditMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$FarmUserPermissionCopyWithImpl<$Res>
    implements _$FarmUserPermissionCopyWith<$Res> {
  __$FarmUserPermissionCopyWithImpl(this._self, this._then);

  final _FarmUserPermission _self;
  final $Res Function(_FarmUserPermission) _then;

/// Create a copy of FarmUserPermission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? farmId = null,Object? keycloakUserId = null,Object? userName = null,Object? userEmail = null,Object? role = null,}) {
  return _then(_FarmUserPermission(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as AuditMetadata,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,keycloakUserId: null == keycloakUserId ? _self.keycloakUserId : keycloakUserId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,userEmail: null == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole,
  ));
}

/// Create a copy of FarmUserPermission
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
mixin _$CreateFarmPermissionInput {

 String get farmId; String get userId; FarmUserRole get role; bool get active;
/// Create a copy of CreateFarmPermissionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFarmPermissionInputCopyWith<CreateFarmPermissionInput> get copyWith => _$CreateFarmPermissionInputCopyWithImpl<CreateFarmPermissionInput>(this as CreateFarmPermissionInput, _$identity);

  /// Serializes this CreateFarmPermissionInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFarmPermissionInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,userId,role,active);

@override
String toString() {
  return 'CreateFarmPermissionInput(farmId: $farmId, userId: $userId, role: $role, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateFarmPermissionInputCopyWith<$Res>  {
  factory $CreateFarmPermissionInputCopyWith(CreateFarmPermissionInput value, $Res Function(CreateFarmPermissionInput) _then) = _$CreateFarmPermissionInputCopyWithImpl;
@useResult
$Res call({
 String farmId, String userId, FarmUserRole role, bool active
});




}
/// @nodoc
class _$CreateFarmPermissionInputCopyWithImpl<$Res>
    implements $CreateFarmPermissionInputCopyWith<$Res> {
  _$CreateFarmPermissionInputCopyWithImpl(this._self, this._then);

  final CreateFarmPermissionInput _self;
  final $Res Function(CreateFarmPermissionInput) _then;

/// Create a copy of CreateFarmPermissionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? farmId = null,Object? userId = null,Object? role = null,Object? active = null,}) {
  return _then(_self.copyWith(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateFarmPermissionInput].
extension CreateFarmPermissionInputPatterns on CreateFarmPermissionInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFarmPermissionInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFarmPermissionInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFarmPermissionInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateFarmPermissionInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFarmPermissionInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFarmPermissionInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String farmId,  String userId,  FarmUserRole role,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateFarmPermissionInput() when $default != null:
return $default(_that.farmId,_that.userId,_that.role,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String farmId,  String userId,  FarmUserRole role,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CreateFarmPermissionInput():
return $default(_that.farmId,_that.userId,_that.role,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String farmId,  String userId,  FarmUserRole role,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CreateFarmPermissionInput() when $default != null:
return $default(_that.farmId,_that.userId,_that.role,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFarmPermissionInput implements CreateFarmPermissionInput {
  const _CreateFarmPermissionInput({required this.farmId, required this.userId, required this.role, this.active = true});
  factory _CreateFarmPermissionInput.fromJson(Map<String, dynamic> json) => _$CreateFarmPermissionInputFromJson(json);

@override final  String farmId;
@override final  String userId;
@override final  FarmUserRole role;
@override@JsonKey() final  bool active;

/// Create a copy of CreateFarmPermissionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFarmPermissionInputCopyWith<_CreateFarmPermissionInput> get copyWith => __$CreateFarmPermissionInputCopyWithImpl<_CreateFarmPermissionInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFarmPermissionInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFarmPermissionInput&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,userId,role,active);

@override
String toString() {
  return 'CreateFarmPermissionInput(farmId: $farmId, userId: $userId, role: $role, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateFarmPermissionInputCopyWith<$Res> implements $CreateFarmPermissionInputCopyWith<$Res> {
  factory _$CreateFarmPermissionInputCopyWith(_CreateFarmPermissionInput value, $Res Function(_CreateFarmPermissionInput) _then) = __$CreateFarmPermissionInputCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String userId, FarmUserRole role, bool active
});




}
/// @nodoc
class __$CreateFarmPermissionInputCopyWithImpl<$Res>
    implements _$CreateFarmPermissionInputCopyWith<$Res> {
  __$CreateFarmPermissionInputCopyWithImpl(this._self, this._then);

  final _CreateFarmPermissionInput _self;
  final $Res Function(_CreateFarmPermissionInput) _then;

/// Create a copy of CreateFarmPermissionInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? userId = null,Object? role = null,Object? active = null,}) {
  return _then(_CreateFarmPermissionInput(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateFarmPermissionInput {

 String get id; FarmUserRole? get role; bool? get active;
/// Create a copy of UpdateFarmPermissionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFarmPermissionInputCopyWith<UpdateFarmPermissionInput> get copyWith => _$UpdateFarmPermissionInputCopyWithImpl<UpdateFarmPermissionInput>(this as UpdateFarmPermissionInput, _$identity);

  /// Serializes this UpdateFarmPermissionInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFarmPermissionInput&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,active);

@override
String toString() {
  return 'UpdateFarmPermissionInput(id: $id, role: $role, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateFarmPermissionInputCopyWith<$Res>  {
  factory $UpdateFarmPermissionInputCopyWith(UpdateFarmPermissionInput value, $Res Function(UpdateFarmPermissionInput) _then) = _$UpdateFarmPermissionInputCopyWithImpl;
@useResult
$Res call({
 String id, FarmUserRole? role, bool? active
});




}
/// @nodoc
class _$UpdateFarmPermissionInputCopyWithImpl<$Res>
    implements $UpdateFarmPermissionInputCopyWith<$Res> {
  _$UpdateFarmPermissionInputCopyWithImpl(this._self, this._then);

  final UpdateFarmPermissionInput _self;
  final $Res Function(UpdateFarmPermissionInput) _then;

/// Create a copy of UpdateFarmPermissionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? role = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFarmPermissionInput].
extension UpdateFarmPermissionInputPatterns on UpdateFarmPermissionInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFarmPermissionInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFarmPermissionInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFarmPermissionInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFarmPermissionInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFarmPermissionInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFarmPermissionInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  FarmUserRole? role,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFarmPermissionInput() when $default != null:
return $default(_that.id,_that.role,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  FarmUserRole? role,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdateFarmPermissionInput():
return $default(_that.id,_that.role,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  FarmUserRole? role,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFarmPermissionInput() when $default != null:
return $default(_that.id,_that.role,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFarmPermissionInput implements UpdateFarmPermissionInput {
  const _UpdateFarmPermissionInput({required this.id, this.role, this.active});
  factory _UpdateFarmPermissionInput.fromJson(Map<String, dynamic> json) => _$UpdateFarmPermissionInputFromJson(json);

@override final  String id;
@override final  FarmUserRole? role;
@override final  bool? active;

/// Create a copy of UpdateFarmPermissionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFarmPermissionInputCopyWith<_UpdateFarmPermissionInput> get copyWith => __$UpdateFarmPermissionInputCopyWithImpl<_UpdateFarmPermissionInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFarmPermissionInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFarmPermissionInput&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,active);

@override
String toString() {
  return 'UpdateFarmPermissionInput(id: $id, role: $role, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateFarmPermissionInputCopyWith<$Res> implements $UpdateFarmPermissionInputCopyWith<$Res> {
  factory _$UpdateFarmPermissionInputCopyWith(_UpdateFarmPermissionInput value, $Res Function(_UpdateFarmPermissionInput) _then) = __$UpdateFarmPermissionInputCopyWithImpl;
@override @useResult
$Res call({
 String id, FarmUserRole? role, bool? active
});




}
/// @nodoc
class __$UpdateFarmPermissionInputCopyWithImpl<$Res>
    implements _$UpdateFarmPermissionInputCopyWith<$Res> {
  __$UpdateFarmPermissionInputCopyWithImpl(this._self, this._then);

  final _UpdateFarmPermissionInput _self;
  final $Res Function(_UpdateFarmPermissionInput) _then;

/// Create a copy of UpdateFarmPermissionInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? role = freezed,Object? active = freezed,}) {
  return _then(_UpdateFarmPermissionInput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
