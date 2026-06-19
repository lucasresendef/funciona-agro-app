import 'package:field_management_app/core/utils/async_value_ui.dart';
import 'package:field_management_app/design_system/components/app_action_button.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_dropdown_field.dart';
import 'package:field_management_app/design_system/components/app_form_sheet.dart';
import 'package:field_management_app/design_system/components/app_field_loading.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:field_management_app/design_system/components/async_state_views.dart';
import 'package:field_management_app/design_system/components/infinite_scroll_list_view.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:field_management_app/features/permissions/domain/entities/farm_user_permission.dart';
import 'package:field_management_app/features/permissions/presentation/controllers/permissions_controller.dart';
import 'package:field_management_app/features/users/presentation/controllers/users_controller.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PermissionsPage extends ConsumerWidget {
  const PermissionsPage({super.key});

  static const routePath = '/permissions';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final permissionsAsync = ref.watch(permissionsInfiniteListProvider);
    final filter = ref.watch(permissionsFilterProvider);

    return AppPage(
      title: 'Permissões por fazenda',
      actions: [
        IconButton.filled(
          tooltip: 'Nova permissão',
          onPressed: () => showAppFormSheet<void>(
            context: context,
            child: const CreatePermissionPage(),
          ),
          icon: const Icon(Icons.add_rounded),
        ),
      ],
      child: Column(
        children: [
          AppSearchBar(
            hintText: 'Filtre as permissões pelos controles abaixo',
            onChanged: (_) {},
            trailing: [
              SizedBox(
                width: double.infinity,
                child: AppDropdownField<FarmUserRole?>(
                  label: 'Papel',
                  value: filter.role,
                  items: [
                    const DropdownMenuItem<FarmUserRole?>(
                      value: null,
                      child: Text('Todos'),
                    ),
                    ...FarmUserRole.values.map(
                      (role) => DropdownMenuItem<FarmUserRole?>(
                        value: role,
                        child: Text(role.label),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    ref.read(permissionsFilterProvider.notifier).state = filter
                        .copyWith(role: value);
                  },
                ),
              ),
              FilterChip(
                label: const Text('Somente ativas'),
                selected: filter.active ?? false,
                onSelected: (selected) {
                  ref.read(permissionsFilterProvider.notifier).state = filter
                      .copyWith(active: selected);
                },
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Expanded(
            child: permissionsAsync.when(
              data: (listState) {
                final items = listState.items;
                if (items.isEmpty) {
                  return const EmptyStateView(
                    title: 'Nenhuma permissão encontrada',
                    message:
                        'Cadastre o primeiro papel por fazenda para orientar a operação.',
                  );
                }

                return InfiniteScrollListView<FarmUserPermission>(
                  items: items,
                  isLoadingMore: listState.isLoadingMore,
                  onRefresh: () => ref
                      .read(permissionsInfiniteListProvider.notifier)
                      .refreshList(),
                  onLoadMore: () => ref
                      .read(permissionsInfiniteListProvider.notifier)
                      .loadMore(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, permission, _) =>
                      _PermissionTile(permission: permission),
                );
              },
              loading: () => const LoadingStateView(),
              error: (error, _) => ErrorStateView(
                message: error.toString(),
                onRetry: () => ref.invalidate(permissionsInfiniteListProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PermissionTile extends StatelessWidget {
  const _PermissionTile({required this.permission});

  final FarmUserPermission permission;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: const CircleAvatar(child: Icon(Icons.verified_user_outlined)),
        title: Text(permission.userName),
        subtitle: Text(permission.userEmail),
        trailing: Wrap(
          spacing: AppSpacing.xs,
          children: [
            Chip(label: Text(permission.role.label)),
            Chip(label: Text(permission.metadata.active ? 'Ativa' : 'Inativa')),
          ],
        ),
      ),
    );
  }
}

class CreatePermissionPage extends ConsumerStatefulWidget {
  const CreatePermissionPage({super.key});

  static const routePath = '/permissions/new';

  @override
  ConsumerState<CreatePermissionPage> createState() =>
      _CreatePermissionPageState();
}

class _CreatePermissionPageState extends ConsumerState<CreatePermissionPage> {
  final _formKey = GlobalKey<FormState>();
  String? _farmId;
  String? _userId;
  FarmUserRole _role = FarmUserRole.operator;

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      createPermissionControllerProvider,
      context,
      successMessage: 'Permissão criada com sucesso.',
    );

    ref.listen<AsyncValue<void>>(createPermissionControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final usersAsync = ref.watch(allActiveUsersProvider);
    final state = ref.watch(createPermissionControllerProvider);

    return AppPage(
      title: 'Nova permissão por fazenda',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Wrap(
                  spacing: AppSpacing.md,
                  runSpacing: AppSpacing.md,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: farmsAsync.when(
                        data: (farms) => AppDropdownField<String>(
                          label: 'Fazenda',
                          value: _farmId,
                          items: farms
                              .map(
                                (farm) => DropdownMenuItem<String>(
                                  value: farm.metadata.id,
                                  child: Text(farm.name),
                                ),
                              )
                              .toList(),
                          onChanged: (value) => setState(() => _farmId = value),
                          validator: (value) =>
                              value == null ? 'Selecione a fazenda.' : null,
                        ),
                        loading: () => const AppFieldLoading(),
                        error: (_, __) =>
                            const Text('Falha ao carregar fazendas.'),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: usersAsync.when(
                        data: (users) => AppDropdownField<String>(
                          label: 'Usuário',
                          value: _userId,
                          items: users
                              .map(
                                (user) => DropdownMenuItem<String>(
                                  value: user.metadata.id,
                                  child: Text('${user.name} (${user.email})'),
                                ),
                              )
                              .toList(),
                          onChanged: (value) => setState(() => _userId = value),
                          validator: (value) =>
                              value == null ? 'Selecione o usuário.' : null,
                        ),
                        loading: () => const AppFieldLoading(),
                        error: (_, __) =>
                            const Text('Falha ao carregar usuários.'),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppDropdownField<FarmUserRole>(
                        label: 'Papel',
                        value: _role,
                        items: FarmUserRole.values
                            .map(
                              (role) => DropdownMenuItem<FarmUserRole>(
                                value: role,
                                child: Text(role.label),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            setState(() => _role = value);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final compact = constraints.maxWidth < 340;
                    if (compact) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          OutlinedButton(
                            onPressed: state.isLoading
                                ? null
                                : () => context.pop(),
                            child: const Text('Cancelar'),
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          AppActionButton(
                            label: 'Salvar permissão',
                            icon: const Icon(Icons.save_outlined),
                            isLoading: state.isLoading,
                            isExpanded: true,
                            onPressed: _submit,
                          ),
                        ],
                      );
                    }

                    return Row(
                      children: [
                        OutlinedButton(
                          onPressed: state.isLoading
                              ? null
                              : () => context.pop(),
                          child: const Text('Cancelar'),
                        ),
                        const SizedBox(width: AppSpacing.md),
                        AppActionButton(
                          label: 'Salvar permissão',
                          icon: const Icon(Icons.save_outlined),
                          isLoading: state.isLoading,
                          onPressed: _submit,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate() ||
        _farmId == null ||
        _userId == null) {
      return;
    }

    ref
        .read(createPermissionControllerProvider.notifier)
        .submit(
          CreateFarmPermissionInput(
            farmId: _farmId!,
            userId: _userId!,
            role: _role,
          ),
        );
  }
}
