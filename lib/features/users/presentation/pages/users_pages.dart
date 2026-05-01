import 'package:field_management_app/core/utils/async_value_ui.dart';
import 'package:field_management_app/design_system/components/app_action_button.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_form_sheet.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:field_management_app/design_system/components/app_text_field.dart';
import 'package:field_management_app/design_system/components/async_state_views.dart';
import 'package:field_management_app/design_system/components/infinite_scroll_list_view.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/users/domain/entities/app_user.dart';
import 'package:field_management_app/features/users/presentation/controllers/users_controller.dart';
import 'package:field_management_app/core/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UsersPage extends ConsumerWidget {
  const UsersPage({super.key});

  static const routePath = '/users';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(usersInfiniteListProvider);
    final filter = ref.watch(usersFilterProvider);

    return AppPage(
      title: 'Usuários',
      actions: [
        IconButton.filled(
          tooltip: 'Novo usuário',
          onPressed: () => showAppFormSheet<void>(
            context: context,
            child: const CreateUserPage(),
          ),
          icon: const Icon(Icons.add_rounded),
        ),
      ],
      child: Column(
        children: [
          AppSearchBar(
            hintText: 'Buscar usuário por nome ou e-mail',
            initialValue: filter.search,
            onChanged: (value) {
              ref.read(usersFilterProvider.notifier).state = filter.copyWith(
                search: value.trim().isEmpty ? null : value,
              );
            },
            trailing: [
              FilterChip(
                label: const Text('Somente ativos'),
                selected: filter.active ?? false,
                onSelected: (selected) {
                  ref.read(usersFilterProvider.notifier).state = filter
                      .copyWith(active: selected);
                },
              ),
              FilterChip(
                label: const Text('Somente admin'),
                selected: filter.isAdmin == true,
                onSelected: (selected) {
                  ref.read(usersFilterProvider.notifier).state = filter
                      .copyWith(isAdmin: selected ? true : null);
                },
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Expanded(
            child: usersAsync.when(
              data: (listState) {
                final users = listState.items;
                if (users.isEmpty) {
                  return const EmptyStateView(
                    title: 'Nenhum usuário encontrado',
                    message: 'Adicione usuários para liberar acesso ao app.',
                  );
                }

                return InfiniteScrollListView<AppUser>(
                  items: users,
                  isLoadingMore: listState.isLoadingMore,
                  onRefresh: () => ref
                      .read(usersInfiniteListProvider.notifier)
                      .refreshList(),
                  onLoadMore: () =>
                      ref.read(usersInfiniteListProvider.notifier).loadMore(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, user, _) => _UserTile(user: user),
                );
              },
              loading: () => const LoadingStateView(),
              error: (error, _) => ErrorStateView(
                message: error.toString(),
                onRetry: () => ref.invalidate(usersInfiniteListProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _UserTile extends StatelessWidget {
  const _UserTile({required this.user});

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: const CircleAvatar(child: Icon(Icons.person_outline_rounded)),
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: Wrap(
          spacing: AppSpacing.xs,
          children: [
            Chip(label: Text(user.isAdmin ? 'Admin' : 'Operador')),
            Chip(label: Text(user.metadata.active ? 'Ativo' : 'Inativo')),
          ],
        ),
      ),
    );
  }
}

class CreateUserPage extends ConsumerStatefulWidget {
  const CreateUserPage({super.key});

  static const routePath = '/users/new';

  @override
  ConsumerState<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends ConsumerState<CreateUserPage> {
  final _formKey = GlobalKey<FormState>();
  final _keycloakUserIdController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  bool _isAdmin = false;

  @override
  void dispose() {
    _keycloakUserIdController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      createUserControllerProvider,
      context,
      successMessage: 'Usuário criado com sucesso.',
    );

    ref.listen<AsyncValue<void>>(createUserControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final state = ref.watch(createUserControllerProvider);

    return AppPage(
      title: 'Novo usuário',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppTextField(
                  controller: _keycloakUserIdController,
                  label: 'Keycloak User ID',
                  hintText: 'UUID do usuário no Keycloak',
                  validator: (value) => FormValidators.requiredField(
                    value,
                    label: 'Keycloak User ID',
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _nameController,
                  label: 'Nome',
                  hintText: 'Nome completo',
                  validator: (value) =>
                      FormValidators.requiredField(value, label: 'Nome'),
                ),
                const SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _emailController,
                  label: 'E-mail',
                  hintText: 'usuario@empresa.com',
                  keyboardType: TextInputType.emailAddress,
                  validator: FormValidators.email,
                ),
                const SizedBox(height: AppSpacing.md),
                SwitchListTile(
                  value: _isAdmin,
                  onChanged: (value) => setState(() => _isAdmin = value),
                  title: const Text('Admin'),
                  contentPadding: EdgeInsets.zero,
                ),
                const SizedBox(height: AppSpacing.lg),
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: state.isLoading ? null : () => context.pop(),
                      child: const Text('Cancelar'),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    AppActionButton(
                      label: 'Salvar usuário',
                      icon: const Icon(Icons.save_outlined),
                      isLoading: state.isLoading,
                      onPressed: _submit,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    ref
        .read(createUserControllerProvider.notifier)
        .submit(
          CreateAppUserInput(
            keycloakUserId: _keycloakUserIdController.text.trim(),
            name: _nameController.text.trim(),
            email: _emailController.text.trim(),
            isAdmin: _isAdmin,
          ),
        );
  }
}
