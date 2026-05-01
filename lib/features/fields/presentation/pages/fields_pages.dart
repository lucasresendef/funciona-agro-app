import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/utils/async_value_ui.dart';
import 'package:field_management_app/core/utils/formatters.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_destructive.dart';
import 'package:field_management_app/design_system/components/app_form_actions.dart';
import 'package:field_management_app/design_system/components/app_form_sheet.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:field_management_app/design_system/components/async_state_views.dart';
import 'package:field_management_app/design_system/components/infinite_scroll_list_view.dart';
import 'package:field_management_app/design_system/foundations/app_layout.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:field_management_app/features/fields/domain/entities/field.dart';
import 'package:field_management_app/features/fields/presentation/controllers/fields_controller.dart';
import 'package:field_management_app/features/fields/presentation/widgets/field_form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FieldsPage extends ConsumerWidget {
  const FieldsPage({super.key});

  static const routePath = '/fields';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fieldsAsync = ref.watch(fieldsInfiniteListProvider);
    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final filter = ref.watch(fieldsFilterProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;

    return AppPage(
      title: 'Talhões',
      actions: [
        IconButton.filled(
          tooltip: 'Novo talhão',
          onPressed: () => showAppFormSheet<void>(
            context: context,
            child: const CreateFieldPage(),
          ),
          icon: const Icon(Icons.add_rounded),
        ),
      ],
      child: Column(
        children: [
          AppSearchBar(
            initialValue: filter.search,
            hintText: 'Buscar por nome',
            onChanged: (value) {
              ref.read(fieldsFilterProvider.notifier).state = filter.copyWith(
                search: value,
              );
            },
            trailing: [
              SizedBox(
                width: AppLayout.formFieldWidth(context, 260),
                child: farmsAsync.maybeWhen(
                  data: (farms) => DropdownButtonFormField<String?>(
                    value: filter.farmId ?? selectedFarmId,
                    decoration: const InputDecoration(labelText: 'Fazenda'),
                    items: [
                      const DropdownMenuItem<String?>(
                        value: null,
                        child: Text('Todas'),
                      ),
                      ...farms.map(
                        (farm) => DropdownMenuItem<String?>(
                          value: farm.metadata.id,
                          child: Text(farm.name),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      ref.read(fieldsFilterProvider.notifier).state = filter
                          .copyWith(farmId: value);
                    },
                  ),
                  orElse: SizedBox.shrink,
                ),
              ),
              FilterChip(
                label: const Text('Somente ativos'),
                selected: filter.active ?? false,
                onSelected: (selected) {
                  ref.read(fieldsFilterProvider.notifier).state = filter
                      .copyWith(active: selected);
                },
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Expanded(
            child: fieldsAsync.when(
              data: (listState) {
                final items = listState.items;
                if (items.isEmpty) {
                  return const EmptyStateView(
                    title: 'Nenhum talhão encontrado',
                    message: 'Selecione uma fazenda ou crie o primeiro talhão.',
                  );
                }

                return InfiniteScrollListView<Field>(
                  items: items,
                  isLoadingMore: listState.isLoadingMore,
                  onRefresh: () => ref
                      .read(fieldsInfiniteListProvider.notifier)
                      .refreshList(),
                  onLoadMore: () =>
                      ref.read(fieldsInfiniteListProvider.notifier).loadMore(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, field, _) {
                    return _FieldTile(
                      field: field,
                      onEdit: () => _showEditFieldDialog(context, field),
                      onDelete: () => _confirmDeleteField(context, ref, field),
                    );
                  },
                );
              },
              loading: () => const LoadingStateView(),
              error: (error, _) => ErrorStateView(
                message: error.toString(),
                onRetry: () => ref.invalidate(fieldsInfiniteListProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showEditFieldDialog(BuildContext context, Field field) {
    showAppFormSheet<void>(
      context: context,
      child: EditFieldPage(field: field),
    );
  }

  void _confirmDeleteField(BuildContext context, WidgetRef ref, Field field) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Excluir talhão'),
          content: Text('Tem certeza que deseja excluir "${field.name}"?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                ref
                    .read(deleteFieldControllerProvider.notifier)
                    .submit(field.metadata.id);
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

class _FieldTile extends StatelessWidget {
  const _FieldTile({
    required this.field,
    required this.onEdit,
    required this.onDelete,
  });

  final Field field;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ListTile(
        onTap: () => _showFieldDetailsSheet(context, field, onEdit, onDelete),
        contentPadding: EdgeInsets.zero,
        leading: const CircleAvatar(child: Icon(Icons.grid_view_rounded)),
        title: Text(field.name, maxLines: 1, overflow: TextOverflow.ellipsis),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: AppSpacing.xs),
            Text('Área: ${AppFormatters.number(field.areaHectares)} ha'),
          ],
        ),
        trailing: const Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}

void _showFieldDetailsSheet(
  BuildContext context,
  Field field,
  VoidCallback onEdit,
  VoidCallback onDelete,
) {
  showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    useSafeArea: true,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.md,
          AppSpacing.sm,
          AppSpacing.md,
          AppSpacing.lg,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              field.name,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: AppSpacing.sm),
            Wrap(
              spacing: AppSpacing.sm,
              runSpacing: AppSpacing.xs,
              children: [
                Chip(label: Text(field.metadata.active ? 'Ativo' : 'Inativo')),
                Chip(
                  label: Text(
                    'Área: ${AppFormatters.number(field.areaHectares)} ha',
                  ),
                ),
              ],
            ),
            if (field.description != null && field.description!.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.sm),
              Text(field.description!),
            ],
            const SizedBox(height: AppSpacing.lg),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                      onEdit();
                    },
                    icon: const Icon(Icons.edit_outlined),
                    label: const Text('Editar'),
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                      onDelete();
                    },
                    style: AppDestructive.outlinedStyle(context),
                    icon: Icon(
                      Icons.delete_outline,
                      color: AppDestructive.iconColor(context),
                    ),
                    label: const Text('Excluir'),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

class CreateFieldPage extends ConsumerStatefulWidget {
  const CreateFieldPage({super.key});

  static const routePath = '/fields/new';

  @override
  ConsumerState<CreateFieldPage> createState() => _CreateFieldPageState();
}

class _CreateFieldPageState extends ConsumerState<CreateFieldPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _areaController = TextEditingController();
  final _descriptionController = TextEditingController();
  String? _farmId;

  @override
  void initState() {
    super.initState();
    _farmId = ref.read(sessionManagerProvider).selectedFarmId;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _areaController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      createFieldControllerProvider,
      context,
      successMessage: 'Talhão criado com sucesso.',
    );

    ref.listen<AsyncValue<void>>(createFieldControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final state = ref.watch(createFieldControllerProvider);

    return AppPage(
      title: 'Novo talhão',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                FieldFormFields(
                  farmsAsync: farmsAsync,
                  farmId: _farmId,
                  onFarmChanged: (value) => setState(() => _farmId = value),
                  nameController: _nameController,
                  areaController: _areaController,
                  descriptionController: _descriptionController,
                  nameHint: 'Ex.: Talhão 07',
                  areaLabel: 'Área (ha)',
                  areaHint: 'Ex.: 135.5',
                  descriptionHint: 'Detalhes relevantes para a equipe de campo',
                ),
                const SizedBox(height: AppSpacing.lg),
                AppResponsiveFormActions(
                  cancelLabel: 'Cancelar',
                  submitLabel: 'Salvar talhão',
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
    if (!_formKey.currentState!.validate() || _farmId == null) {
      return;
    }

    ref
        .read(createFieldControllerProvider.notifier)
        .submit(
          CreateFieldInput(
            farmId: _farmId!,
            name: _nameController.text.trim(),
            areaHectares: double.parse(
              _areaController.text.trim().replaceAll(',', '.'),
            ),
            description: _descriptionController.text.trim().isEmpty
                ? null
                : _descriptionController.text.trim(),
          ),
        );
  }
}

class EditFieldPage extends ConsumerStatefulWidget {
  const EditFieldPage({required this.field, super.key});

  final Field field;

  @override
  ConsumerState<EditFieldPage> createState() => _EditFieldPageState();
}

class _EditFieldPageState extends ConsumerState<EditFieldPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _areaController;
  late final TextEditingController _descriptionController;
  late String? _farmId;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.field.name);
    _areaController = TextEditingController(
      text: AppFormatters.number(widget.field.areaHectares),
    );
    _descriptionController = TextEditingController(
      text: widget.field.description ?? '',
    );
    _farmId = widget.field.farmId;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _areaController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      updateFieldControllerProvider,
      context,
      successMessage: 'Talhão atualizado com sucesso.',
    );

    ref.listen<AsyncValue<void>>(updateFieldControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final state = ref.watch(updateFieldControllerProvider);

    return AppPage(
      title: 'Editar talhão',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                FieldFormFields(
                  farmsAsync: ref.watch(allActiveFarmsProvider),
                  farmId: _farmId,
                  onFarmChanged: (value) => setState(() => _farmId = value),
                  nameController: _nameController,
                  areaController: _areaController,
                  descriptionController: _descriptionController,
                  nameHint: 'Ex.: Talhão 1',
                  areaLabel: 'Área (hectares)',
                  areaHint: 'Ex.: 10.5',
                  descriptionHint: 'Descrição opcional do talhão',
                  descriptionMaxLines: 3,
                  areaKeyboardType: TextInputType.number,
                  farmsErrorText: 'Falha ao carregar fazendas.',
                  areaValidator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Área é obrigatória';
                    }
                    final area = double.tryParse(value.replaceAll(',', '.'));
                    if (area == null || area <= 0) {
                      return 'Área deve ser um número positivo';
                    }
                    return null;
                  },
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

    if (_farmId == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Selecione uma fazenda')));
      return;
    }

    ref
        .read(updateFieldControllerProvider.notifier)
        .submit(
          widget.field.metadata.id,
          UpdateFieldInput(
            id: widget.field.metadata.id,
            farmId: _farmId!,
            name: _nameController.text.trim(),
            areaHectares: double.parse(
              _areaController.text.trim().replaceAll(',', '.'),
            ),
            description: _descriptionController.text.trim().isEmpty
                ? null
                : _descriptionController.text.trim(),
          ),
        );
  }
}
