abstract final class AppEnvironment {
  static const appName = 'Gestão de campos';

  static const apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://192.168.1.11:3099',
  );

  static const keycloakTokenUrl = String.fromEnvironment(
    'KEYCLOAK_TOKEN_URL',
    defaultValue:
        'http://192.168.1.11:8181/realms/funciona-agro/protocol/openid-connect/token',
  );

  static const keycloakClientId = String.fromEnvironment(
    'KEYCLOAK_CLIENT_ID',
    defaultValue: 'funciona-agro-api',
  );
}
