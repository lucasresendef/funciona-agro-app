// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm_permission_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FarmUserPermissionDto {

 String get id; bool get active; DateTime? get createdAt; DateTime? get updatedAt; String? get createdBy; String? get createdByEmail; String? get updatedBy; String? get updatedByEmail; String get farmId; String get keycloakUserId; String get userName; String get userEmail; FarmUserRole get role;
/// Create a copy of FarmUserPermissionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FarmUserPermissionDtoCopyWith<FarmUserPermissionDto> get copyWith => _$FarmUserPermissionDtoCopyWithImpl<FarmUserPermissionDto>(this as FarmUserPermissionDto, _$identity);

  /// Serializes this FarmUserPermissionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FarmUserPermissionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,keycloakUserId,userName,userEmail,role);

@override
String toString() {
  return 'FarmUserPermissionDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, keycloakUserId: $keycloakUserId, userName: $userName, userEmail: $userEmail, role: $role)';
}


}

/// @nodoc
abstract mixin class $FarmUserPermissionDtoCopyWith<$Res>  {
  factory $FarmUserPermissionDtoCopyWith(FarmUserPermissionDto value, $Res Function(FarmUserPermissionDto) _then) = _$FarmUserPermissionDtoCopyWithImpl;
@useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String keycloakUserId, String userName, String userEmail, FarmUserRole role
});




}
/// @nodoc
class _$FarmUserPermissionDtoCopyWithImpl<$Res>
    implements $FarmUserPermissionDtoCopyWith<$Res> {
  _$FarmUserPermissionDtoCopyWithImpl(this._self, this._then);

  final FarmUserPermissionDto _self;
  final $Res Function(FarmUserPermissionDto) _then;

/// Create a copy of FarmUserPermissionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? keycloakUserId = null,Object? userName = null,Object? userEmail = null,Object? role = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,keycloakUserId: null == keycloakUserId ? _self.keycloakUserId : keycloakUserId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,userEmail: null == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole,
  ));
}

}


