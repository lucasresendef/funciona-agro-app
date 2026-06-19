import 'package:field_management_app/core/pagination/infinite_list_state.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/features/inventory/data/repositories/inventory_repository_impl.dart';
import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';
import 'package:field_management_app/features/inventory/domain/usecases/inventory_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:field_management_app/core/utils/debug_log.dart';

const _filterUnset = Object();

class InventoryLocationsFilter {
  const InventoryLocationsFilter({
    this.farmId,
    this.search,
    this.active = true,
  });

  final String? farmId;
  final String? search;
  final bool? active;

  InventoryLocationsFilter copyWith({
    String? farmId,
    String? search,
    bool? active,
  }) {
    return InventoryLocationsFilter(
      farmId: farmId ?? this.farmId,
      search: search ?? this.search,
      active: active ?? this.active,
    );
  }
}

class InventoryBalanceFilter {
  const InventoryBalanceFilter({
    this.farmId,
    this.inventoryLocationId,
    this.productId,
    this.search,
    this.active = true,
  });

  final String? farmId;
  final String? inventoryLocationId;
  final String? productId;
  final String? search;
  final bool? active;

  InventoryBalanceFilter copyWith({
    Object? farmId = _filterUnset,
    Object? inventoryLocationId = _filterUnset,
    Object? productId = _filterUnset,
    Object? search = _filterUnset,
    Object? active = _filterUnset,
  }) {
    return InventoryBalanceFilter(
      farmId: identical(farmId, _filterUnset) ? this.farmId : farmId as String?,
      inventoryLocationId: identical(inventoryLocationId, _filterUnset)
          ? this.inventoryLocationId
          : inventoryLocationId as String?,
      productId: identical(productId, _filterUnset)
          ? this.productId
          : productId as String?,
      search: identical(search, _filterUnset) ? this.search : search as String?,
      active: identical(active, _filterUnset) ? this.active : active as bool?,
    );
  }
}

final inventoryLocationsFilterProvider =
    StateProvider<InventoryLocationsFilter>((ref) {
      return const InventoryLocationsFilter();
    });

final inventoryBalanceFilterProvider = StateProvider<InventoryBalanceFilter>((
  ref,
) {
  return const InventoryBalanceFilter();
});

final inventoryLocationsInfiniteListProvider =
    AsyncNotifierProvider<
      InventoryLocationsInfiniteListController,
      InfiniteListState<InventoryLocation>
    >(InventoryLocationsInfiniteListController.new);

