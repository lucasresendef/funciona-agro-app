# Field Management App

Frontend Flutter para celular e tablet de um sistema de gerenciamento de insumos por fazenda e talhão.

## Stack

- Flutter estável 3.41.x
- Dart 3.11
- `flutter_riverpod`
- `go_router`
- `dio`
- `freezed` + `json_serializable`
- `flutter_secure_storage`
- `intl`
- `formz`
- Material 3 com design system próprio

## Principais módulos

- autenticação no Keycloak
- dashboard inicial com contexto de fazenda
- perfil do usuário autenticado
- fazendas
- talhões
- unidades de medida
- produtos
- locais de estoque
- saldos de estoque
- operações de campo com itens dinâmicos
- usuários
- permissões por fazenda

## Estrutura

```text
lib/
  app/
  core/
  design_system/
  shared/
  features/
    auth/
    dashboard/
    farms/
    fields/
    units/
    products/
    inventory/
    field_operations/
    users/
    permissions/
```

## Configuração

O app usa `--dart-define` para ambiente.

Variáveis disponíveis:

- `API_BASE_URL`
- `KEYCLOAK_TOKEN_URL`
- `KEYCLOAK_CLIENT_ID`

## Rodando localmente

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run \
  --dart-define=API_BASE_URL=http://localhost:3099 \
  --dart-define=KEYCLOAK_TOKEN_URL=http://localhost:8181/realms/field-management-backend/protocol/openid-connect/token \
  --dart-define=KEYCLOAK_CLIENT_ID=field-management-api
```

### Observação sobre `localhost`

- iOS Simulator costuma aceitar `http://localhost`.
- Android Emulator normalmente precisa de `http://10.0.2.2`.
- dispositivo físico precisa apontar para o IP real da máquina/backend.

Exemplo para Android Emulator:

```bash
flutter run \
  --dart-define=API_BASE_URL=http://10.0.2.2:3099 \
  --dart-define=KEYCLOAK_TOKEN_URL=http://10.0.2.2:8181/realms/field-management-backend/protocol/openid-connect/token
```

## Fluxo de autenticação

- login direto no endpoint de token do Keycloak
- `grant_type=password`
- token salvo em `flutter_secure_storage`
- `Authorization: Bearer <token>` em todas as rotas protegidas
- `401` limpa a sessão e redireciona para login
- estrutura pronta para refresh token futuro

## Qualidade

Comandos verificados:

```bash
flutter analyze
flutter test
```

## Testes iniciais

- widget test da tela de login
- unit test do utilitário `compact()` para filtros/query params

## Notas de arquitetura

- organização feature-first
- separação entre `data`, `domain` e `presentation`
- repositórios por feature
- use cases por feature
- controllers reativos com Riverpod
- `SessionManager` central para bootstrap, token e contexto de fazenda
- shell adaptativo para phone e tablet

## Próximos passos naturais

- paginação e cache por feature
- refresh token real
- testes de integração das features
- picker de data/hora mais completo para operações e ajustes
- labels mais ricos nas listagens de saldo e operação com lookup por nome