/// Adds pattern-matching-related methods to [FarmUserPermissionDto].
extension FarmUserPermissionDtoPatterns on FarmUserPermissionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FarmUserPermissionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FarmUserPermissionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FarmUserPermissionDto value)  $default,){
final _that = this;
switch (_that) {
case _FarmUserPermissionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FarmUserPermissionDto value)?  $default,){
final _that = this;
switch (_that) {
case _FarmUserPermissionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String keycloakUserId,  String userName,  String userEmail,  FarmUserRole role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FarmUserPermissionDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.keycloakUserId,_that.userName,_that.userEmail,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String keycloakUserId,  String userName,  String userEmail,  FarmUserRole role)  $default,) {final _that = this;
switch (_that) {
case _FarmUserPermissionDto():
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.keycloakUserId,_that.userName,_that.userEmail,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool active,  DateTime? createdAt,  DateTime? updatedAt,  String? createdBy,  String? createdByEmail,  String? updatedBy,  String? updatedByEmail,  String farmId,  String keycloakUserId,  String userName,  String userEmail,  FarmUserRole role)?  $default,) {final _that = this;
switch (_that) {
case _FarmUserPermissionDto() when $default != null:
return $default(_that.id,_that.active,_that.createdAt,_that.updatedAt,_that.createdBy,_that.createdByEmail,_that.updatedBy,_that.updatedByEmail,_that.farmId,_that.keycloakUserId,_that.userName,_that.userEmail,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FarmUserPermissionDto implements FarmUserPermissionDto {
  const _FarmUserPermissionDto({required this.id, required this.active, this.createdAt, this.updatedAt, this.createdBy, this.createdByEmail, this.updatedBy, this.updatedByEmail, required this.farmId, required this.keycloakUserId, required this.userName, required this.userEmail, required this.role});
  factory _FarmUserPermissionDto.fromJson(Map<String, dynamic> json) => _$FarmUserPermissionDtoFromJson(json);

@override final  String id;
@override final  bool active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? createdBy;
@override final  String? createdByEmail;
@override final  String? updatedBy;
@override final  String? updatedByEmail;
@override final  String farmId;
@override final  String keycloakUserId;
@override final  String userName;
@override final  String userEmail;
@override final  FarmUserRole role;

/// Create a copy of FarmUserPermissionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FarmUserPermissionDtoCopyWith<_FarmUserPermissionDto> get copyWith => __$FarmUserPermissionDtoCopyWithImpl<_FarmUserPermissionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FarmUserPermissionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FarmUserPermissionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdByEmail, createdByEmail) || other.createdByEmail == createdByEmail)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedByEmail, updatedByEmail) || other.updatedByEmail == updatedByEmail)&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.keycloakUserId, keycloakUserId) || other.keycloakUserId == keycloakUserId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.userEmail, userEmail) || other.userEmail == userEmail)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,active,createdAt,updatedAt,createdBy,createdByEmail,updatedBy,updatedByEmail,farmId,keycloakUserId,userName,userEmail,role);

@override
String toString() {
  return 'FarmUserPermissionDto(id: $id, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, createdByEmail: $createdByEmail, updatedBy: $updatedBy, updatedByEmail: $updatedByEmail, farmId: $farmId, keycloakUserId: $keycloakUserId, userName: $userName, userEmail: $userEmail, role: $role)';
}


}

/// @nodoc
abstract mixin class _$FarmUserPermissionDtoCopyWith<$Res> implements $FarmUserPermissionDtoCopyWith<$Res> {
  factory _$FarmUserPermissionDtoCopyWith(_FarmUserPermissionDto value, $Res Function(_FarmUserPermissionDto) _then) = __$FarmUserPermissionDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, bool active, DateTime? createdAt, DateTime? updatedAt, String? createdBy, String? createdByEmail, String? updatedBy, String? updatedByEmail, String farmId, String keycloakUserId, String userName, String userEmail, FarmUserRole role
});




}
/// @nodoc
class __$FarmUserPermissionDtoCopyWithImpl<$Res>
    implements _$FarmUserPermissionDtoCopyWith<$Res> {
  __$FarmUserPermissionDtoCopyWithImpl(this._self, this._then);

  final _FarmUserPermissionDto _self;
  final $Res Function(_FarmUserPermissionDto) _then;

/// Create a copy of FarmUserPermissionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? active = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? createdBy = freezed,Object? createdByEmail = freezed,Object? updatedBy = freezed,Object? updatedByEmail = freezed,Object? farmId = null,Object? keycloakUserId = null,Object? userName = null,Object? userEmail = null,Object? role = null,}) {
  return _then(_FarmUserPermissionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,createdByEmail: freezed == createdByEmail ? _self.createdByEmail : createdByEmail // ignore: cast_nullable_to_non_nullable
as String?,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedByEmail: freezed == updatedByEmail ? _self.updatedByEmail : updatedByEmail // ignore: cast_nullable_to_non_nullable
as String?,farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,keycloakUserId: null == keycloakUserId ? _self.keycloakUserId : keycloakUserId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,userEmail: null == userEmail ? _self.userEmail : userEmail // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole,
  ));
}


}


/// @nodoc
mixin _$CreateFarmPermissionRequestDto {

 String get farmId; String get userId; FarmUserRole get role; bool get active;
/// Create a copy of CreateFarmPermissionRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFarmPermissionRequestDtoCopyWith<CreateFarmPermissionRequestDto> get copyWith => _$CreateFarmPermissionRequestDtoCopyWithImpl<CreateFarmPermissionRequestDto>(this as CreateFarmPermissionRequestDto, _$identity);

  /// Serializes this CreateFarmPermissionRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFarmPermissionRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,userId,role,active);

@override
String toString() {
  return 'CreateFarmPermissionRequestDto(farmId: $farmId, userId: $userId, role: $role, active: $active)';
}


}

