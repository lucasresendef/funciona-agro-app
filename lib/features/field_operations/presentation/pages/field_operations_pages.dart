import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/utils/async_value_ui.dart';
import 'package:field_management_app/design_system/components/app_action_button.dart';
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
    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final filter = ref.watch(fieldOperationsFilterProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
    final resolvedFarmId = filter.farmId ?? selectedFarmId;
    final fieldsByFarmAsync = ref.watch(fieldsByFarmProvider(resolvedFarmId));
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
          AppSearchBar(
            hintText: 'Filtre as operações',
            onChanged: (_) {},
            trailing: [
              farmsAsync.maybeWhen(
                data: (farms) => SizedBox(
                  width: 220,
                  child: DropdownButtonFormField<String?>(
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
                      ref.read(fieldOperationsFilterProvider.notifier).state =
                          filter.copyWith(farmId: value);
                    },
                  ),
                ),
                orElse: SizedBox.shrink,
              ),
              SizedBox(
                width: 180,
                child: AppDropdownField<FieldOperationStatus?>(
                  label: 'Status',
                  value: filter.status,
                  items: [
                    const DropdownMenuItem<FieldOperationStatus?>(
                      value: null,
                      child: Text('Todos'),
                    ),
                    ...FieldOperationStatus.values.map(
                      (status) => DropdownMenuItem<FieldOperationStatus?>(
                        value: status,
                        child: Text(status.label),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    ref.read(fieldOperationsFilterProvider.notifier).state =
                        filter.copyWith(status: value);
                  },
                ),
              ),
            ],
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
                    return _FieldOperationTile(
                      operation: operation,
                      fieldName: fieldNameById[operation.fieldId],
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
    this.fieldName,
    this.onTap,
  });

  final FieldOperation operation;
  final String? fieldName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: onTap,
        leading: const CircleAvatar(child: Icon(Icons.agriculture_outlined)),
        title: Text('Operação ${operation.metadata.id.substring(0, 8)}'),
        subtitle: Text(
          'Talhão: ${fieldName ?? operation.fieldId}\nItens: ${operation.items.length}',
        ),
        isThreeLine: true,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Chip(label: Text(operation.status.label)),
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
  final List<_OperationItemDraft> _items = [_OperationItemDraft()];
  String? _farmId;
  String? _fieldId;
  String? _inventoryLocationId;

  @override
  void initState() {
    super.initState();
    _farmId = ref.read(sessionManagerProvider).selectedFarmId;
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
                        _fieldId = null;
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
                  data: (fields) => AppDropdownField<String>(
                    label: 'Talhão',
                    value: _fieldId,
                    enabled: _farmId != null,
                    items: fields
                        .map(
                          (field) => DropdownMenuItem<String>(
                            value: field.metadata.id,
                            child: Text(field.name),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (_farmId != null) {
                        setState(() => _fieldId = value);
                      }
                    },
                    validator: (value) =>
                        value == null ? 'Selecione o talhão.' : null,
                  ),
                  loading: () => const AppFieldLoading(),
                  error: (_, __) => const Text('Falha ao carregar talhões.'),
                ),
                const SizedBox(height: AppSpacing.md),
                locationsAsync.when(
                  data: (locations) => AppDropdownField<String>(
                    label: 'Local de estoque',
                    value: _inventoryLocationId,
                    enabled: _fieldId != null,
                    items: locations
                        .map(
                          (location) => DropdownMenuItem<String>(
                            value: location.metadata.id,
                            child: Text(location.name),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (_fieldId != null) {
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
                      onPressed: () =>
                          setState(() => _items.add(_OperationItemDraft())),
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
                    index: i,
                    draft: _items[i],
                    enabled: _inventoryLocationId != null,
                    availableByProduct: adjustedAvailableByProduct,
                    onQuantityChanged: () => setState(() {}),
                    onOpenProductPicker: _inventoryLocationId == null
                        ? null
                        : () async {
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
                        : () {
                            setState(() {
                              _items[i].dispose();
                              _items.removeAt(i);
                            });
                          },
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

    if (_fieldId == null) {
      _showValidationError('Selecione o talhão.');
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
            fieldId: _fieldId!,
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

  void _showValidationError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }
}

class _OperationItemCard extends StatelessWidget {
  const _OperationItemCard({
    required this.index,
    required this.draft,
    required this.enabled,
    required this.availableByProduct,
    required this.onQuantityChanged,
    this.onOpenProductPicker,
    this.onRemove,
  });

  final int index;
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
                'Item ${index + 1}',
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
