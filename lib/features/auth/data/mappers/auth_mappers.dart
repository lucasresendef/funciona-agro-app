import 'package:field_management_app/features/auth/data/dtos/auth_dtos.dart';
import 'package:field_management_app/features/auth/domain/entities/auth_models.dart';
import 'package:field_management_app/features/permissions/data/mappers/farm_permission_mappers.dart';
import 'package:field_management_app/features/users/data/mappers/app_user_mappers.dart';

extension AuthTokenResponseDtoMapper on AuthTokenResponseDto {
  AuthSession toEntity() {
    return AuthSession(
      accessToken: accessToken,
      refreshToken: refreshToken,
      tokenType: tokenType,
      expiresIn: expiresIn,
      refreshExpiresIn: refreshExpiresIn,
    );
  }
}

extension AuthUserIdentityDtoMapper on AuthUserIdentityDto {
  AuthUserIdentity toEntity() {
    return AuthUserIdentity(
      sub: sub,
      tenantId: tenantId,
      name: name,
      email: email,
      preferredUsername: preferredUsername,
      scope: scope,
      realmRoles: realmRoles,
      resourceRoles: resourceRoles,
    );
  }
}

extension AuthProfilePayloadDtoMapper on AuthProfilePayloadDto {
  AuthProfile toEntity() {
    return AuthProfile(
      authUser: authUser.toEntity(),
      user: user.toEntity(),
      permissions: permissions.map((item) => item.toEntity()).toList(),
    );
  }
}
