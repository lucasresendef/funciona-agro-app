import 'package:field_management_app/core/auth/admin_access.dart';
import 'package:field_management_app/core/utils/async_value_ui.dart';
import 'package:field_management_app/core/utils/formatters.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_destructive.dart';
import 'package:field_management_app/design_system/components/app_detail_dialog.dart';
import 'package:field_management_app/design_system/components/app_form_actions.dart';
import 'package:field_management_app/design_system/components/app_form_sheet.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:field_management_app/design_system/components/async_state_views.dart';
import 'package:field_management_app/design_system/components/infinite_scroll_list_view.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/farms/domain/entities/farm.dart';
import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:field_management_app/features/farms/presentation/widgets/farm_form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FarmsPage extends ConsumerWidget {
  const FarmsPage({super.key});

  static const routePath = '/farms';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmsAsync = ref.watch(farmsInfiniteListProvider);
    final filter = ref.watch(farmsFilterProvider);
    final isAdmin = ref.watch(isAdminProvider);
    final hasActiveFilters =
        (filter.search?.trim().isNotEmpty ?? false) || filter.active != true;

    return AppPage(
      title: 'Fazendas',
      actions: [
        if (isAdmin)
          IconButton.filled(
            tooltip: 'Nova fazenda',
            onPressed: () => _showCreateFarmDialog(context),
            icon: const Icon(Icons.add_rounded),
          ),
      ],
      child: Column(
        children: [
          AppSearchBar(
            initialValue: filter.search,
            hintText: 'Buscar por nome',
            actions: [
              IconButton.filledTonal(
                tooltip: 'Limpar filtros',
                onPressed: hasActiveFilters
                    ? () {
                        ref.read(farmsFilterProvider.notifier).state =
                            const FarmsFilter();
                      }
                    : null,
                icon: const Icon(Icons.filter_alt_off_rounded),
              ),
            ],
            onChanged: (value) {
              ref.read(farmsFilterProvider.notifier).state = filter.copyWith(
                search: value,
              );
            },
            trailing: [
              FilterChip(
                label: const Text('Somente ativas'),
                selected: filter.active ?? false,
                onSelected: (selected) {
                  ref.read(farmsFilterProvider.notifier).state = filter
                      .copyWith(active: selected);
                },
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Expanded(
            child: farmsAsync.when(
              data: (listState) {
                final items = listState.items;
                if (items.isEmpty) {
                  return const EmptyStateView(
                    title: 'Nenhuma fazenda encontrada',
                    message:
                        'Ajuste os filtros ou cadastre a primeira fazenda da operação.',
                  );
                }

                return InfiniteScrollListView<Farm>(
                  items: items,
                  isLoadingMore: listState.isLoadingMore,
                  onRefresh: () => ref
                      .read(farmsInfiniteListProvider.notifier)
                      .refreshList(),
                  onLoadMore: () =>
                      ref.read(farmsInfiniteListProvider.notifier).loadMore(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, farm, _) {
                    return _FarmTile(
                      farm: farm,
                      canManage: isAdmin,
                      onEdit: () => _showEditFarmDialog(context, farm),
                      onDelete: () => _confirmDeleteFarm(context, ref, farm),
                    );
                  },
                );
              },
              loading: () => const LoadingStateView(),
              error: (error, _) => ErrorStateView(
                message: error.toString(),
                onRetry: () => ref.invalidate(farmsInfiniteListProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCreateFarmDialog(BuildContext context) {
    showAppFormSheet<void>(context: context, child: const CreateFarmPage());
  }

  void _showEditFarmDialog(BuildContext context, Farm farm) {
    showAppFormSheet<void>(
      context: context,
      child: EditFarmPage(farm: farm),
    );
  }

  void _confirmDeleteFarm(BuildContext context, WidgetRef ref, Farm farm) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Excluir fazenda'),
          content: Text('Tem certeza que deseja excluir "${farm.name}"?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                ref
                    .read(deleteFarmControllerProvider.notifier)
                    .submit(farm.metadata.id);
              },
              style: AppDestructive.textStyle(context),
              child: const Text('Excluir'),
            ),
          ],
        );
      },
    );
  }
}

class _FarmTile extends StatelessWidget {
  const _FarmTile({
    required this.farm,
    required this.canManage,
    required this.onEdit,
    required this.onDelete,
  });

  final Farm farm;
  final bool canManage;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ListTile(
        onTap: () => _showFarmDetailsSheet(context, farm, canManage, onEdit, onDelete),
        contentPadding: EdgeInsets.zero,
        leading: const CircleAvatar(child: Icon(Icons.agriculture_outlined)),
        title: Text(farm.name, maxLines: 1, overflow: TextOverflow.ellipsis),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: AppSpacing.xs),
            Text(
              'Atualizada em ${AppFormatters.dateTime(farm.metadata.updatedAt)}',
            ),
          ],
        ),
        trailing: const Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}

void _showFarmDetailsSheet(
  BuildContext context,
  Farm farm,
  bool canManage,
  VoidCallback onEdit,
  VoidCallback onDelete,
) {
  showAppDetailDialog<void>(
    context: context,
    title: farm.name,
    canManage: canManage,
    onEdit: onEdit,
    onDelete: onDelete,
    content: Text(
      farm.description?.isNotEmpty == true ? farm.description! : 'Sem descrição',
    ),
  );
}

class CreateFarmPage extends ConsumerStatefulWidget {
  const CreateFarmPage({super.key});

  static const routePath = '/farms/new';

  @override
  ConsumerState<CreateFarmPage> createState() => _CreateFarmPageState();
}

class _CreateFarmPageState extends ConsumerState<CreateFarmPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      createFarmControllerProvider,
      context,
      successMessage: 'Fazenda criada com sucesso.',
    );

    ref.listen<AsyncValue<void>>(createFarmControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final state = ref.watch(createFarmControllerProvider);

    return AppPage(
      title: 'Nova fazenda',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                FarmFormFields(
                  nameController: _nameController,
                  descriptionController: _descriptionController,
                  nameHint: 'Ex.: Fazenda Santa Clara',
                  descriptionHint: 'Observações operacionais da fazenda',
                ),
                const SizedBox(height: AppSpacing.lg),
                AppResponsiveFormActions(
                  cancelLabel: 'Cancelar',
                  submitLabel: 'Salvar fazenda',
                  submitIcon: const Icon(Icons.save_outlined),
                  isLoading: state.isLoading,
                  onCancel: () => context.pop(),
                  onSubmit: _submit,
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
        .read(createFarmControllerProvider.notifier)
        .submit(
          CreateFarmInput(
            name: _nameController.text.trim(),
            description: _descriptionController.text.trim().isEmpty
                ? null
                : _descriptionController.text.trim(),
          ),
        );
  }
}

class EditFarmPage extends ConsumerStatefulWidget {
  const EditFarmPage({required this.farm, super.key});

  final Farm farm;

  @override
  ConsumerState<EditFarmPage> createState() => _EditFarmPageState();
}

class _EditFarmPageState extends ConsumerState<EditFarmPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.farm.name);
    _descriptionController = TextEditingController(
      text: widget.farm.description ?? '',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      updateFarmControllerProvider,
      context,
      successMessage: 'Fazenda atualizada com sucesso.',
    );

    ref.listen<AsyncValue<void>>(updateFarmControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final state = ref.watch(updateFarmControllerProvider);

    return AppPage(
      title: 'Editar fazenda',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                FarmFormFields(
                  nameController: _nameController,
                  descriptionController: _descriptionController,
                  nameHint: 'Ex.: Fazenda São João',
                  descriptionHint: 'Descrição opcional da fazenda',
                  descriptionMaxLines: 3,
                ),
                const SizedBox(height: AppSpacing.lg),
                AppResponsiveFormActions(
                  cancelLabel: 'Cancelar',
                  submitLabel: 'Salvar alterações',
                  submitIcon: const Icon(Icons.save_outlined),
                  isLoading: state.isLoading,
                  onCancel: () => context.pop(),
                  onSubmit: _submit,
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
        .read(updateFarmControllerProvider.notifier)
        .submit(
          widget.farm.metadata.id,
          UpdateFarmInput(
            id: widget.farm.metadata.id,
            name: _nameController.text.trim(),
            description: _descriptionController.text.trim().isEmpty
                ? null
                : _descriptionController.text.trim(),
          ),
        );
  }
}
