import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required AuditMetadata metadata,
    required String keycloakUserId,
    required String name,
    required String email,
    @Default(false) bool isAdmin,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}

@freezed
abstract class CreateAppUserInput with _$CreateAppUserInput {
  const factory CreateAppUserInput({
    required String keycloakUserId,
    required String name,
    required String email,
    @Default(false) bool isAdmin,
    @Default(true) bool active,
  }) = _CreateAppUserInput;

  factory CreateAppUserInput.fromJson(Map<String, dynamic> json) =>
      _$CreateAppUserInputFromJson(json);
}

@freezed
abstract class UpdateAppUserInput with _$UpdateAppUserInput {
  const factory UpdateAppUserInput({
    required String id,
    String? name,
    bool? isAdmin,
    bool? active,
  }) = _UpdateAppUserInput;

  factory UpdateAppUserInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppUserInputFromJson(json);
}
