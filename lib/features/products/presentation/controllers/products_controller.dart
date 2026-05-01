import 'package:field_management_app/core/pagination/infinite_list_state.dart';
import 'package:field_management_app/features/products/data/repositories/products_repository_impl.dart';
import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:field_management_app/features/products/domain/usecases/products_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:field_management_app/core/utils/debug_log.dart';

class ProductsFilter {
  const ProductsFilter({this.search, this.category, this.active = true});

  final String? search;
  final String? category;
  final bool? active;

  ProductsFilter copyWith({String? search, String? category, bool? active}) {
    return ProductsFilter(
      search: search ?? this.search,
      category: category ?? this.category,
      active: active ?? this.active,
    );
  }
}

final productsFilterProvider = StateProvider<ProductsFilter>((ref) {
  return const ProductsFilter();
});

final productsInfiniteListProvider =
    AsyncNotifierProvider<
      ProductsInfiniteListController,
      InfiniteListState<Product>
    >(ProductsInfiniteListController.new);

class ProductsInfiniteListController
    extends AsyncNotifier<InfiniteListState<Product>> {
  static const _pageSize = 20;

  @override
  Future<InfiniteListState<Product>> build() async {
    final filter = ref.watch(productsFilterProvider);
    return _loadFirstPage(filter);
  }

  Future<void> refreshList() async {
    final filter = ref.read(productsFilterProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _loadFirstPage(filter));
  }

  Future<void> loadMore() async {
    final current = state.asData?.value;
    if (current == null || current.isLoadingMore || !current.hasNextPage) {
      return;
    }

    state = AsyncData(current.copyWith(isLoadingMore: true));

    final filter = ref.read(productsFilterProvider);
    final useCase = GetProductsUseCase(ref.read(productsRepositoryProvider));

    try {
      final page = await useCase.page(
        page: current.page + 1,
        limit: _pageSize,
        active: filter.active,
        category: filter.category,
        search: filter.search,
      );

      state = AsyncData(
        current.copyWith(
          items: [...current.items, ...page.data],
          page: page.page,
          hasNextPage: page.hasNextPage,
          isLoadingMore: false,
        ),
      );
    } catch (error, stackTrace) {
      appDebugLog(
        runtimeType.toString(),
        'falha ao carregar mais itens',
        data: error.toString(),
        stackTrace: stackTrace,
      );
      state = AsyncData(current.copyWith(isLoadingMore: false));
    }
  }

  Future<InfiniteListState<Product>> _loadFirstPage(
    ProductsFilter filter,
  ) async {
    final useCase = GetProductsUseCase(ref.read(productsRepositoryProvider));
    final page = await useCase.page(
      page: 1,
      limit: _pageSize,
      active: filter.active,
      category: filter.category,
      search: filter.search,
    );

    return InfiniteListState<Product>(
      items: page.data,
      page: page.page,
      hasNextPage: page.hasNextPage,
    );
  }
}

final allActiveProductsProvider = FutureProvider<List<Product>>((ref) async {
  final useCase = GetProductsUseCase(ref.watch(productsRepositoryProvider));
  return useCase.call(active: true);
});

final createProductControllerProvider =
    AsyncNotifierProvider<CreateProductController, void>(
      CreateProductController.new,
    );

class CreateProductController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(CreateProductInput input) async {
    final useCase = CreateProductUseCase(ref.read(productsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input);
      ref.invalidate(productsInfiniteListProvider);
      ref.invalidate(allActiveProductsProvider);
    });
  }
}

final updateProductControllerProvider =
    AsyncNotifierProvider<UpdateProductController, void>(
      UpdateProductController.new,
    );

class UpdateProductController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(String id, UpdateProductInput input) async {
    final useCase = UpdateProductUseCase(ref.read(productsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(id, input);
      ref.invalidate(productsInfiniteListProvider);
      ref.invalidate(allActiveProductsProvider);
    });
  }
}

final deleteProductControllerProvider =
    AsyncNotifierProvider<DeleteProductController, void>(
      DeleteProductController.new,
    );

class DeleteProductController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(String id) async {
    final useCase = DeleteProductUseCase(ref.read(productsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(id);
      ref.invalidate(productsInfiniteListProvider);
      ref.invalidate(allActiveProductsProvider);
    });
  }
}
