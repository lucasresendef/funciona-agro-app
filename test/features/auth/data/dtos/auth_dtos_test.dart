import 'package:field_management_app/features/auth/data/dtos/auth_dtos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('AuthTokenResponseDto parses Keycloak snake_case token response', () {
    final dto = AuthTokenResponseDto.fromJson(<String, dynamic>{
      'access_token': 'access-token',
      'refresh_token': 'refresh-token',
      'token_type': 'Bearer',
      'expires_in': 300,
      'refresh_expires_in': 1800,
    });

    expect(dto.accessToken, 'access-token');
    expect(dto.refreshToken, 'refresh-token');
    expect(dto.tokenType, 'Bearer');
    expect(dto.expiresIn, 300);
    expect(dto.refreshExpiresIn, 1800);
  });

  test('AuthUserIdentityDto parses Keycloak snake_case claims', () {
    final dto = AuthUserIdentityDto.fromJson(<String, dynamic>{
      'sub': 'user-id',
      'tenant_id': 'tenant-123',
      'name': 'Lucas',
      'email': 'lucas@example.com',
      'preferred_username': 'lucas',
      'realm_access': <String, dynamic>{
        'roles': <String>['offline_access', 'uma_authorization'],
      },
      'resource_access': <String, dynamic>{
        'account': <String, dynamic>{
          'roles': <String>['manage-account', 'view-profile'],
        },
      },
    });

    expect(dto.sub, 'user-id');
    expect(dto.tenantId, 'tenant-123');
    expect(dto.preferredUsername, 'lucas');
    expect(dto.realmRoles, <String>['offline_access', 'uma_authorization']);
    expect(dto.resourceRoles, <String, List<String>>{
      'account': <String>['manage-account', 'view-profile'],
    });
  });
}
