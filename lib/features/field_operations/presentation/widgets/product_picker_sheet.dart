import 'dart:async';

import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:field_management_app/design_system/components/async_state_views.dart';
import 'package:field_management_app/design_system/components/infinite_scroll_list_view.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/products/data/repositories/products_repository_impl.dart';
import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductPickerSheet extends ConsumerStatefulWidget {
  const ProductPickerSheet({
    required this.availableByProduct,
    this.selectedProductId,
    super.key,
  });

  final String? selectedProductId;
  final Map<String, double> availableByProduct;

  @override
  ConsumerState<ProductPickerSheet> createState() => _ProductPickerSheetState();
}

class _ProductPickerSheetState extends ConsumerState<ProductPickerSheet> {
  final _searchController = TextEditingController();
  Timer? _debounce;
  List<Product> _products = const [];
  int _page = 0;
  bool _hasNextPage = true;
  bool _isInitialLoading = true;
  bool _isLoadingMore = false;
  String _search = '';

  @override
  void initState() {
    super.initState();
    _loadFirstPage();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadFirstPage() async {
    setState(() {
      _isInitialLoading = true;
      _page = 0;
      _hasNextPage = true;
    });

    try {
      final result = await ref
          .read(productsRepositoryProvider)
          .listPage(
            page: 1,
            limit: 20,
            active: true,
            search: _search.trim().isEmpty ? null : _search.trim(),
          );
      if (!mounted) {
        return;
      }
      final availableProducts = result.data
          .where(
            (product) =>
                (widget.availableByProduct[product.metadata.id] ?? 0) > 0,
          )
          .toList();
      setState(() {
        _products = availableProducts;
        _page = result.page;
        _hasNextPage = result.hasNextPage;
        _isInitialLoading = false;
      });
    } catch (_) {
      if (!mounted) {
        return;
      }
      setState(() {
        _products = const [];
        _isInitialLoading = false;
      });
    }
  }

  Future<void> _loadMore() async {
    if (_isLoadingMore || !_hasNextPage) {
      return;
    }
    setState(() => _isLoadingMore = true);

    try {
      final result = await ref
          .read(productsRepositoryProvider)
          .listPage(
            page: _page + 1,
            limit: 20,
            active: true,
            search: _search.trim().isEmpty ? null : _search.trim(),
          );
      if (!mounted) {
        return;
      }
      final availableProducts = result.data
          .where(
            (product) =>
                (widget.availableByProduct[product.metadata.id] ?? 0) > 0,
          )
          .toList();
      setState(() {
        _products = [..._products, ...availableProducts];
        _page = result.page;
        _hasNextPage = result.hasNextPage;
        _isLoadingMore = false;
      });
    } catch (_) {
      if (!mounted) {
        return;
      }
      setState(() => _isLoadingMore = false);
    }
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () {
      if (!mounted) {
        return;
      }
      setState(() => _search = value);
      _loadFirstPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.78,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.md,
          AppSpacing.sm,
          AppSpacing.md,
          AppSpacing.md,
        ),
        child: Column(
          children: [
            AppSearchBar(
              hintText: 'Digite para filtrar produto',
              initialValue: _search,
              onChanged: _onSearchChanged,
            ),
            const SizedBox(height: AppSpacing.sm),
            Expanded(
              child: _isInitialLoading
                  ? const LoadingStateView(message: 'Carregando produtos...')
                  : _products.isEmpty
                  ? const EmptyStateView(
                      title: 'Nenhum produto disponível',
                      message:
                          'Não há produtos com saldo disponível neste local de estoque.',
                    )
                  : InfiniteScrollListView<Product>(
                      items: _products,
                      isLoadingMore: _isLoadingMore,
                      onRefresh: _loadFirstPage,
                      onLoadMore: _loadMore,
                      separatorBuilder: (_, __) =>
                          const SizedBox(height: AppSpacing.xs),
                      itemBuilder: (context, product, _) {
                        final available =
                            widget.availableByProduct[product.metadata.id] ?? 0;
                        final isSelected =
                            widget.selectedProductId == product.metadata.id;

                        return AppCard(
                          child: ListTile(
                            onTap: () => Navigator.of(context).pop(product),
                            title: Text(product.name),
                            subtitle: Text(
                              'Saldo disponível: ${available.toStringAsFixed(2)}',
                            ),
                            trailing: isSelected
                                ? const Icon(Icons.check_circle_outline_rounded)
                                : const Icon(Icons.chevron_right_rounded),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
