import 'package:field_management_app/core/pagination/infinite_list_state.dart';
import 'package:field_management_app/features/farms/data/repositories/farms_repository_impl.dart';
import 'package:field_management_app/features/farms/domain/entities/farm.dart';
import 'package:field_management_app/features/farms/domain/usecases/farms_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:field_management_app/core/utils/debug_log.dart';

class FarmsFilter {
  const FarmsFilter({this.search, this.active = true});

  final String? search;
  final bool? active;

  FarmsFilter copyWith({String? search, bool? active}) {
    return FarmsFilter(
      search: search ?? this.search,
      active: active ?? this.active,
    );
  }
}

final farmsFilterProvider = StateProvider<FarmsFilter>((ref) {
  return const FarmsFilter();
});

final farmsInfiniteListProvider =
    AsyncNotifierProvider<FarmsInfiniteListController, InfiniteListState<Farm>>(
      FarmsInfiniteListController.new,
    );

class FarmsInfiniteListController
    extends AsyncNotifier<InfiniteListState<Farm>> {
  static const _pageSize = 20;

  @override
  Future<InfiniteListState<Farm>> build() async {
    final filter = ref.watch(farmsFilterProvider);
    return _loadFirstPage(filter);
  }

  Future<void> refreshList() async {
    final filter = ref.read(farmsFilterProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _loadFirstPage(filter));
  }

  Future<void> loadMore() async {
    final current = state.asData?.value;
    if (current == null || current.isLoadingMore || !current.hasNextPage) {
      return;
    }

    state = AsyncData(current.copyWith(isLoadingMore: true));

    final filter = ref.read(farmsFilterProvider);
    final useCase = GetFarmsUseCase(ref.read(farmsRepositoryProvider));

    try {
      final page = await useCase.page(
        page: current.page + 1,
        limit: _pageSize,
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

  Future<InfiniteListState<Farm>> _loadFirstPage(FarmsFilter filter) async {
    final useCase = GetFarmsUseCase(ref.read(farmsRepositoryProvider));
    final page = await useCase.page(
      page: 1,
      limit: _pageSize,
      active: filter.active,
      search: filter.search,
    );

    return InfiniteListState<Farm>(
      items: page.data,
      page: page.page,
      hasNextPage: page.hasNextPage,
    );
  }
}

final allActiveFarmsProvider = FutureProvider<List<Farm>>((ref) async {
  final useCase = GetFarmsUseCase(ref.watch(farmsRepositoryProvider));
  return useCase.call(active: true);
});

final createFarmControllerProvider =
    AsyncNotifierProvider<CreateFarmController, void>(CreateFarmController.new);

class CreateFarmController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(CreateFarmInput input) async {
    final useCase = CreateFarmUseCase(ref.read(farmsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input);
      ref.invalidate(farmsInfiniteListProvider);
      ref.invalidate(allActiveFarmsProvider);
    });
  }
}

final updateFarmControllerProvider =
    AsyncNotifierProvider<UpdateFarmController, void>(UpdateFarmController.new);

class UpdateFarmController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(String id, UpdateFarmInput input) async {
    final useCase = UpdateFarmUseCase(ref.read(farmsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(id, input);
      ref.invalidate(farmsInfiniteListProvider);
      ref.invalidate(allActiveFarmsProvider);
    });
  }
}

final deleteFarmControllerProvider =
    AsyncNotifierProvider<DeleteFarmController, void>(DeleteFarmController.new);

class DeleteFarmController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(String id) async {
    final useCase = DeleteFarmUseCase(ref.read(farmsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(id);
      ref.invalidate(farmsInfiniteListProvider);
      ref.invalidate(allActiveFarmsProvider);
    });
  }
}
