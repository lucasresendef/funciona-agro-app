import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/utils/async_value_ui.dart';
import 'package:field_management_app/design_system/components/app_action_button.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_destructive.dart';
import 'package:field_management_app/design_system/components/app_confirm_dialog.dart';
import 'package:field_management_app/design_system/components/app_dropdown_field.dart';
import 'package:field_management_app/design_system/components/app_form_sheet.dart';
import 'package:field_management_app/design_system/components/app_field_loading.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:field_management_app/design_system/components/app_text_field.dart';
import 'package:field_management_app/design_system/components/async_state_views.dart';
import 'package:field_management_app/design_system/components/infinite_scroll_list_view.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';
import 'package:field_management_app/features/field_operations/presentation/controllers/field_operations_controller.dart';
import 'package:field_management_app/features/field_operations/presentation/utils/operation_stock_math.dart';
import 'package:field_management_app/features/field_operations/presentation/widgets/operation_summary_page.dart';
import 'package:field_management_app/features/field_operations/presentation/widgets/product_picker_sheet.dart';
import 'package:field_management_app/features/fields/presentation/controllers/fields_controller.dart';
import 'package:field_management_app/features/inventory/presentation/controllers/inventory_controller.dart';
import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:field_management_app/features/products/presentation/controllers/products_controller.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:field_management_app/core/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FieldOperationsPage extends ConsumerWidget {
  const FieldOperationsPage({super.key});

  static const routePath = '/field-operations';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final operationsAsync = ref.watch(fieldOperationsInfiniteListProvider);
    final filter = ref.watch(fieldOperationsFilterProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
    final fieldsByFarmAsync = ref.watch(fieldsByFarmProvider(selectedFarmId));
    final fieldNameById = fieldsByFarmAsync.maybeWhen(
      data: (fields) => <String, String>{
        for (final field in fields) field.metadata.id: field.name,
      },
      orElse: () => const <String, String>{},
    );

    return AppPage(
      title: 'Operações',
      actions: [
        IconButton.filled(
          tooltip: 'Nova operação',
          onPressed: () => showAppFormSheet<void>(
            context: context,
            child: const CreateFieldOperationPage(),
          ),
          icon: const Icon(Icons.add_rounded),
        ),
      ],
      child: Column(
        children: [
          AppSearchBar(hintText: 'Filtre as operações', onChanged: (_) {}),
          const SizedBox(height: AppSpacing.sm),
          Align(
            alignment: Alignment.centerLeft,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: FieldOperationsStatusScope.values
                    .map(
                      (scope) => Padding(
                        padding: const EdgeInsets.only(right: AppSpacing.xs),
                        child: _StatusScopeChip(
                          scope: scope,
                          selected: filter.statusScope == scope,
                          onTap: () {
                            ref
                                .read(fieldOperationsFilterProvider.notifier)
                                .state = filter.copyWith(
                              statusScope: scope,
                            );
                          },
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Expanded(
            child: operationsAsync.when(
              data: (listState) {
                final operations = listState.items;
                if (operations.isEmpty) {
                  return const EmptyStateView(
                    title: 'Nenhuma operação encontrada',
                    message:
                        'Cadastre uma operação para começar o acompanhamento.',
                  );
                }

                return InfiniteScrollListView<FieldOperation>(
                  items: operations,
                  isLoadingMore: listState.isLoadingMore,
                  onRefresh: () => ref
                      .read(fieldOperationsInfiniteListProvider.notifier)
                      .refreshList(),
                  onLoadMore: () => ref
                      .read(fieldOperationsInfiniteListProvider.notifier)
                      .loadMore(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, operation, _) {
                    final rawFieldIds = operation.fieldIds.isNotEmpty
                        ? operation.fieldIds
                        : operation.fields.map((field) => field.fieldId);
                    final names = rawFieldIds
                        .map((id) => fieldNameById[id] ?? id)
                        .toList();
                    return _FieldOperationTile(
                      operation: operation,
                      fieldNames: names,
                      onTap: () => showAppFormSheet<void>(
                        context: context,
                        child: operation.status == FieldOperationStatus.open
                            ? FinalizeFieldOperationPage(operation: operation)
                            : OperationSummaryPage(operation: operation),
                      ),
                    );
                  },
                );
              },
              loading: () => const LoadingStateView(),
              error: (error, _) => ErrorStateView(
                message: error.toString(),
                onRetry: () =>
                    ref.invalidate(fieldOperationsInfiniteListProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FieldOperationTile extends StatelessWidget {
  const _FieldOperationTile({
    required this.operation,
    required this.fieldNames,
    this.onTap,
  });

  final FieldOperation operation;
  final List<String> fieldNames;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final statusVisual = _statusVisual(context, operation.status);
    return AppCard(
      color: statusVisual.cardColor,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: statusVisual.leadingBackgroundColor,
          child: Icon(
            Icons.agriculture_outlined,
            color: statusVisual.leadingIconColor,
          ),
        ),
        title: Text(_operationLabel(operation.sequenceNumber)),
        subtitle: Text(
          'Talhões: ${fieldNames.join(', ')}\nItens: ${operation.items.length}',
        ),
        isThreeLine: true,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Chip(
              backgroundColor: statusVisual.chipBackgroundColor,
              side: BorderSide(color: statusVisual.chipBorderColor),
              label: Text(
                operation.status.label,
                style: TextStyle(
                  color: statusVisual.chipForegroundColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            if (onTap != null) ...[
              const SizedBox(width: AppSpacing.xs),
              const Icon(Icons.chevron_right_rounded),
            ],
          ],
        ),
      ),
    );
  }
}

class _StatusScopeChip extends StatelessWidget {
  const _StatusScopeChip({
    required this.scope,
    required this.selected,
    required this.onTap,
  });

  final FieldOperationsStatusScope scope;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final visual = _statusScopeVisual(scope);
    final selectedBackground = visual.selectedBackground;
    final idleBackground = Theme.of(context).colorScheme.surface;
    final selectedBorder = visual.selectedBorder;
    final idleBorder = selectedBorder.withValues(alpha: 0.42);
    final textColor = selected
        ? visual.selectedText
        : Theme.of(context).colorScheme.onSurfaceVariant;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(999),
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOutCubic,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(999),
            color: selected ? selectedBackground : idleBackground,
            border: Border.all(
              color: selected ? selectedBorder : idleBorder,
              width: selected ? 1.4 : 1,
            ),
            boxShadow: selected
                ? [
                    BoxShadow(
                      color: selectedBorder.withValues(alpha: 0.18),
                      blurRadius: 14,
                      offset: const Offset(0, 5),
                    ),
                  ]
                : const [],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected ? selectedBorder : idleBorder,
                ),
              ),
              const SizedBox(width: AppSpacing.xs),
              Text(
                scope.compactLabel,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String _operationLabel(int? sequenceNumber) {
  if (sequenceNumber == null) {
    return 'Operação';
  }
  return 'Operação #$sequenceNumber';
}

_StatusScopeVisual _statusScopeVisual(FieldOperationsStatusScope scope) {
  return switch (scope) {
    FieldOperationsStatusScope.openAndFinished => const _StatusScopeVisual(
      selectedBackground: Color(0xFFE9F3EC),
      selectedBorder: Color(0xFF6F9C80),
      selectedText: Color(0xFF2F6F4F),
    ),
    FieldOperationsStatusScope.open => const _StatusScopeVisual(
      selectedBackground: Color(0xFFFFF1D7),
      selectedBorder: Color(0xFFE0A238),
      selectedText: Color(0xFF8A5200),
    ),
    FieldOperationsStatusScope.finished => const _StatusScopeVisual(
      selectedBackground: Color(0xFFDEF3E3),
      selectedBorder: Color(0xFF5BA26D),
      selectedText: Color(0xFF1F6A3D),
    ),
    FieldOperationsStatusScope.canceled => const _StatusScopeVisual(
      selectedBackground: Color(0xFFFBE8E8),
      selectedBorder: Color(0xFFE39A9A),
      selectedText: Color(0xFFA14646),
    ),
  };
}

_OperationStatusVisual _statusVisual(
  BuildContext context,
  FieldOperationStatus status,
) {
  final scheme = Theme.of(context).colorScheme;
  return switch (status) {
    FieldOperationStatus.open => _OperationStatusVisual(
      chipBackgroundColor: const Color(0xFFFFF5E6),
      chipBorderColor: const Color(0xFFE6A23C),
      chipForegroundColor: const Color(0xFF8A5200),
      leadingBackgroundColor: const Color(0xFFFFE8BF),
      leadingIconColor: const Color(0xFF8A5200),
      cardColor: const Color(0xFFFFFBF4),
    ),
    FieldOperationStatus.finished => _OperationStatusVisual(
      chipBackgroundColor: scheme.primaryContainer.withValues(alpha: 0.65),
      chipBorderColor: scheme.primary.withValues(alpha: 0.35),
      chipForegroundColor: scheme.primary,
      leadingBackgroundColor: scheme.primaryContainer.withValues(alpha: 0.95),
      leadingIconColor: scheme.primary,
      cardColor: scheme.primaryContainer.withValues(alpha: 0.16),
    ),
    FieldOperationStatus.canceled => _OperationStatusVisual(
      chipBackgroundColor: const Color(0xFFFEECEC),
      chipBorderColor: const Color(0xFFE67C7C),
      chipForegroundColor: const Color(0xFF9F3030),
      leadingBackgroundColor: const Color(0xFFFBD6D6),
      leadingIconColor: const Color(0xFF9F3030),
      cardColor: const Color(0xFFFFF8F8),
    ),
  };
}

class _OperationStatusVisual {
  const _OperationStatusVisual({
    required this.chipBackgroundColor,
    required this.chipBorderColor,
    required this.chipForegroundColor,
    required this.leadingBackgroundColor,
    required this.leadingIconColor,
    required this.cardColor,
  });

  final Color chipBackgroundColor;
  final Color chipBorderColor;
  final Color chipForegroundColor;
  final Color leadingBackgroundColor;
  final Color leadingIconColor;
  final Color cardColor;
}

class _StatusScopeVisual {
  const _StatusScopeVisual({
    required this.selectedBackground,
    required this.selectedBorder,
    required this.selectedText,
  });

  final Color selectedBackground;
  final Color selectedBorder;
  final Color selectedText;
}

class CreateFieldOperationPage extends ConsumerStatefulWidget {
  const CreateFieldOperationPage({super.key});

  static const routePath = '/field-operations/new';

  @override
  ConsumerState<CreateFieldOperationPage> createState() =>
      _CreateFieldOperationPageState();
}

class _CreateFieldOperationPageState
    extends ConsumerState<CreateFieldOperationPage> {
  final _formKey = GlobalKey<FormState>();
  final _descriptionController = TextEditingController();
  final List<_OperationItemDraft> _items = [];
  int _nextItemOrder = 1;
  String? _farmId;
  final Set<String> _fieldIds = <String>{};
  String? _inventoryLocationId;

  @override
  void initState() {
    super.initState();
    _farmId = ref.read(sessionManagerProvider).selectedFarmId;
    _items.add(_OperationItemDraft(order: _nextItemOrder++));
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    for (final item in _items) {
      item.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      createFieldOperationControllerProvider,
      context,
      successMessage: 'Operação registrada com sucesso.',
    );

    ref.listen<AsyncValue<void>>(createFieldOperationControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final fieldsAsync = ref.watch(fieldsByFarmProvider(_farmId));
    final locationsAsync = ref.watch(inventoryLocationsByFarmProvider(_farmId));
    final productsAsync = ref.watch(allActiveProductsProvider);
    final availableByProduct = productsAsync.maybeWhen(
      data: (products) => <String, double>{
        for (final product in products)
          product.metadata.id: product.stockByLocation
              .where(
                (stock) =>
                    stock.farmId == _farmId &&
                    stock.inventoryLocationId == _inventoryLocationId,
              )
              .fold<double>(0, (sum, stock) => sum + stock.quantity),
      },
      orElse: () => const <String, double>{},
    );
    final adjustedAvailableByProduct = Map<String, double>.from(
      availableByProduct,
    );
    for (final item in _items) {
      if (item.productId != null && item.sentValue > 0) {
        adjustedAvailableByProduct[item.productId!] =
            (adjustedAvailableByProduct[item.productId!] ?? 0) - item.sentValue;
      }
    }
    final costByProduct = productsAsync.maybeWhen(
      data: (products) => <String, double>{
        for (final product in products)
          product.metadata.id: (() {
            final stock = product.stockByLocation
                .where(
                  (item) =>
                      item.farmId == _farmId &&
                      item.inventoryLocationId == _inventoryLocationId,
                )
                .firstOrNull;
            return stock?.averageUnitCost ?? 0;
          })(),
      },
      orElse: () => const <String, double>{},
    );
    final state = ref.watch(createFieldOperationControllerProvider);

    return AppPage(
      title: 'Nova operação de campo',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                farmsAsync.when(
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
                        _fieldIds.clear();
                        _inventoryLocationId = null;
                      });
                    },
                    validator: (value) =>
                        value == null ? 'Selecione a fazenda.' : null,
                  ),
                  loading: () => const AppFieldLoading(),
                  error: (_, __) => const Text('Falha ao carregar fazendas.'),
                ),
                const SizedBox(height: AppSpacing.md),
                fieldsAsync.when(
                  data: (fields) => FormField<Set<String>>(
                    initialValue: _fieldIds,
                    validator: (_) => _fieldIds.isEmpty
                        ? 'Selecione ao menos um talhão.'
                        : null,
                    builder: (field) => InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Talhões',
                        errorText: field.errorText,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: AppSpacing.xs,
                            runSpacing: AppSpacing.xs,
                            children: _fieldIds.isEmpty
                                ? const [Text('Nenhum talhão selecionado')]
                                : fields
                                      .where(
                                        (item) => _fieldIds.contains(
                                          item.metadata.id,
                                        ),
                                      )
                                      .map(
                                        (item) => Chip(label: Text(item.name)),
                                      )
                                      .toList(),
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          ...fields.map(
                            (item) => CheckboxListTile(
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              value: _fieldIds.contains(item.metadata.id),
                              title: Text(item.name),
                              onChanged: _farmId == null
                                  ? null
                                  : (selected) {
                                      setState(() {
                                        if (selected == true) {
                                          _fieldIds.add(item.metadata.id);
                                        } else {
                                          _fieldIds.remove(item.metadata.id);
                                        }
                                        field.didChange(_fieldIds);
                                      });
                                    },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  loading: () => const AppFieldLoading(),
                  error: (_, __) => const Text('Falha ao carregar talhões.'),
                ),
                const SizedBox(height: AppSpacing.md),
                locationsAsync.when(
                  data: (locations) => AppDropdownField<String>(
                    label: 'Local de estoque',
                    value: _inventoryLocationId,
                    enabled: _fieldIds.isNotEmpty,
                    items: locations
                        .map(
                          (location) => DropdownMenuItem<String>(
                            value: location.metadata.id,
                            child: Text(location.name),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (_fieldIds.isNotEmpty) {
                        setState(() {
                          _inventoryLocationId = value;
                          for (final item in _items) {
                            item.productId = null;
                            item.productName = null;
                          }
                        });
                      }
                    },
                    validator: (value) =>
                        value == null ? 'Selecione o local de estoque.' : null,
                  ),
                  loading: () => const AppFieldLoading(),
                  error: (_, __) =>
                      const Text('Falha ao carregar locais de estoque.'),
                ),
                const SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _descriptionController,
                  label: 'Descrição',
                  hintText: 'Resumo da operação',
                  maxLines: 3,
                ),
                const SizedBox(height: AppSpacing.lg),
                Row(
                  children: [
                    Text(
                      'Itens da operação',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    IconButton.filledTonal(
                      onPressed: () => setState(
                        () => _items.insert(
                          0,
                          _OperationItemDraft(order: _nextItemOrder++),
                        ),
                      ),
                      icon: const Icon(Icons.add_rounded),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.sm),
                if (_inventoryLocationId == null)
                  Text(
                    'Selecione o local de estoque para liberar os produtos.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                for (var i = 0; i < _items.length; i++) ...[
                  _OperationItemCard(
                    label: _items[i].order,
                    draft: _items[i],
                    enabled: _inventoryLocationId != null,
                    availableByProduct: adjustedAvailableByProduct,
                    onQuantityChanged: () => setState(() {}),
                    onOpenProductPicker: _inventoryLocationId == null
                        ? null
                        : () async {
                            final withStockCount = adjustedAvailableByProduct
                                .values
                                .where((value) => value > 0)
                                .length;
                            debugPrint(
                              '[CreateFieldOperationPage] abrir busca de produtos '
                              'farmId=$_farmId inventoryLocationId=$_inventoryLocationId '
                              'availableMapSize=${adjustedAvailableByProduct.length} '
                              'withPositiveStock=$withStockCount',
                            );
                            final selected =
                                await showModalBottomSheet<Product>(
                                  context: context,
                                  isScrollControlled: true,
                                  showDragHandle: true,
                                  useSafeArea: true,
                                  builder: (_) => ProductPickerSheet(
                                    selectedProductId: _items[i].productId,
                                    availableByProduct:
                                        adjustedAvailableByProduct,
                                  ),
                                );
                            if (selected == null) {
                              return;
                            }
                            setState(() {
                              _items[i].productId = selected.metadata.id;
                              _items[i].productName = selected.name;
                              final cost = costByProduct[selected.metadata.id];
                              if (cost != null) {
                                _items[i].unitCostController.text = cost
                                    .toStringAsFixed(2);
                              }
                            });
                          },
                    onRemove: _items.length == 1
                        ? null
                        : () => _confirmAndRemoveItem(i),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                ],
                const SizedBox(height: AppSpacing.lg),
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: state.isLoading ? null : () => context.pop(),
                      child: const Text('Cancelar'),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    AppActionButton(
                      label: 'Salvar operação',
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
    final isFormValid = _formKey.currentState!.validate();
    if (!isFormValid) {
      _showValidationError('Preencha todos os campos obrigatórios.');
      return;
    }

    if (_farmId == null) {
      _showValidationError('Selecione a fazenda.');
      return;
    }

    if (_fieldIds.isEmpty) {
      _showValidationError('Selecione ao menos um talhão.');
      return;
    }

    if (_inventoryLocationId == null) {
      _showValidationError('Selecione o local de estoque.');
      return;
    }

    if (_items.isEmpty) {
      _showValidationError('Adicione ao menos um item na operação.');
      return;
    }

    final hasInvalidItem = _items.any((item) => !item.isValid);
    if (hasInvalidItem) {
      _showValidationError(
        'Preencha produto, quantidade e custo unitário em todos os itens.',
      );
      return;
    }

    final operationDate = DateTime.now();

    ref
        .read(createFieldOperationControllerProvider.notifier)
        .submit(
          CreateFieldOperationInput(
            farmId: _farmId!,
            fieldIds: _fieldIds.toList(),
            operationDate: operationDate,
            status: FieldOperationStatus.open,
            description: _descriptionController.text.trim().isEmpty
                ? null
                : _descriptionController.text.trim(),
            startedAt: operationDate,
            items: _items.map((item) => item.toInput()).toList(),
          ),
          inventoryLocationId: _inventoryLocationId!,
        );
  }

  Future<void> _confirmAndRemoveItem(int index) async {
    final confirmed = await showAppConfirmationDialog(
      context,
      title: 'Excluir item',
      message: 'Deseja realmente excluir este item da operação?',
      confirmLabel: 'Excluir',
    );
    if (!confirmed || !mounted) {
      return;
    }

    setState(() {
      _items[index].dispose();
      _items.removeAt(index);
      _reindexItemOrders();
      _nextItemOrder = _items.length + 1;
    });
  }

  void _reindexItemOrders() {
    for (var i = 0; i < _items.length; i++) {
      _items[i].order = i + 1;
    }
  }

  void _showValidationError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }
}

class _OperationItemCard extends StatelessWidget {
  const _OperationItemCard({
    required this.label,
    required this.draft,
    required this.enabled,
    required this.availableByProduct,
    required this.onQuantityChanged,
    this.onOpenProductPicker,
    this.onRemove,
  });

  final int label;
  final _OperationItemDraft draft;
  final bool enabled;
  final Map<String, double> availableByProduct;
  final VoidCallback onQuantityChanged;
  final VoidCallback? onOpenProductPicker;
  final VoidCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    final available = draft.productId == null
        ? null
        : availableByProduct[draft.productId!];

    return AppCard(
      color: Theme.of(
        context,
      ).colorScheme.secondaryContainer.withValues(alpha: 0.25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                'Item $label',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              if (onRemove != null)
                IconButton(
                  onPressed: onRemove,
                  style: AppDestructive.iconButtonStyle(context),
                  icon: Icon(
                    Icons.delete_outline_rounded,
                    color: AppDestructive.iconColor(context),
                  ),
                ),
            ],
          ),
          FormField<String>(
            initialValue: draft.productId,
            validator: (_) =>
                draft.productId == null ? 'Selecione o produto.' : null,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            builder: (field) {
              return InkWell(
                onTap: enabled ? onOpenProductPicker : null,
                borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Produto',
                    errorText: field.errorText,
                    enabled: enabled,
                    suffixIcon: const Icon(Icons.search_rounded),
                  ),
                  child: Text(
                    draft.productId == null
                        ? 'Toque para buscar produto'
                        : (draft.productName ?? draft.productId!),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: AppSpacing.md),
          if (available != null)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.sm,
                vertical: AppSpacing.xs,
              ),
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.tertiaryContainer.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.warning_amber_rounded,
                    size: 14,
                    color: Theme.of(context).colorScheme.onTertiaryContainer,
                  ),
                  const SizedBox(width: AppSpacing.xs),
                  Flexible(
                    child: Text(
                      'Máximo disponível: ${available.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(
                          context,
                        ).colorScheme.onTertiaryContainer,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: draft.quantitySentController,
            label: 'Quantidade',
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            onChanged: (value) => onQuantityChanged(),
            validator: (value) =>
                draft.validateSent(value, available: available),
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: draft.unitCostController,
            label: 'Custo unitário',
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            prefixText: "R\$ ",
            validator: (value) =>
                FormValidators.positiveNumber(value, label: 'Custo unitário'),
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: draft.notesController,
            label: 'Observação',
            hintText: 'Opcional',
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}

class _OperationItemDraft {
  _OperationItemDraft({required this.order});

  int order;
  String? productId;
  String? productName;
  final quantitySentController = TextEditingController();
  final unitCostController = TextEditingController();
  final notesController = TextEditingController();

  bool get isValid =>
      productId != null &&
      double.tryParse(quantitySentController.text.replaceAll(',', '.')) !=
          null &&
      double.tryParse(unitCostController.text.replaceAll(',', '.')) != null;

  double get sentValue =>
      double.tryParse(
        quantitySentController.text.trim().replaceAll(',', '.'),
      ) ??
      0;
  String? validateSent(String? value, {double? available}) {
    final base = FormValidators.positiveNumber(value, label: 'Quantidade');
    if (base != null) {
      return base;
    }

    if (available == null) {
      return null;
    }

    final sent =
        double.tryParse((value ?? '').trim().replaceAll(',', '.')) ?? 0;
    if (!hasSufficientStock(quantitySent: sent, available: available)) {
      return 'Quantidade maior que saldo disponível.';
    }
    return null;
  }

  CreateFieldOperationItemInput toInput() {
    final quantitySent = double.parse(
      quantitySentController.text.trim().replaceAll(',', '.'),
    );
    final unitCost = double.parse(
      unitCostController.text.trim().replaceAll(',', '.'),
    );

    return CreateFieldOperationItemInput(
      productId: productId!,
      quantitySent: quantitySent,
      quantityConsumed: quantitySent,
      quantityReturned: 0,
      unitCostAtOperation: unitCost,
      notes: notesController.text.trim().isEmpty
          ? null
          : notesController.text.trim(),
    );
  }

  void dispose() {
    quantitySentController.dispose();
    unitCostController.dispose();
    notesController.dispose();
  }
}

class FinalizeFieldOperationPage extends ConsumerStatefulWidget {
  const FinalizeFieldOperationPage({required this.operation, super.key});

  final FieldOperation operation;

  @override
  ConsumerState<FinalizeFieldOperationPage> createState() =>
      _FinalizeFieldOperationPageState();
}

class _FinalizeFieldOperationPageState
    extends ConsumerState<FinalizeFieldOperationPage> {
  final _formKey = GlobalKey<FormState>();
  late final List<_FinalizeItemDraft> _items;

  @override
  void initState() {
    super.initState();
    _items = widget.operation.items
        .map((item) => _FinalizeItemDraft.fromItem(item))
        .toList();
  }

  @override
  void dispose() {
    for (final item in _items) {
      item.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      updateFieldOperationControllerProvider,
      context,
      successMessage: 'Devolutiva registrada com sucesso.',
    );

    ref.listen<AsyncValue<void>>(updateFieldOperationControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final state = ref.watch(updateFieldOperationControllerProvider);
    final productsAsync = ref.watch(allActiveProductsProvider);
    final productNames = productsAsync.maybeWhen(
      data: (products) => <String, String>{
        for (final product in products) product.metadata.id: product.name,
      },
      orElse: () => const <String, String>{},
    );

    return AppPage(
      title: 'Devolutiva da operação',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Informe as quantidades devolvidas para retorno ao estoque.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: AppSpacing.md),
                for (var i = 0; i < _items.length; i++) ...[
                  _FinalizeItemCard(
                    index: i,
                    draft: _items[i],
                    productName: productNames[_items[i].productId],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                ],
                const SizedBox(height: AppSpacing.md),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final compact = constraints.maxWidth < 360;
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
                            label: 'Concluir devolutiva',
                            icon: const Icon(
                              Icons.assignment_turned_in_outlined,
                            ),
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
                          label: 'Concluir devolutiva',
                          icon: const Icon(Icons.assignment_turned_in_outlined),
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

    final now = DateTime.now();
    final startedAtToSend = widget.operation.startedAt == null
        ? widget.operation.operationDate
        : null;

    final items = _items
        .where((item) => item.itemId != null && item.itemId!.isNotEmpty)
        .map((item) {
          final returned = item.parsedReturned;
          final consumed = computeQuantityConsumed(
            quantitySent: item.quantitySent,
            quantityReturned: returned,
          );
          return UpdateFieldOperationItemInput(
            id: item.itemId,
            productId: item.productId,
            quantitySent: item.quantitySent,
            quantityReturned: returned,
            quantityConsumed: consumed,
            unitCostAtOperation: item.unitCostAtOperation,
            notes: item.notesController.text.trim().isEmpty
                ? null
                : item.notesController.text.trim(),
          );
        })
        .toList();

    ref
        .read(updateFieldOperationControllerProvider.notifier)
        .submit(
          widget.operation.metadata.id,
          UpdateFieldOperationInput(
            id: widget.operation.metadata.id,
            status: FieldOperationStatus.finished,
            startedAt: startedAtToSend,
            finishedAt: now,
            items: items,
          ),
        );
  }
}

class _FinalizeItemCard extends StatelessWidget {
  const _FinalizeItemCard({
    required this.index,
    required this.draft,
    this.productName,
  });

  final int index;
  final _FinalizeItemDraft draft;
  final String? productName;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Theme.of(
        context,
      ).colorScheme.secondaryContainer.withValues(alpha: 0.25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Item ${index + 1}: ${productName ?? draft.productId}',
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Enviado: ${draft.quantitySent}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: draft.returnedController,
            label: 'Quantidade devolvida',
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            validator: draft.validateReturned,
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: draft.notesController,
            label: 'Observação',
            hintText: 'Opcional',
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}

class _FinalizeItemDraft {
  _FinalizeItemDraft({
    required this.itemId,
    required this.productId,
    required this.quantitySent,
    required this.unitCostAtOperation,
    required double quantityReturned,
    required String? notes,
  }) : returnedController = TextEditingController(
         text: quantityReturned == 0 ? '' : quantityReturned.toString(),
       ),
       notesController = TextEditingController(text: notes ?? '');

  factory _FinalizeItemDraft.fromItem(FieldOperationItem item) {
    return _FinalizeItemDraft(
      itemId: item.metadata?.id,
      productId: item.productId,
      quantitySent: item.quantitySent,
      unitCostAtOperation: item.unitCostAtOperation,
      quantityReturned: item.quantityReturned ?? 0,
      notes: item.notes,
    );
  }

  final String? itemId;
  final String productId;
  final double quantitySent;
  final double unitCostAtOperation;
  final TextEditingController returnedController;
  final TextEditingController notesController;

  double get parsedReturned =>
      double.tryParse(returnedController.text.trim().replaceAll(',', '.')) ?? 0;

  String? validateReturned(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final parsed = double.tryParse(value.trim().replaceAll(',', '.'));
    if (parsed == null || parsed < 0) {
      return 'Informe um número válido.';
    }
    if (parsed > quantitySent) {
      return 'Não pode ser maior que a quantidade enviada.';
    }
    return null;
  }

  void dispose() {
    returnedController.dispose();
    notesController.dispose();
  }
}