class InventoryLocationsInfiniteListController
    extends AsyncNotifier<InfiniteListState<InventoryLocation>> {
  static const _pageSize = 20;

  @override
  Future<InfiniteListState<InventoryLocation>> build() async {
    final filter = ref.watch(inventoryLocationsFilterProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
    return _loadFirstPage(filter, selectedFarmId);
  }

  Future<void> refreshList() async {
    final filter = ref.read(inventoryLocationsFilterProvider);
    final selectedFarmId = ref.read(sessionManagerProvider).selectedFarmId;
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => _loadFirstPage(filter, selectedFarmId),
    );
  }

  Future<void> loadMore() async {
    final current = state.asData?.value;
    if (current == null || current.isLoadingMore || !current.hasNextPage) {
      return;
    }

    state = AsyncData(current.copyWith(isLoadingMore: true));

    final filter = ref.read(inventoryLocationsFilterProvider);
    final selectedFarmId = ref.read(sessionManagerProvider).selectedFarmId;
    final useCase = GetInventoryLocationsUseCase(
      ref.read(inventoryRepositoryProvider),
    );

    try {
      final page = await useCase.page(
        page: current.page + 1,
        limit: _pageSize,
        farmId: filter.farmId ?? selectedFarmId,
        active: filter.active,
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

  Future<InfiniteListState<InventoryLocation>> _loadFirstPage(
    InventoryLocationsFilter filter,
    String? selectedFarmId,
  ) async {
    final useCase = GetInventoryLocationsUseCase(
      ref.read(inventoryRepositoryProvider),
    );
    final page = await useCase.page(
      page: 1,
      limit: _pageSize,
      farmId: filter.farmId ?? selectedFarmId,
      active: filter.active,
      search: filter.search,
    );

    return InfiniteListState<InventoryLocation>(
      items: page.data,
      page: page.page,
      hasNextPage: page.hasNextPage,
    );
  }
}

final inventoryLocationsByFarmProvider =
    FutureProvider.family<List<InventoryLocation>, String?>((
      ref,
      farmId,
    ) async {
      final useCase = GetInventoryLocationsUseCase(
        ref.watch(inventoryRepositoryProvider),
      );
      return useCase.call(farmId: farmId, active: true);
    });

final inventoryBalancesInfiniteListProvider =
    AsyncNotifierProvider<
      InventoryBalancesInfiniteListController,
      InfiniteListState<InventoryBalance>
    >(InventoryBalancesInfiniteListController.new);

class InventoryBalancesInfiniteListController
    extends AsyncNotifier<InfiniteListState<InventoryBalance>> {
  static const _pageSize = 20;

  @override
  Future<InfiniteListState<InventoryBalance>> build() async {
    final filter = ref.watch(inventoryBalanceFilterProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
    return _loadFirstPage(filter, selectedFarmId);
  }

  Future<void> refreshList() async {
    final filter = ref.read(inventoryBalanceFilterProvider);
    final selectedFarmId = ref.read(sessionManagerProvider).selectedFarmId;
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => _loadFirstPage(filter, selectedFarmId),
    );
  }

  Future<void> loadMore() async {
    final current = state.asData?.value;
    if (current == null || current.isLoadingMore || !current.hasNextPage) {
      return;
    }

    state = AsyncData(current.copyWith(isLoadingMore: true));

    final filter = ref.read(inventoryBalanceFilterProvider);
    final selectedFarmId = ref.read(sessionManagerProvider).selectedFarmId;
    final useCase = GetInventoryBalancesUseCase(
      ref.read(inventoryRepositoryProvider),
    );

    try {
      final page = await useCase.page(
        page: current.page + 1,
        limit: _pageSize,
        farmId: filter.farmId ?? selectedFarmId,
        inventoryLocationId: filter.inventoryLocationId,
        productId: filter.productId,
        search: filter.search,
        active: filter.active,
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

  Future<InfiniteListState<InventoryBalance>> _loadFirstPage(
    InventoryBalanceFilter filter,
    String? selectedFarmId,
  ) async {
    final useCase = GetInventoryBalancesUseCase(
      ref.read(inventoryRepositoryProvider),
    );
    final page = await useCase.page(
      page: 1,
      limit: _pageSize,
      farmId: filter.farmId ?? selectedFarmId,
      inventoryLocationId: filter.inventoryLocationId,
      productId: filter.productId,
      search: filter.search,
      active: filter.active,
    );

    return InfiniteListState<InventoryBalance>(
      items: page.data,
      page: page.page,
      hasNextPage: page.hasNextPage,
    );
  }
}

final inventoryBalancesByLocationProvider =
    FutureProvider.family<
      List<InventoryBalance>,
      ({String? farmId, String? inventoryLocationId})
    >((ref, args) async {
      if (args.farmId == null || args.inventoryLocationId == null) {
        return const <InventoryBalance>[];
      }

      final useCase = GetInventoryBalancesUseCase(
        ref.watch(inventoryRepositoryProvider),
      );

      final balances = await useCase.call(
        farmId: args.farmId,
        inventoryLocationId: args.inventoryLocationId,
        active: true,
      );

      return balances
          .where(
            (balance) =>
                balance.farmId == args.farmId &&
                balance.inventoryLocationId == args.inventoryLocationId,
          )
          .toList();
    });

final createInventoryLocationControllerProvider =
    AsyncNotifierProvider<CreateInventoryLocationController, void>(
      CreateInventoryLocationController.new,
    );
final updateInventoryLocationControllerProvider =
    AsyncNotifierProvider<UpdateInventoryLocationController, void>(
      UpdateInventoryLocationController.new,
    );
final deleteInventoryLocationControllerProvider =
    AsyncNotifierProvider<DeleteInventoryLocationController, void>(
      DeleteInventoryLocationController.new,
    );

class CreateInventoryLocationController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(CreateInventoryLocationInput input) async {
    final useCase = CreateInventoryLocationUseCase(
      ref.read(inventoryRepositoryProvider),
    );

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input);
      ref.invalidate(inventoryLocationsInfiniteListProvider);
      ref.invalidate(inventoryLocationsByFarmProvider(input.farmId));
    });
  }
}

class UpdateInventoryLocationController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(UpdateInventoryLocationInput input) async {
    final useCase = UpdateInventoryLocationUseCase(
      ref.read(inventoryRepositoryProvider),
    );

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input);
      ref.invalidate(inventoryLocationsInfiniteListProvider);
      ref.invalidate(inventoryLocationsByFarmProvider(input.farmId));
    });
  }
}

class DeleteInventoryLocationController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(String id, String farmId) async {
    final useCase = DeleteInventoryLocationUseCase(
      ref.read(inventoryRepositoryProvider),
    );

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(id);
      ref.invalidate(inventoryLocationsInfiniteListProvider);
      ref.invalidate(inventoryLocationsByFarmProvider(farmId));
    });
  }
}

final createInventoryBalanceControllerProvider =
    AsyncNotifierProvider<CreateInventoryBalanceController, void>(
      CreateInventoryBalanceController.new,
    );

class CreateInventoryBalanceController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(CreateInventoryBalanceInput input) async {
    final useCase = CreateInventoryBalanceUseCase(
      ref.read(inventoryRepositoryProvider),
    );

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input);
      ref.invalidate(inventoryBalancesInfiniteListProvider);
    });
  }
}
