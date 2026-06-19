import 'dart:async';

import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:field_management_app/features/permissions/domain/entities/farm_user_permission.dart';
import 'package:field_management_app/features/permissions/presentation/controllers/permissions_controller.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/theme/app_theme.dart';
import 'package:field_management_app/design_system/components/app_action_button.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/components/app_snackbar.dart';
import 'package:field_management_app/design_system/components/app_text_field.dart';
import 'package:field_management_app/design_system/components/async_state_views.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/auth/presentation/controllers/auth_controller.dart';
import 'package:field_management_app/features/auth/presentation/controllers/login_form_controller.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  static const routePath = '/splash';

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    scheduleMicrotask(() {
      ref.read(authControllerProvider.notifier).bootstrap();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.canvas, AppColors.mist, Color(0xFFD9ECD9)],
          ),
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: authState.when(
              data: (_) => const _SplashCard(),
              loading: () => const _SplashCard(),
              error: (error, _) => ErrorStateView(
                message: error.toString(),
                onRetry: () =>
                    ref.read(authControllerProvider.notifier).bootstrap(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SplashCard extends StatelessWidget {
  const _SplashCard();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppCard(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 34,
            backgroundColor: theme.colorScheme.primaryContainer,
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xs),
              child: Image.asset(
                'lib/assets/icon/icon.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          const SizedBox(width: 220, child: LinearProgressIndicator()),
        ],
      ),
    );
  }
}

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  static const routePath = '/login';

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  void initState() {
    super.initState();
    scheduleMicrotask(() {
      ref.read(loginFormControllerProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<void>>(authControllerProvider, (previous, next) {
      next.whenOrNull(
        error: (error, _) => AppSnackbar.showError(context, error.toString()),
      );
    });

    final authState = ref.watch(authControllerProvider);
    final formState = ref.watch(loginFormControllerProvider);
    final isBusy =
        authState.isLoading ||
        formState.status == FormzSubmissionStatus.inProgress;

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.canvas, AppColors.mist, Color(0xFFDDF0DE)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1180),
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Center(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSpacing.md,
                        ),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 480),
                          child: _LoginFormCard(
                            formState: formState,
                            isBusy: isBusy,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginFormCard extends ConsumerWidget {
  const _LoginFormCard({required this.formState, required this.isBusy});

  final LoginFormState formState;
  final bool isBusy;

  String? _mapError(LoginValidationError? error) {
    return switch (error) {
      LoginValidationError.empty => 'Preencha este campo.',
      null => null,
    };
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return AppCard(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset('lib/assets/images/slogan.png', height: 92),
          ),
          const SizedBox(height: AppSpacing.md),
          Center(
            child: Text(
              'Gestão de campos',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          const SizedBox(height: AppSpacing.lg),
          AppTextField(
            label: 'Usuário',
            hintText: 'Informe seu usuário',
            onChanged: ref
                .read(loginFormControllerProvider.notifier)
                .updateUsername,
            prefixIcon: const Icon(Icons.person_outline_rounded),
            errorText: formState.username.displayError == null
                ? null
                : _mapError(formState.username.displayError),
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            label: 'Senha',
            hintText: 'Informe sua senha',
            obscureText: true,
            onChanged: ref
                .read(loginFormControllerProvider.notifier)
                .updatePassword,
            prefixIcon: const Icon(Icons.lock_outline_rounded),
            errorText: formState.password.displayError == null
                ? null
                : _mapError(formState.password.displayError),
          ),
          const SizedBox(height: AppSpacing.sm),
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            value: formState.rememberMe,
            onChanged: isBusy
                ? null
                : (value) => ref
                      .read(loginFormControllerProvider.notifier)
                      .setRememberMe(value ?? false),
            title: const Text('Lembrar de mim'),
            controlAffinity: ListTileControlAffinity.leading,
          ),
          const SizedBox(height: AppSpacing.xl),
          AppActionButton(
            label: 'Entrar',
            isExpanded: true,
            isLoading: isBusy,
            icon: const Icon(Icons.login_rounded),
            onPressed: () =>
                ref.read(loginFormControllerProvider.notifier).submit(),
          ),
          if (formState.hasRememberedCredentials) ...[
            const SizedBox(height: AppSpacing.md),
            AppActionButton(
              label: 'Entrar com biometria ou codigo',
              isExpanded: true,
              icon: const Icon(Icons.fingerprint_rounded),
              onPressed: isBusy
                  ? null
                  : () => ref
                        .read(loginFormControllerProvider.notifier)
                        .loginWithDeviceAuth(),
            ),
          ],
          if (formState.status == FormzSubmissionStatus.failure &&
              formState.hasRememberedCredentials) ...[
            const SizedBox(height: AppSpacing.sm),
            Text(
              'Nao foi possivel autenticar com o dispositivo.',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  static const routePath = '/profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionManagerProvider).session;
    final profile = session?.profile;
    final keycloakUserId = profile?.user.keycloakUserId;
    final permissionsAsync = keycloakUserId == null
        ? const AsyncValue<List<FarmUserPermission>>.data(
            <FarmUserPermission>[],
          )
        : ref.watch(userPermissionsProvider(keycloakUserId));
    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final farmNameById = farmsAsync.maybeWhen(
      data: (farms) => <String, String>{
        for (final farm in farms) farm.metadata.id: farm.name,
      },
      orElse: () => const <String, String>{},
    );

    return AppPage(
      title: 'Perfil autenticado',
      actions: [
        AppActionButton(
          label: 'Atualizar perfil',
          icon: const Icon(Icons.sync_rounded),
          onPressed: () =>
              ref.read(authControllerProvider.notifier).refreshProfile(),
        ),
      ],
      child: profile == null
          ? const EmptyStateView(
              title: 'Sem perfil carregado',
              message: 'Faça login novamente para obter os dados autenticados.',
            )
          : Builder(
              builder: (context) {
                final fullName = profile.user.name.trim();
                final nameParts = fullName
                    .split(RegExp(r'\s+'))
                    .where((part) => part.isNotEmpty)
                    .toList();
                final firstName = nameParts.isEmpty ? '-' : nameParts.first;
                final lastName = nameParts.length > 1
                    ? nameParts.sublist(1).join(' ')
                    : '-';
                final permissions = permissionsAsync.maybeWhen(
                  data: (items) =>
                      items.isNotEmpty ? items : profile.permissions,
                  orElse: () => profile.permissions,
                );

                return ListView(
                  children: [
                    AppCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _ProfileDetailRow(
                            label: 'Keycloak ID',
                            value: profile.user.keycloakUserId,
                          ),
                          _ProfileDetailRow(label: 'Nome', value: firstName),
                          _ProfileDetailRow(
                            label: 'Sobrenome',
                            value: lastName,
                          ),
                          _ProfileDetailRow(
                            label: 'Username',
                            value: profile.authUser.preferredUsername ?? '-',
                          ),
                          _ProfileDetailRow(
                            label: 'E-mail',
                            value: profile.user.email,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSpacing.md),
                    AppCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Permissões por fazenda',
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(height: AppSpacing.md),
                          if (permissionsAsync.isLoading && permissions.isEmpty)
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: AppSpacing.sm,
                              ),
                              child: LinearProgressIndicator(),
                            )
                          else if (permissions.isEmpty)
                            const Text('Nenhuma permissão disponível.')
                          else
                            ...permissions.map(
                              (permission) => ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: const Icon(
                                  Icons.verified_user_outlined,
                                ),
                                title: Text(
                                  farmNameById[permission.farmId] ??
                                      permission.farmId,
                                ),
                                subtitle: Text(permission.role.label),
                                trailing: Chip(
                                  label: Text(permission.role.label),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
    );
  }
}

class _ProfileDetailRow extends StatelessWidget {
  const _ProfileDetailRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
      child: Row(
        children: [
          SizedBox(
            width: 160,
            child: Text(
              label,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
