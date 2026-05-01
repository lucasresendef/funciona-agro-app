import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/utils/async_value_ui.dart';
import 'package:field_management_app/core/utils/formatters.dart';
import 'package:field_management_app/core/utils/validators.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_destructive.dart';
import 'package:field_management_app/design_system/components/app_dropdown_field.dart';
import 'package:field_management_app/design_system/components/app_form_sheet.dart';
import 'package:field_management_app/design_system/components/app_field_loading.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:field_management_app/design_system/components/app_text_field.dart';
import 'package:field_management_app/design_system/components/async_state_views.dart';
import 'package:field_management_app/design_system/components/infinite_scroll_list_view.dart';
import 'package:field_management_app/design_system/foundations/app_layout.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';
import 'package:field_management_app/features/inventory/presentation/controllers/inventory_controller.dart';
import 'package:field_management_app/features/inventory/presentation/widgets/inventory_balance_filters_bar.dart';
import 'package:field_management_app/features/inventory/presentation/widgets/inventory_location_form.dart';
import 'package:field_management_app/features/products/presentation/controllers/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InventoryLocationsPage extends ConsumerWidget {
  const InventoryLocationsPage({super.key});

  static const routePath = '/inventory/locations';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationsAsync = ref.watch(inventoryLocationsInfiniteListProvider);
    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final filter = ref.watch(inventoryLocationsFilterProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;

    return AppPage(
      title: 'Locais de estoque',
      actions: [
        IconButton.filled(
          tooltip: 'Novo local',
          onPressed: () => _showCreateInventoryLocationDialog(context),
          icon: const Icon(Icons.add_rounded),
        ),
      ],
      child: Column(
        children: [
          AppSearchBar(
            initialValue: filter.search,
            hintText: 'Buscar por nome ou descrição',
            onChanged: (value) {
              ref.read(inventoryLocationsFilterProvider.notifier).state = filter
                  .copyWith(search: value);
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
                      ref
                          .read(inventoryLocationsFilterProvider.notifier)
                          .state = filter.copyWith(
                        farmId: value,
                      );
                    },
                  ),
                  orElse: SizedBox.shrink,
                ),
              ),
              FilterChip(
                label: const Text('Somente ativos'),
                selected: filter.active ?? false,
                onSelected: (selected) {
                  ref.read(inventoryLocationsFilterProvider.notifier).state =
                      filter.copyWith(active: selected);
                },
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Expanded(
            child: locationsAsync.when(
              data: (listState) {
                final items = listState.items;
                if (items.isEmpty) {
                  return const EmptyStateView(
                    title: 'Nenhum local encontrado',
                    message: 'Cadastre depósitos, armazéns ou pontos de apoio.',
                  );
                }

                return InfiniteScrollListView<InventoryLocation>(
                  items: items,
                  isLoadingMore: listState.isLoadingMore,
                  onRefresh: () => ref
                      .read(inventoryLocationsInfiniteListProvider.notifier)
                      .refreshList(),
                  onLoadMore: () => ref
                      .read(inventoryLocationsInfiniteListProvider.notifier)
                      .loadMore(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, location, _) {
                    return _InventoryLocationTile(
                      location: location,
                      onEdit: () =>
                          _showEditInventoryLocationDialog(context, location),
                      onDelete: () => _confirmDeleteInventoryLocation(
                        context,
                        ref,
                        location,
                      ),
                    );
                  },
                );
              },
              loading: () => const LoadingStateView(),
              error: (error, _) => ErrorStateView(
                message: error.toString(),
                onRetry: () =>
                    ref.invalidate(inventoryLocationsInfiniteListProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCreateInventoryLocationDialog(BuildContext context) {
    showAppFormSheet<void>(
      context: context,
      child: const CreateInventoryLocationPage(),
    );
  }

  void _showEditInventoryLocationDialog(
    BuildContext context,
    InventoryLocation location,
  ) {
    showAppFormSheet<void>(
      context: context,
      child: EditInventoryLocationPage(location: location),
    );
  }

  void _confirmDeleteInventoryLocation(
    BuildContext context,
    WidgetRef ref,
    InventoryLocation location,
  ) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Excluir local de estoque'),
          content: Text('Tem certeza que deseja excluir "${location.name}"?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                ref
                    .read(deleteInventoryLocationControllerProvider.notifier)
                    .submit(location.metadata.id, location.farmId);
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

class _InventoryLocationTile extends StatelessWidget {
  const _InventoryLocationTile({
    required this.location,
    required this.onEdit,
    required this.onDelete,
  });

  final InventoryLocation location;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ListTile(
        onTap: () => _showInventoryLocationDetailsSheet(
          context,
          location,
          onEdit,
          onDelete,
        ),
        contentPadding: EdgeInsets.zero,
        leading: const CircleAvatar(child: Icon(Icons.warehouse_outlined)),
        title: Text(
          location.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          location.description ?? 'Sem descrição',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}

void _showInventoryLocationDetailsSheet(
  BuildContext context,
  InventoryLocation location,
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
              location.name,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: AppSpacing.sm),
            Wrap(
              spacing: AppSpacing.sm,
              runSpacing: AppSpacing.xs,
              children: [
                Chip(
                  label: Text(location.metadata.active ? 'Ativo' : 'Inativo'),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(location.description ?? 'Sem descrição'),
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

class CreateInventoryLocationPage extends ConsumerStatefulWidget {
  const CreateInventoryLocationPage({super.key});

  static const routePath = '/inventory/locations/new';

  @override
  ConsumerState<CreateInventoryLocationPage> createState() =>
      _CreateInventoryLocationPageState();
}

class _CreateInventoryLocationPageState
    extends ConsumerState<CreateInventoryLocationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
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
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      createInventoryLocationControllerProvider,
      context,
      successMessage: 'Local criado com sucesso.',
    );

    ref.listen<AsyncValue<void>>(createInventoryLocationControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final state = ref.watch(createInventoryLocationControllerProvider);

    return AppPage(
      title: 'Novo local de estoque',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                InventoryLocationFormFields(
                  farmsAsync: farmsAsync,
                  farmId: _farmId,
                  onFarmChanged: (value) => setState(() => _farmId = value),
                  nameController: _nameController,
                  descriptionController: _descriptionController,
                  nameValidator: (value) =>
                      FormValidators.requiredField(value, label: 'Nome'),
                ),
                const SizedBox(height: AppSpacing.lg),
                InventoryFormActionsRow(
                  cancelLabel: 'Cancelar',
                  submitLabel: 'Salvar local',
                  icon: const Icon(Icons.save_outlined),
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
        .read(createInventoryLocationControllerProvider.notifier)
        .submit(
          CreateInventoryLocationInput(
            farmId: _farmId!,
            name: _nameController.text.trim(),
            description: _descriptionController.text.trim().isEmpty
                ? null
                : _descriptionController.text.trim(),
          ),
        );
  }
}

class EditInventoryLocationPage extends ConsumerStatefulWidget {
  const EditInventoryLocationPage({required this.location, super.key});

  final InventoryLocation location;

  @override
  ConsumerState<EditInventoryLocationPage> createState() =>
      _EditInventoryLocationPageState();
}

class _EditInventoryLocationPageState
    extends ConsumerState<EditInventoryLocationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  String? _farmId;

  @override
  void initState() {
    super.initState();
    _farmId = widget.location.farmId;
    _nameController.text = widget.location.name;
    _descriptionController.text = widget.location.description ?? '';
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
      updateInventoryLocationControllerProvider,
      context,
      successMessage: 'Local atualizado com sucesso.',
    );

    ref.listen<AsyncValue<void>>(updateInventoryLocationControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final state = ref.watch(updateInventoryLocationControllerProvider);

    return AppPage(
      title: 'Editar local de estoque',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                InventoryLocationFormFields(
                  farmsAsync: farmsAsync,
                  farmId: _farmId,
                  onFarmChanged: (value) => setState(() => _farmId = value),
                  nameController: _nameController,
                  descriptionController: _descriptionController,
                  nameValidator: (value) =>
                      FormValidators.requiredField(value, label: 'Nome'),
                ),
                const SizedBox(height: AppSpacing.lg),
                InventoryFormActionsRow(
                  cancelLabel: 'Cancelar',
                  submitLabel: 'Salvar local',
                  icon: const Icon(Icons.save_outlined),
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
        .read(updateInventoryLocationControllerProvider.notifier)
        .submit(
          UpdateInventoryLocationInput(
            id: widget.location.metadata.id,
            farmId: _farmId!,
            name: _nameController.text.trim(),
            description: _descriptionController.text.trim().isEmpty
                ? null
                : _descriptionController.text.trim(),
          ),
        );
  }
}

class InventoryBalancePage extends ConsumerWidget {
  const InventoryBalancePage({super.key});

  static const routePath = '/inventory/balance';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final balancesAsync = ref.watch(inventoryBalancesInfiniteListProvider);
    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final productsAsync = ref.watch(allActiveProductsProvider);
    final filter = ref.watch(inventoryBalanceFilterProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
    final locationsAsync = ref.watch(
      inventoryLocationsByFarmProvider(filter.farmId ?? selectedFarmId),
    );

    return AppPage(
      title: 'Saldos de estoque',
      actions: [
        IconButton.filled(
          tooltip: 'Ajustar saldo',
          onPressed: () => showAppFormSheet<void>(
            context: context,
            child: const CreateInventoryBalancePage(),
          ),
          icon: const Icon(Icons.add_rounded),
        ),
      ],
      child: Column(
        children: [
          InventoryBalanceFiltersBar(
            farmsAsync: farmsAsync,
            locationsAsync: locationsAsync,
            productsAsync: productsAsync,
            filter: filter,
            selectedFarmId: selectedFarmId,
            onFarmChanged: (value) {
              ref.read(inventoryBalanceFilterProvider.notifier).state = filter
                  .copyWith(farmId: value, inventoryLocationId: null);
            },
            onLocationChanged: (value) {
              ref.read(inventoryBalanceFilterProvider.notifier).state = filter
                  .copyWith(inventoryLocationId: value);
            },
            onProductChanged: (value) {
              ref.read(inventoryBalanceFilterProvider.notifier).state = filter
                  .copyWith(productId: value);
            },
          ),
          const SizedBox(height: AppSpacing.md),
          Expanded(
            child: balancesAsync.when(
              data: (listState) {
                final items = listState.items;
                if (items.isEmpty) {
                  return const EmptyStateView(
                    title: 'Nenhum saldo encontrado',
                    message:
                        'Registre o primeiro ajuste para materializar a posição de estoque.',
                  );
                }

                return InfiniteScrollListView<InventoryBalance>(
                  items: items,
                  isLoadingMore: listState.isLoadingMore,
                  onRefresh: () => ref
                      .read(inventoryBalancesInfiniteListProvider.notifier)
                      .refreshList(),
                  onLoadMore: () => ref
                      .read(inventoryBalancesInfiniteListProvider.notifier)
                      .loadMore(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, balance, _) =>
                      _InventoryBalanceTile(balance: balance),
                );
              },
              loading: () => const LoadingStateView(),
              error: (error, _) => ErrorStateView(
                message: error.toString(),
                onRetry: () =>
                    ref.invalidate(inventoryBalancesInfiniteListProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InventoryBalanceTile extends StatelessWidget {
  const _InventoryBalanceTile({required this.balance});

  final InventoryBalance balance;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: const CircleAvatar(
          child: Icon(Icons.pie_chart_outline_rounded),
        ),
        title: Text('Produto ${balance.productId}'),
        subtitle: Text(
          'Quantidade: ${AppFormatters.number(balance.quantity)} | Custo médio: ${AppFormatters.currency(balance.averageUnitCost)}',
        ),
        trailing: Chip(
          label: Text(balance.metadata.active ? 'Ativo' : 'Inativo'),
        ),
      ),
    );
  }
}

class CreateInventoryBalancePage extends ConsumerStatefulWidget {
  const CreateInventoryBalancePage({super.key});

  static const routePath = '/inventory/balance/new';

  @override
  ConsumerState<CreateInventoryBalancePage> createState() =>
      _CreateInventoryBalancePageState();
}

class _CreateInventoryBalancePageState
    extends ConsumerState<CreateInventoryBalancePage> {
  final _formKey = GlobalKey<FormState>();
  final _quantityController = TextEditingController();
  final _averageCostController = TextEditingController();
  final _notesController = TextEditingController();
  String? _farmId;
  String? _inventoryLocationId;
  String? _productId;

  @override
  void initState() {
    super.initState();
    _farmId = ref.read(sessionManagerProvider).selectedFarmId;
  }

  @override
  void dispose() {
    _quantityController.dispose();
    _averageCostController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      createInventoryBalanceControllerProvider,
      context,
      successMessage: 'Ajuste de saldo lançado com sucesso.',
    );

    ref.listen<AsyncValue<void>>(createInventoryBalanceControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final locationsAsync = ref.watch(inventoryLocationsByFarmProvider(_farmId));
    final productsAsync = ref.watch(allActiveProductsProvider);
    final state = ref.watch(createInventoryBalanceControllerProvider);

    return AppPage(
      title: 'Ajuste de saldo',
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
                          onChanged: (value) {
                            setState(() {
                              _farmId = value;
                              _inventoryLocationId = null;
                            });
                          },
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
                      child: locationsAsync.when(
                        data: (locations) => AppDropdownField<String>(
                          label: 'Local de estoque',
                          value: _inventoryLocationId,
                          items: locations
                              .map(
                                (location) => DropdownMenuItem<String>(
                                  value: location.metadata.id,
                                  child: Text(location.name),
                                ),
                              )
                              .toList(),
                          onChanged: (value) =>
                              setState(() => _inventoryLocationId = value),
                          validator: (value) =>
                              value == null ? 'Selecione o local.' : null,
                        ),
                        loading: () => const AppFieldLoading(),
                        error: (_, __) =>
                            const Text('Falha ao carregar locais.'),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: productsAsync.when(
                        data: (products) => AppDropdownField<String>(
                          label: 'Produto',
                          value: _productId,
                          items: products
                              .map(
                                (product) => DropdownMenuItem<String>(
                                  value: product.metadata.id,
                                  child: Text(product.name),
                                ),
                              )
                              .toList(),
                          onChanged: (value) =>
                              setState(() => _productId = value),
                          validator: (value) =>
                              value == null ? 'Selecione o produto.' : null,
                        ),
                        loading: () => const AppFieldLoading(),
                        error: (_, __) =>
                            const Text('Falha ao carregar produtos.'),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _quantityController,
                        label: 'Quantidade',
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        validator: (value) => FormValidators.positiveNumber(
                          value,
                          label: 'Quantidade',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _averageCostController,
                        label: 'Custo médio',
                        prefixText: 'R\$ ',
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        validator: (value) => FormValidators.positiveNumber(
                          value,
                          label: 'Custo médio',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _notesController,
                        label: 'Observações',
                        hintText: 'Motivo do ajuste ou referência operacional',
                        maxLines: 4,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),
                InventoryFormActionsRow(
                  cancelLabel: 'Cancelar',
                  submitLabel: 'Salvar ajuste',
                  icon: const Icon(Icons.save_outlined),
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
    if (!_formKey.currentState!.validate() ||
        _farmId == null ||
        _inventoryLocationId == null ||
        _productId == null) {
      return;
    }

    ref
        .read(createInventoryBalanceControllerProvider.notifier)
        .submit(
          CreateInventoryBalanceInput(
            farmId: _farmId!,
            inventoryLocationId: _inventoryLocationId!,
            productId: _productId!,
            quantity: double.parse(
              _quantityController.text.replaceAll(',', '.'),
            ),
            averageUnitCost: double.parse(
              _averageCostController.text.replaceAll(',', '.'),
            ),
            occurredAt: DateTime.now(),
            notes: _notesController.text.trim().isEmpty
                ? null
                : _notesController.text.trim(),
          ),
        );
  }
}
