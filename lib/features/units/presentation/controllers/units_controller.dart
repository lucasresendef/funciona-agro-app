import 'package:field_management_app/core/pagination/infinite_list_state.dart';
import 'package:field_management_app/features/units/data/repositories/units_repository_impl.dart';
import 'package:field_management_app/features/units/domain/entities/unit_of_measure.dart';
import 'package:field_management_app/features/units/domain/usecases/units_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:field_management_app/core/utils/debug_log.dart';

class UnitsFilter {
  const UnitsFilter({this.search, this.active = true});

  final String? search;
  final bool? active;

  UnitsFilter copyWith({String? search, bool? active}) {
    return UnitsFilter(
      search: search ?? this.search,
      active: active ?? this.active,
    );
  }
}

final unitsFilterProvider = StateProvider<UnitsFilter>((ref) {
  return const UnitsFilter();
});

final unitsInfiniteListProvider =
    AsyncNotifierProvider<
      UnitsInfiniteListController,
      InfiniteListState<UnitOfMeasure>
    >(UnitsInfiniteListController.new);

class UnitsInfiniteListController
    extends AsyncNotifier<InfiniteListState<UnitOfMeasure>> {
  static const _pageSize = 20;

  @override
  Future<InfiniteListState<UnitOfMeasure>> build() async {
    final filter = ref.watch(unitsFilterProvider);
    return _loadFirstPage(filter);
  }

  Future<void> refreshList() async {
    final filter = ref.read(unitsFilterProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _loadFirstPage(filter));
  }

  Future<void> loadMore() async {
    final current = state.asData?.value;
    if (current == null || current.isLoadingMore || !current.hasNextPage) {
      return;
    }

    state = AsyncData(current.copyWith(isLoadingMore: true));

    final filter = ref.read(unitsFilterProvider);
    final useCase = GetUnitsUseCase(ref.read(unitsRepositoryProvider));

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

  Future<InfiniteListState<UnitOfMeasure>> _loadFirstPage(
    UnitsFilter filter,
  ) async {
    final useCase = GetUnitsUseCase(ref.read(unitsRepositoryProvider));
    final page = await useCase.page(
      page: 1,
      limit: _pageSize,
      active: filter.active,
      search: filter.search,
    );

    return InfiniteListState<UnitOfMeasure>(
      items: page.data,
      page: page.page,
      hasNextPage: page.hasNextPage,
    );
  }
}

final allActiveUnitsProvider = FutureProvider<List<UnitOfMeasure>>((ref) async {
  final useCase = GetUnitsUseCase(ref.watch(unitsRepositoryProvider));
  return useCase.call(active: true);
});

final createUnitControllerProvider =
    AsyncNotifierProvider<CreateUnitController, void>(CreateUnitController.new);
final updateUnitControllerProvider =
    AsyncNotifierProvider<UpdateUnitController, void>(UpdateUnitController.new);
final deleteUnitControllerProvider =
    AsyncNotifierProvider<DeleteUnitController, void>(DeleteUnitController.new);

class CreateUnitController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(CreateUnitInput input) async {
    final useCase = CreateUnitUseCase(ref.read(unitsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input);
      ref.invalidate(unitsInfiniteListProvider);
      ref.invalidate(allActiveUnitsProvider);
    });
  }
}

class UpdateUnitController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(UpdateUnitInput input) async {
    final useCase = UpdateUnitUseCase(ref.read(unitsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input);
      ref.invalidate(unitsInfiniteListProvider);
      ref.invalidate(allActiveUnitsProvider);
    });
  }
}

class DeleteUnitController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(String id) async {
    final useCase = DeleteUnitUseCase(ref.read(unitsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(id);
      ref.invalidate(unitsInfiniteListProvider);
      ref.invalidate(allActiveUnitsProvider);
    });
  }
}
