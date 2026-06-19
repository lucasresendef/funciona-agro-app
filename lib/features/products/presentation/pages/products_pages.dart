import 'package:field_management_app/core/auth/admin_access.dart';
import 'package:field_management_app/core/utils/async_value_ui.dart';
import 'package:field_management_app/core/utils/decimal_input.dart';
import 'package:field_management_app/core/utils/validators.dart';
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
import 'package:field_management_app/design_system/foundations/app_layout.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:field_management_app/features/products/presentation/controllers/products_controller.dart';
import 'package:field_management_app/features/products/presentation/utils/product_stock_validation.dart';
import 'package:field_management_app/features/products/presentation/widgets/product_list_tile.dart';
import 'package:field_management_app/features/products/presentation/widgets/stock_by_location_section.dart';
import 'package:field_management_app/features/units/presentation/controllers/units_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProductsPage extends ConsumerWidget {
  const ProductsPage({super.key});

  static const routePath = '/products';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productsInfiniteListProvider);
    final filter = ref.watch(productsFilterProvider);
    final isAdmin = ref.watch(isAdminProvider);

    return AppPage(
      title: 'Produtos',
      actions: [
        if (isAdmin)
          IconButton.filled(
            tooltip: 'Novo produto',
            onPressed: () => _showCreateProductDialog(context),
            icon: const Icon(Icons.add_rounded),
          ),
      ],
      child: Column(
        children: [
          AppSearchBar(
            initialValue: filter.search,
            hintText: 'Buscar por nome, código ou categoria',
            onChanged: (value) {
              ref.read(productsFilterProvider.notifier).state = filter.copyWith(
                search: value,
              );
            },
            trailing: [
              SizedBox(
                width: AppLayout.formFieldWidth(context, 240),
                child: TextFormField(
                  initialValue: filter.category,
                  decoration: const InputDecoration(
                    labelText: 'Categoria',
                    prefixIcon: Icon(Icons.category_outlined),
                  ),
                  onChanged: (value) {
                    ref.read(productsFilterProvider.notifier).state = filter
                        .copyWith(category: value);
                  },
                ),
              ),
              FilterChip(
                label: const Text('Somente ativos'),
                selected: filter.active ?? false,
                onSelected: (selected) {
                  ref.read(productsFilterProvider.notifier).state = filter
                      .copyWith(active: selected);
                },
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Expanded(
            child: productsAsync.when(
              data: (listState) {
                final items = listState.items;
                if (items.isEmpty) {
                  return const EmptyStateView(
                    title: 'Nenhum produto encontrado',
                    message:
                        'Cadastre a base de insumos e deixe a operação pronta para consumo e saldo.',
                  );
                }

                return InfiniteScrollListView<Product>(
                  items: items,
                  isLoadingMore: listState.isLoadingMore,
                  onRefresh: () => ref
                      .read(productsInfiniteListProvider.notifier)
                      .refreshList(),
                  onLoadMore: () => ref
                      .read(productsInfiniteListProvider.notifier)
                      .loadMore(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, product, _) {
                    return ProductListTile(
                      product: product,
                      canManage: isAdmin,
                      onEdit: () => _showEditProductDialog(context, product),
                      onDelete: () =>
                          _confirmDeleteProduct(context, ref, product),
                    );
                  },
                );
              },
              loading: () => const LoadingStateView(),
              error: (error, _) => ErrorStateView(
                message: error.toString(),
                onRetry: () => ref.invalidate(productsInfiniteListProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCreateProductDialog(BuildContext context) {
    showAppFormSheet<void>(context: context, child: const CreateProductPage());
  }

  void _showEditProductDialog(BuildContext context, Product product) {
    showAppFormSheet<void>(
      context: context,
      child: EditProductPage(product: product),
    );
  }

  void _confirmDeleteProduct(
    BuildContext context,
    WidgetRef ref,
    Product product,
  ) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Excluir produto'),
          content: Text('Tem certeza que deseja excluir "${product.name}"?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                ref
                    .read(deleteProductControllerProvider.notifier)
                    .submit(product.metadata.id);
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

class CreateProductPage extends ConsumerStatefulWidget {
  const CreateProductPage({super.key});

  static const routePath = '/products/new';

  @override
  ConsumerState<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends ConsumerState<CreateProductPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _codeController = TextEditingController();
  final _categoryController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _activeIngredientController = TextEditingController();
  String? _unitId;
  final List<StockLocationDraft> _stockDrafts = [StockLocationDraft()];

  @override
  void dispose() {
    _nameController.dispose();
    _codeController.dispose();
    _categoryController.dispose();
    _descriptionController.dispose();
    _activeIngredientController.dispose();
    for (final draft in _stockDrafts) {
      draft.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      createProductControllerProvider,
      context,
      successMessage: 'Produto criado com sucesso.',
    );

    ref.listen<AsyncValue<void>>(createProductControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final unitsAsync = ref.watch(allActiveUnitsProvider);
    final state = ref.watch(createProductControllerProvider);

    return AppPage(
      title: 'Novo produto',
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
                      child: AppTextField(
                        controller: _nameController,
                        label: 'Nome',
                        hintText: 'Ex.: Herbicida X',
                        validator: (value) =>
                            FormValidators.requiredField(value, label: 'Nome'),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _codeController,
                        label: 'Código',
                        hintText: 'Ex.: H-0007',
                        validator: (value) => FormValidators.requiredField(
                          value,
                          label: 'Código',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _categoryController,
                        label: 'Categoria',
                        hintText: 'Ex.: Herbicida',
                        validator: (value) => FormValidators.requiredField(
                          value,
                          label: 'Categoria',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: unitsAsync.when(
                        data: (units) => AppDropdownField<String>(
                          label: 'Unidade',
                          value: _unitId,
                          items: units
                              .map(
                                (unit) => DropdownMenuItem<String>(
                                  value: unit.metadata.id,
                                  child: Text('${unit.name} (${unit.symbol})'),
                                ),
                              )
                              .toList(),
                          onChanged: (value) => setState(() => _unitId = value),
                          validator: (value) =>
                              value == null ? 'Selecione a unidade.' : null,
                        ),
                        loading: () => const AppFieldLoading(),
                        error: (_, __) =>
                            const Text('Falha ao carregar unidades.'),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _activeIngredientController,
                        label: 'Ingrediente ativo',
                        hintText: 'Opcional',
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _descriptionController,
                        label: 'Descrição',
                        hintText: 'Características e observações operacionais',
                        maxLines: 4,
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: StockByLocationSection(
                        title: 'Estoque inicial por local',
                        drafts: _stockDrafts,
                        onAdd: () => setState(
                          () => _stockDrafts.add(StockLocationDraft()),
                        ),
                        onRemove: (draft) => setState(() {
                          draft.dispose();
                          _stockDrafts.remove(draft);
                          if (_stockDrafts.isEmpty) {
                            _stockDrafts.add(StockLocationDraft());
                          }
                        }),
                        onChanged: () => setState(() {}),
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
                            label: 'Salvar produto',
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
                          label: 'Salvar produto',
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
    if (!_formKey.currentState!.validate() || _unitId == null) {
      return;
    }

    final stockByLocation = _buildStockByLocationInput();
    if (stockByLocation == null) {
      return;
    }

    ref
        .read(createProductControllerProvider.notifier)
        .submit(
          CreateProductInput(
            name: _nameController.text.trim(),
            code: _codeController.text.trim(),
            category: _categoryController.text.trim(),
            unitOfMeasureId: _unitId!,
            description: _descriptionController.text.trim().isEmpty
                ? null
                : _descriptionController.text.trim(),
            activeIngredient: _activeIngredientController.text.trim().isEmpty
                ? null
                : _activeIngredientController.text.trim(),
            stockByLocation: stockByLocation,
          ),
        );
  }

  List<CreateProductStockByLocationInput>? _buildStockByLocationInput() {
    if (_stockDrafts.isEmpty) {
      _showFormError('Adicione pelo menos um local de estoque.');
      return null;
    }

    final parsed = <CreateProductStockByLocationInput>[];

    for (final draft in _stockDrafts) {
      if (draft.farmId == null || draft.inventoryLocationId == null) {
        _showFormError(
          'Preencha fazenda e local de estoque em todos os itens.',
        );
        return null;
      }

      final quantity = parseDecimalInput(draft.quantityController.text);
      final averageUnitCost = parseDecimalInput(
        draft.averageUnitCostController.text,
      );

      if (quantity == null || quantity < 0) {
        _showFormError('Informe uma quantidade válida em todos os locais.');
        return null;
      }
      if (averageUnitCost == null || averageUnitCost < 0) {
        _showFormError('Informe custo médio válido em todos os locais.');
        return null;
      }

      parsed.add(
        CreateProductStockByLocationInput(
          farmId: draft.farmId!,
          inventoryLocationId: draft.inventoryLocationId!,
          quantity: quantity,
          averageUnitCost: averageUnitCost,
          notes: draft.notesController.text.trim().isEmpty
              ? null
              : draft.notesController.text.trim(),
        ),
      );
    }

    final stockError = validateProductStockByLocation(parsed);
    if (stockError != null) {
      _showFormError(stockError);
      return null;
    }

    return parsed;
  }

  void _showFormError(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}

class EditProductPage extends ConsumerStatefulWidget {
  const EditProductPage({required this.product, super.key});

  final Product product;

  @override
  ConsumerState<EditProductPage> createState() => _EditProductPageState();
}

class _EditProductPageState extends ConsumerState<EditProductPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _codeController;
  late final TextEditingController _categoryController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _activeIngredientController;
  late String? _unitId;
  late final List<StockLocationDraft> _stockDrafts;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.product.name);
    _codeController = TextEditingController(text: widget.product.code);
    _categoryController = TextEditingController(text: widget.product.category);
    _descriptionController = TextEditingController(
      text: widget.product.description ?? '',
    );
    _activeIngredientController = TextEditingController(
      text: widget.product.activeIngredient ?? '',
    );
    _unitId = widget.product.unitOfMeasureId;
    _stockDrafts = widget.product.stockByLocation.isNotEmpty
        ? widget.product.stockByLocation
              .map(
                (stock) => StockLocationDraft(
                  farmId: stock.farmId,
                  inventoryLocationId: stock.inventoryLocationId,
                  quantity: stock.quantity,
                  averageUnitCost: stock.averageUnitCost,
                ),
              )
              .toList()
        : <StockLocationDraft>[StockLocationDraft()];
  }

  @override
  void dispose() {
    _nameController.dispose();
    _codeController.dispose();
    _categoryController.dispose();
    _descriptionController.dispose();
    _activeIngredientController.dispose();
    for (final draft in _stockDrafts) {
      draft.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listenForAction(
      updateProductControllerProvider,
      context,
      successMessage: 'Produto atualizado com sucesso.',
    );

    ref.listen<AsyncValue<void>>(updateProductControllerProvider, (
      previous,
      next,
    ) {
      if (previous?.isLoading == true && next.hasValue && mounted) {
        context.pop();
      }
    });

    final state = ref.watch(updateProductControllerProvider);

    return AppPage(
      title: 'Editar produto',
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
                      child: AppTextField(
                        controller: _nameController,
                        label: 'Nome',
                        hintText: 'Ex.: Milho',
                        validator: (value) =>
                            FormValidators.requiredField(value, label: 'Nome'),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _codeController,
                        label: 'Código',
                        hintText: 'Ex.: MLH',
                        validator: (value) => FormValidators.requiredField(
                          value,
                          label: 'Código',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _categoryController,
                        label: 'Categoria',
                        hintText: 'Ex.: Grãos',
                        validator: (value) => FormValidators.requiredField(
                          value,
                          label: 'Categoria',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Consumer(
                        builder: (context, ref, child) {
                          final unitsAsync = ref.watch(allActiveUnitsProvider);
                          return unitsAsync.when(
                            data: (units) => AppDropdownField<String>(
                              value: _unitId,
                              label: 'Unidade de medida',
                              hintText: 'Selecione uma unidade',
                              items: units.map((unit) {
                                return DropdownMenuItem<String>(
                                  value: unit.metadata.id,
                                  child: Text('${unit.name} (${unit.symbol})'),
                                );
                              }).toList(),
                              validator: (value) =>
                                  FormValidators.requiredField(
                                    value,
                                    label: 'Unidade de medida',
                                  ),
                              onChanged: (value) =>
                                  setState(() => _unitId = value),
                            ),
                            loading: () => const AppFieldLoading(),
                            error: (error, _) => Text('Erro: $error'),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _descriptionController,
                        label: 'Descrição',
                        hintText: 'Descrição opcional do produto',
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: AppTextField(
                        controller: _activeIngredientController,
                        label: 'Ingrediente ativo',
                        hintText: 'Ex.: Glifosato',
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: StockByLocationSection(
                        title: 'Estoque por local',
                        drafts: _stockDrafts,
                        onAdd: () => setState(
                          () => _stockDrafts.add(StockLocationDraft()),
                        ),
                        onRemove: (draft) => setState(() {
                          draft.dispose();
                          _stockDrafts.remove(draft);
                          if (_stockDrafts.isEmpty) {
                            _stockDrafts.add(StockLocationDraft());
                          }
                        }),
                        onChanged: () => setState(() {}),
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

    if (_unitId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Selecione uma unidade de medida')),
      );
      return;
    }

    final stockByLocation = _buildStockByLocationInput();
    if (stockByLocation == null) {
      return;
    }

    ref
        .read(updateProductControllerProvider.notifier)
        .submit(
          widget.product.metadata.id,
          UpdateProductInput(
            id: widget.product.metadata.id,
            name: _nameController.text.trim(),
            code: _codeController.text.trim(),
            category: _categoryController.text.trim(),
            unitOfMeasureId: _unitId!,
            description: _descriptionController.text.trim().isEmpty
                ? null
                : _descriptionController.text.trim(),
            activeIngredient: _activeIngredientController.text.trim().isEmpty
                ? null
                : _activeIngredientController.text.trim(),
            stockByLocation: stockByLocation,
          ),
        );
  }

  List<CreateProductStockByLocationInput>? _buildStockByLocationInput() {
    if (_stockDrafts.isEmpty) {
      _showFormError('Adicione pelo menos um local de estoque.');
      return null;
    }

    final parsed = <CreateProductStockByLocationInput>[];

    for (final draft in _stockDrafts) {
      if (draft.farmId == null || draft.inventoryLocationId == null) {
        _showFormError(
          'Preencha fazenda e local de estoque em todos os itens.',
        );
        return null;
      }

      final quantity = parseDecimalInput(draft.quantityController.text);
      final averageUnitCost = parseDecimalInput(
        draft.averageUnitCostController.text,
      );

      if (quantity == null || quantity < 0) {
        _showFormError('Informe uma quantidade válida em todos os locais.');
        return null;
      }
      if (averageUnitCost == null || averageUnitCost < 0) {
        _showFormError('Informe custo médio válido em todos os locais.');
        return null;
      }

      parsed.add(
        CreateProductStockByLocationInput(
          farmId: draft.farmId!,
          inventoryLocationId: draft.inventoryLocationId!,
          quantity: quantity,
          averageUnitCost: averageUnitCost,
          notes: draft.notesController.text.trim().isEmpty
              ? null
              : draft.notesController.text.trim(),
        ),
      );
    }

    final stockError = validateProductStockByLocation(parsed);
    if (stockError != null) {
      _showFormError(stockError);
      return null;
    }

    return parsed;
  }

  void _showFormError(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}
