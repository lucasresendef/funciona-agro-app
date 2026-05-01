abstract final class AppEnvironment {
  static const appName = 'Gestão de campos';

  static const apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://localhost:3099',
  );

  static const keycloakTokenUrl = String.fromEnvironment(
    'KEYCLOAK_TOKEN_URL',
    defaultValue:
        'http://localhost:8181/realms/field-management-backend/protocol/openid-connect/token',
  );

  static const keycloakClientId = String.fromEnvironment(
    'KEYCLOAK_CLIENT_ID',
    defaultValue: 'field-management-api',
  );
}