/// @nodoc
abstract mixin class $CreateFarmPermissionRequestDtoCopyWith<$Res>  {
  factory $CreateFarmPermissionRequestDtoCopyWith(CreateFarmPermissionRequestDto value, $Res Function(CreateFarmPermissionRequestDto) _then) = _$CreateFarmPermissionRequestDtoCopyWithImpl;
@useResult
$Res call({
 String farmId, String userId, FarmUserRole role, bool active
});




}
/// @nodoc
class _$CreateFarmPermissionRequestDtoCopyWithImpl<$Res>
    implements $CreateFarmPermissionRequestDtoCopyWith<$Res> {
  _$CreateFarmPermissionRequestDtoCopyWithImpl(this._self, this._then);

  final CreateFarmPermissionRequestDto _self;
  final $Res Function(CreateFarmPermissionRequestDto) _then;

/// Create a copy of CreateFarmPermissionRequestDto
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


/// Adds pattern-matching-related methods to [CreateFarmPermissionRequestDto].
extension CreateFarmPermissionRequestDtoPatterns on CreateFarmPermissionRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateFarmPermissionRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateFarmPermissionRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateFarmPermissionRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateFarmPermissionRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateFarmPermissionRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateFarmPermissionRequestDto() when $default != null:
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
case _CreateFarmPermissionRequestDto() when $default != null:
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
case _CreateFarmPermissionRequestDto():
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
case _CreateFarmPermissionRequestDto() when $default != null:
return $default(_that.farmId,_that.userId,_that.role,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateFarmPermissionRequestDto implements CreateFarmPermissionRequestDto {
  const _CreateFarmPermissionRequestDto({required this.farmId, required this.userId, required this.role, this.active = true});
  factory _CreateFarmPermissionRequestDto.fromJson(Map<String, dynamic> json) => _$CreateFarmPermissionRequestDtoFromJson(json);

@override final  String farmId;
@override final  String userId;
@override final  FarmUserRole role;
@override@JsonKey() final  bool active;

/// Create a copy of CreateFarmPermissionRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateFarmPermissionRequestDtoCopyWith<_CreateFarmPermissionRequestDto> get copyWith => __$CreateFarmPermissionRequestDtoCopyWithImpl<_CreateFarmPermissionRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateFarmPermissionRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateFarmPermissionRequestDto&&(identical(other.farmId, farmId) || other.farmId == farmId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,farmId,userId,role,active);

@override
String toString() {
  return 'CreateFarmPermissionRequestDto(farmId: $farmId, userId: $userId, role: $role, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CreateFarmPermissionRequestDtoCopyWith<$Res> implements $CreateFarmPermissionRequestDtoCopyWith<$Res> {
  factory _$CreateFarmPermissionRequestDtoCopyWith(_CreateFarmPermissionRequestDto value, $Res Function(_CreateFarmPermissionRequestDto) _then) = __$CreateFarmPermissionRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String farmId, String userId, FarmUserRole role, bool active
});




}
/// @nodoc
class __$CreateFarmPermissionRequestDtoCopyWithImpl<$Res>
    implements _$CreateFarmPermissionRequestDtoCopyWith<$Res> {
  __$CreateFarmPermissionRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateFarmPermissionRequestDto _self;
  final $Res Function(_CreateFarmPermissionRequestDto) _then;

/// Create a copy of CreateFarmPermissionRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? farmId = null,Object? userId = null,Object? role = null,Object? active = null,}) {
  return _then(_CreateFarmPermissionRequestDto(
farmId: null == farmId ? _self.farmId : farmId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateFarmPermissionRequestDto {

 FarmUserRole? get role; bool? get active;
/// Create a copy of UpdateFarmPermissionRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFarmPermissionRequestDtoCopyWith<UpdateFarmPermissionRequestDto> get copyWith => _$UpdateFarmPermissionRequestDtoCopyWithImpl<UpdateFarmPermissionRequestDto>(this as UpdateFarmPermissionRequestDto, _$identity);

  /// Serializes this UpdateFarmPermissionRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFarmPermissionRequestDto&&(identical(other.role, role) || other.role == role)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,active);

@override
String toString() {
  return 'UpdateFarmPermissionRequestDto(role: $role, active: $active)';
}


}

/// @nodoc
abstract mixin class $UpdateFarmPermissionRequestDtoCopyWith<$Res>  {
  factory $UpdateFarmPermissionRequestDtoCopyWith(UpdateFarmPermissionRequestDto value, $Res Function(UpdateFarmPermissionRequestDto) _then) = _$UpdateFarmPermissionRequestDtoCopyWithImpl;
@useResult
$Res call({
 FarmUserRole? role, bool? active
});




}
/// @nodoc
class _$UpdateFarmPermissionRequestDtoCopyWithImpl<$Res>
    implements $UpdateFarmPermissionRequestDtoCopyWith<$Res> {
  _$UpdateFarmPermissionRequestDtoCopyWithImpl(this._self, this._then);

  final UpdateFarmPermissionRequestDto _self;
  final $Res Function(UpdateFarmPermissionRequestDto) _then;

/// Create a copy of UpdateFarmPermissionRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = freezed,Object? active = freezed,}) {
  return _then(_self.copyWith(
role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFarmPermissionRequestDto].
extension UpdateFarmPermissionRequestDtoPatterns on UpdateFarmPermissionRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFarmPermissionRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFarmPermissionRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFarmPermissionRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFarmPermissionRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFarmPermissionRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFarmPermissionRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FarmUserRole? role,  bool? active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFarmPermissionRequestDto() when $default != null:
return $default(_that.role,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FarmUserRole? role,  bool? active)  $default,) {final _that = this;
switch (_that) {
case _UpdateFarmPermissionRequestDto():
return $default(_that.role,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FarmUserRole? role,  bool? active)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFarmPermissionRequestDto() when $default != null:
return $default(_that.role,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateFarmPermissionRequestDto implements UpdateFarmPermissionRequestDto {
  const _UpdateFarmPermissionRequestDto({this.role, this.active});
  factory _UpdateFarmPermissionRequestDto.fromJson(Map<String, dynamic> json) => _$UpdateFarmPermissionRequestDtoFromJson(json);

@override final  FarmUserRole? role;
@override final  bool? active;

/// Create a copy of UpdateFarmPermissionRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFarmPermissionRequestDtoCopyWith<_UpdateFarmPermissionRequestDto> get copyWith => __$UpdateFarmPermissionRequestDtoCopyWithImpl<_UpdateFarmPermissionRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateFarmPermissionRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFarmPermissionRequestDto&&(identical(other.role, role) || other.role == role)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,active);

@override
String toString() {
  return 'UpdateFarmPermissionRequestDto(role: $role, active: $active)';
}


}

/// @nodoc
abstract mixin class _$UpdateFarmPermissionRequestDtoCopyWith<$Res> implements $UpdateFarmPermissionRequestDtoCopyWith<$Res> {
  factory _$UpdateFarmPermissionRequestDtoCopyWith(_UpdateFarmPermissionRequestDto value, $Res Function(_UpdateFarmPermissionRequestDto) _then) = __$UpdateFarmPermissionRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 FarmUserRole? role, bool? active
});




}
/// @nodoc
class __$UpdateFarmPermissionRequestDtoCopyWithImpl<$Res>
    implements _$UpdateFarmPermissionRequestDtoCopyWith<$Res> {
  __$UpdateFarmPermissionRequestDtoCopyWithImpl(this._self, this._then);

  final _UpdateFarmPermissionRequestDto _self;
  final $Res Function(_UpdateFarmPermissionRequestDto) _then;

/// Create a copy of UpdateFarmPermissionRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = freezed,Object? active = freezed,}) {
  return _then(_UpdateFarmPermissionRequestDto(
role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as FarmUserRole?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
