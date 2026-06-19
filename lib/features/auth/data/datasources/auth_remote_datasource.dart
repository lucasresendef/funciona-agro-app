import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:field_management_app/core/config/app_environment.dart';
import 'package:field_management_app/core/errors/app_exception.dart';
import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/core/network/interceptors/auth_interceptor.dart';
import 'package:field_management_app/core/utils/debug_log.dart';
import 'package:field_management_app/features/auth/data/dtos/auth_dtos.dart';
import 'package:field_management_app/features/auth/data/mappers/auth_mappers.dart';
import 'package:field_management_app/features/auth/domain/entities/auth_models.dart';
import 'package:field_management_app/features/users/domain/entities/app_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  return AuthRemoteDataSource(
    apiClient: ref.watch(apiClientProvider),
    keycloakDio: ref.watch(keycloakDioProvider),
  );
});

class AuthRemoteDataSource {
  const AuthRemoteDataSource({
    required ApiClient apiClient,
    required Dio keycloakDio,
  }) : _apiClient = apiClient,
       _keycloakDio = keycloakDio;

  final ApiClient _apiClient;
  final Dio _keycloakDio;

  Future<AuthSession> login(LoginCredentials credentials) async {
    try {
      appDebugLog(
        'AuthRemoteDataSource',
        'enviando requisicao de login para o Keycloak',
        data: <String, dynamic>{
          'url': AppEnvironment.keycloakTokenUrl,
          'clientId': AppEnvironment.keycloakClientId,
          'grantType': 'password',
          'scope': 'openid profile email',
        },
      );

      final response = await _keycloakDio.post<Map<String, dynamic>>(
        AppEnvironment.keycloakTokenUrl,
        data: {
          'client_id': AppEnvironment.keycloakClientId,
          'grant_type': 'password',
          'username': credentials.username,
          'password': credentials.password,
          'scope': 'openid profile email',
        },
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );

      appDebugLog(
        'AuthRemoteDataSource',
        'resposta do endpoint de token recebida',
        data: <String, dynamic>{'statusCode': response.statusCode},
      );

      final payload = response.data ?? <String, dynamic>{};
      final dto = AuthTokenResponseDto.fromJson(payload);
      final idToken = payload['id_token'] as String?;
      final jwtPayload = decodeJwtPayload(dto.accessToken) ?? <String, dynamic>{};

      appDebugLog(
        'AuthRemoteDataSource',
        'token parseado com sucesso',
        data: <String, dynamic>{
          'hasAccessToken': dto.accessToken.isNotEmpty,
          'hasRefreshToken': dto.refreshToken?.isNotEmpty == true,
          'hasIdToken': idToken != null && idToken.isNotEmpty,
          'identitySub': jwtPayload['sub'],
          'identityEmail': jwtPayload['email'],
        },
      );

      return dto.toEntity().copyWith(
        profile: _buildProfileFromJwt(
          jwtPayload,
          fallbackUsername: credentials.username,
        ),
      );
    } on DioException catch (error) {
      appDebugLog(
        'AuthRemoteDataSource',
        'erro na requisicao de login',
        data: <String, dynamic>{
          'statusCode': error.response?.statusCode,
          'message': error.message,
        },
        stackTrace: error.stackTrace,
      );
      throw AppException.fromDio(error);
    }
  }

  Future<AuthProfilePayloadDto> getProfile() async {
    try {
      appDebugLog('AuthRemoteDataSource', 'buscando /auth/me');
      final payload = await _apiClient.get('/auth/me') as Map<String, dynamic>;

      final dto = AuthProfilePayloadDto.fromJson(payload);

      return dto;
    } catch (error, stackTrace) {
      appDebugLog(
        'AuthRemoteDataSource',
        'falha ao buscar /auth/me',
        data: error.toString(),
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<void> syncUser() async {
    try {
      appDebugLog('AuthRemoteDataSource', 'chamando /auth/sync-user');
      final response = await _apiClient.post(
        '/auth/sync-user',
        data: <String, dynamic>{},
        options: Options(
          extra: const {AuthInterceptor.skipSessionClearOn401Key: true},
        ),
      );
      appDebugLog(
        'AuthRemoteDataSource',
        '/auth/sync-user concluido',
        data: jsonEncode(response),
      );
    } catch (error, stackTrace) {
      appDebugLog(
        'AuthRemoteDataSource',
        'falha em /auth/sync-user',
        data: error.toString(),
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  AuthProfile _buildProfileFromJwt(
    Map<String, dynamic> payload, {
    required String fallbackUsername,
  }) {
    final sub = (payload['sub'] as String?)?.trim();
    final tenantId =
        (payload['tenant_id'] as String?)?.trim() ??
        (payload['tenantId'] as String?)?.trim();
    final preferredUsername = (payload['preferred_username'] as String?)
        ?.trim();
    final email = (payload['email'] as String?)?.trim();
    final name = (payload['name'] as String?)?.trim();
    final scope = (payload['scope'] as String?)?.trim();
    final realmRoles = _extractRealmRoles(payload);
    final resourceRoles = _extractResourceRoles(payload);
    if (tenantId == null || tenantId.isEmpty) {
      throw const AppException(
        message:
            'Token sem tenant_id. Configure o mapper de claim no Keycloak para incluir tenant_id no access token.',
      );
    }

    final identity = AuthUserIdentity(
      sub: (sub?.isNotEmpty == true ? sub! : fallbackUsername),
      tenantId: tenantId,
      name: name ?? preferredUsername ?? fallbackUsername,
      email: email,
      preferredUsername: preferredUsername ?? fallbackUsername,
      scope: scope,
      realmRoles: realmRoles,
      resourceRoles: resourceRoles,
    );

    final normalizedRoles = realmRoles
        .map((role) => role.toLowerCase())
        .toSet();
    final isAdmin = normalizedRoles.contains('app-admin');

    final appUser = AppUser(
      metadata: AuditMetadata(id: identity.sub, active: true),
      keycloakUserId: identity.sub,
      name: identity.name ?? identity.preferredUsername ?? fallbackUsername,
      email: identity.email ?? '',
      isAdmin: isAdmin,
    );

    return AuthProfile(
      authUser: identity,
      user: appUser,
      permissions: const [],
    );
  }

  List<String> _extractRealmRoles(Map<String, dynamic> json) {
    final realmRoles = json['realmRoles'];
    if (realmRoles is List<dynamic>) {
      return realmRoles.whereType<String>().toList();
    }

    final realmAccess = json['realm_access'];
    if (realmAccess is Map<String, dynamic>) {
      final roles = realmAccess['roles'];
      if (roles is List<dynamic>) {
        return roles.whereType<String>().toList();
      }
    }

    return const <String>[];
  }

  Map<String, List<String>> _extractResourceRoles(Map<String, dynamic> json) {
    final resourceRoles = json['resourceRoles'];
    if (resourceRoles is Map<String, dynamic>) {
      return resourceRoles.map(
        (key, value) => MapEntry(key, _extractRolesList(value)),
      );
    }

    final resourceAccess = json['resource_access'];
    if (resourceAccess is Map<String, dynamic>) {
      return resourceAccess.map(
        (key, value) => MapEntry(
          key,
          value is Map<String, dynamic>
              ? _extractRolesList(value['roles'])
              : [],
        ),
      );
    }

    return const <String, List<String>>{};
  }

  List<String> _extractRolesList(dynamic value) {
    if (value is List<dynamic>) {
      return value.whereType<String>().toList();
    }

    return const <String>[];
  }
}
