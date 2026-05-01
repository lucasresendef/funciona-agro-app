import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_dtos.freezed.dart';
part 'app_user_dtos.g.dart';

@freezed
abstract class AppUserDto with _$AppUserDto {
  const factory AppUserDto({
    required String id,
    required bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? createdByEmail,
    String? updatedBy,
    String? updatedByEmail,
    required String keycloakUserId,
    required String name,
    required String email,
    @Default(false) bool isAdmin,
  }) = _AppUserDto;

  factory AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoFromJson(json);
}

@freezed
abstract class CreateAppUserRequestDto with _$CreateAppUserRequestDto {
  const factory CreateAppUserRequestDto({
    required String keycloakUserId,
    required String name,
    required String email,
    @Default(false) bool isAdmin,
    @Default(true) bool active,
  }) = _CreateAppUserRequestDto;

  factory CreateAppUserRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAppUserRequestDtoFromJson(json);
}

@freezed
abstract class UpdateAppUserRequestDto with _$UpdateAppUserRequestDto {
  const factory UpdateAppUserRequestDto({
    String? name,
    bool? isAdmin,
    bool? active,
  }) = _UpdateAppUserRequestDto;

  factory UpdateAppUserRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppUserRequestDtoFromJson(json);
}
