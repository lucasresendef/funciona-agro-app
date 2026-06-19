import 'package:field_management_app/core/auth/admin_access.dart';
import 'package:field_management_app/core/utils/async_value_ui.dart';
import 'package:field_management_app/design_system/components/app_action_button.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_destructive.dart';
import 'package:field_management_app/design_system/components/app_form_sheet.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:field_management_app/design_system/components/app_text_field.dart';
import 'package:field_management_app/design_system/components/async_state_views.dart';
import 'package:field_management_app/design_system/components/infinite_scroll_list_view.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/units/domain/entities/unit_of_measure.dart';
import 'package:field_management_app/features/units/presentation/controllers/units_controller.dart';
import 'package:field_management_app/core/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UnitsPage extends ConsumerWidget {
  const UnitsPage({super.key});

  static const routePath = '/units';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unitsAsync = ref.watch(unitsInfiniteListProvider);
    final filter = ref.watch(unitsFilterProvider);
    final isAdmin = ref.watch(isAdminProvider);
    final hasActiveFilters =
        (filter.search?.trim().isNotEmpty ?? false) || filter.active != true;

    return AppPage(
      title: 'Unidades',
      actions: [
        if (isAdmin)
          IconButton.filled(
            tooltip: 'Nova unidade',
            onPressed: () => showAppFormSheet<void>(
              context: context,
              child: const CreateUnitPage(),
            ),
            icon: const Icon(Icons.add_rounded),
          ),
      ],
      child: Column(
        children: [
          AppSearchBar(
            hintText: 'Buscar unidade por nome ou símbolo',
            initialValue: filter.search,
            actions: [
              IconButton.filledTonal(
                tooltip: 'Limpar filtros',
                onPressed: hasActiveFilters
                    ? () {
                        ref.read(unitsFilterProvider.notifier).state =
                            const UnitsFilter();
                      }
                    : null,
                icon: const Icon(Icons.filter_alt_off_rounded),
              ),
            ],
            onChanged: (value) {
              ref.read(unitsFilterProvider.notifier).state = filter.copyWith(
                search: value.trim().isEmpty ? null : value,
              );
            },
            trailing: [
              FilterChip(
                label: const Text('Somente ativas'),
                selected: filter.active ?? false,
                onSelected: (selected) {
                  ref.read(unitsFilterProvider.notifier).state = filter
                      .copyWith(active: selected);
                },
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Expanded(
            child: unitsAsync.when(
              data: (listState) {
                final units = listState.items;
                if (units.isEmpty) {
                  return const EmptyStateView(
                    title: 'Nenhuma unidade encontrada',
                    message: 'Cadastre a primeira unidade para os produtos.',
                  );
                }

                return InfiniteScrollListView<UnitOfMeasure>(
                  items: units,
                  isLoadingMore: listState.isLoadingMore,
                  onRefresh: () => ref
                      .read(unitsInfiniteListProvider.notifier)
                      .refreshList(),
                  onLoadMore: () =>
                      ref.read(unitsInfiniteListProvider.notifier).loadMore(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, unit, _) {
                    return AppCard(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(unit.name),
                        subtitle: Text('Símbolo: ${unit.symbol}'),
                        trailing: isAdmin
                            ? Wrap(
                                spacing: AppSpacing.xs,
                                children: [
                                  IconButton(
                                    tooltip: 'Editar',
                                    onPressed: () => showAppFormSheet<void>(
                                      context: context,
                                      child: EditUnitPage(unit: unit),
                                    ),
                                    icon: const Icon(Icons.edit_outlined),
                                  ),
                                  IconButton(
                                    tooltip: 'Excluir',
                                    style: AppDestructive.iconButtonStyle(
                                      context,
                                    ),
                                    onPressed: () => _confirmDelete(
                                      context: context,
                                      ref: ref,
                                      unit: unit,
                                    ),
                                    icon: Icon(
                                      Icons.delete_outline,
                                      color: AppDestructive.iconColor(context),
                                    ),
                                  ),
                                ],
                              )
                            : null,
                      ),
                    );
                  },
                );
              },
              loading: () => const LoadingStateView(),
              error: (error, _) => ErrorStateView(
                message: error.toString(),
                onRetry: () => ref.invalidate(unitsInfiniteListProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _confirmDelete({
    required BuildContext context,
    required WidgetRef ref,
    required UnitOfMeasure unit,
  }) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Excluir unidade'),
        content: Text('Deseja inativar a unidade "${unit.name}"?'),
        actions: [
          TextButton(
            onPressed: () => context.pop(false),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(true),
            style: AppDestructive.filledStyle(context),
            child: const Text('Excluir'),
          ),
        ],
      ),
    );

    if (confirmed != true) return;
    await ref
        .read(deleteUnitControllerProvider.notifier)
        .submit(unit.metadata.id);
  }
}

class CreateUnitPage extends ConsumerStatefulWidget {
  const CreateUnitPage({super.key});

  static const routePath = '/units/new';

  @override
  ConsumerState<CreateUnitPage> createState() => _CreateUnitPageState();
}

class _CreateUnitPageState extends ConsumerState<CreateUnitPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _symbolController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _symbolController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      createUnitControllerProvider,
      context,
      successMessage: 'Unidade criada com sucesso.',
    );

    ref.listen<AsyncValue<void>>(createUnitControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final state = ref.watch(createUnitControllerProvider);

    return AppPage(
      title: 'Nova unidade de medida',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppTextField(
                  controller: _nameController,
                  label: 'Nome',
                  hintText: 'Ex.: Litro',
                  validator: (value) =>
                      FormValidators.requiredField(value, label: 'Nome'),
                ),
                const SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _symbolController,
                  label: 'Símbolo',
                  hintText: 'Ex.: L',
                  validator: (value) =>
                      FormValidators.requiredField(value, label: 'Símbolo'),
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
                            label: 'Salvar unidade',
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
                          label: 'Salvar unidade',
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
    if (!_formKey.currentState!.validate()) {
      return;
    }

    ref
        .read(createUnitControllerProvider.notifier)
        .submit(
          CreateUnitInput(
            name: _nameController.text.trim(),
            symbol: _symbolController.text.trim(),
          ),
        );
  }
}

class EditUnitPage extends ConsumerStatefulWidget {
  const EditUnitPage({required this.unit, super.key});

  final UnitOfMeasure unit;

  @override
  ConsumerState<EditUnitPage> createState() => _EditUnitPageState();
}

class _EditUnitPageState extends ConsumerState<EditUnitPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _symbolController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.unit.name);
    _symbolController = TextEditingController(text: widget.unit.symbol);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _symbolController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      updateUnitControllerProvider,
      context,
      successMessage: 'Unidade atualizada com sucesso.',
    );

    ref.listen<AsyncValue<void>>(updateUnitControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final state = ref.watch(updateUnitControllerProvider);

    return AppPage(
      title: 'Editar unidade de medida',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppTextField(
                  controller: _nameController,
                  label: 'Nome',
                  hintText: 'Ex.: Litro',
                  validator: (value) =>
                      FormValidators.requiredField(value, label: 'Nome'),
                ),
                const SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _symbolController,
                  label: 'Símbolo',
                  hintText: 'Ex.: L',
                  validator: (value) =>
                      FormValidators.requiredField(value, label: 'Símbolo'),
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
                            label: 'Salvar alterações',
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
                          label: 'Salvar alterações',
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
    if (!_formKey.currentState!.validate()) {
      return;
    }

    ref
        .read(updateUnitControllerProvider.notifier)
        .submit(
          UpdateUnitInput(
            id: widget.unit.metadata.id,
            name: _nameController.text.trim(),
            symbol: _symbolController.text.trim(),
          ),
        );
  }
}
