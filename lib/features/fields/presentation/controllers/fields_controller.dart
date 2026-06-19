import 'package:field_management_app/core/pagination/infinite_list_state.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/features/fields/data/repositories/fields_repository_impl.dart';
import 'package:field_management_app/features/fields/domain/entities/field.dart';
import 'package:field_management_app/features/fields/domain/usecases/fields_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:field_management_app/core/utils/debug_log.dart';

class FieldsFilter {
  static const sessionFarm = '__session_farm__';
  static const allFarms = '__all_farms__';

  const FieldsFilter({
    this.farmId = sessionFarm,
    this.search,
    this.active = true,
  });

  final String? farmId;
  final String? search;
  final bool? active;

  static const _sentinel = Object();

  FieldsFilter copyWith({
    Object? farmId = _sentinel,
    String? search,
    bool? active,
  }) {
    return FieldsFilter(
      farmId: identical(farmId, _sentinel) ? this.farmId : farmId as String?,
      search: search ?? this.search,
      active: active ?? this.active,
    );
  }
}

final fieldsFilterProvider = StateProvider<FieldsFilter>((ref) {
  return const FieldsFilter();
});

final fieldsInfiniteListProvider =
    AsyncNotifierProvider<
      FieldsInfiniteListController,
      InfiniteListState<Field>
    >(FieldsInfiniteListController.new);

class FieldsInfiniteListController
    extends AsyncNotifier<InfiniteListState<Field>> {
  static const _pageSize = 20;

  @override
  Future<InfiniteListState<Field>> build() async {
    final filter = ref.watch(fieldsFilterProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
    return _loadFirstPage(filter, selectedFarmId);
  }

  Future<void> refreshList() async {
    final filter = ref.read(fieldsFilterProvider);
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

    final filter = ref.read(fieldsFilterProvider);
    final selectedFarmId = ref.read(sessionManagerProvider).selectedFarmId;
    final useCase = GetFieldsUseCase(ref.read(fieldsRepositoryProvider));

    try {
      final page = await useCase.page(
        page: current.page + 1,
        limit: _pageSize,
        farmId: _resolveFarmId(filter, selectedFarmId),
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

  Future<InfiniteListState<Field>> _loadFirstPage(
    FieldsFilter filter,
    String? selectedFarmId,
  ) async {
    final useCase = GetFieldsUseCase(ref.read(fieldsRepositoryProvider));
    final page = await useCase.page(
      page: 1,
      limit: _pageSize,
      farmId: _resolveFarmId(filter, selectedFarmId),
      active: filter.active,
      search: filter.search,
    );

    return InfiniteListState<Field>(
      items: page.data,
      page: page.page,
      hasNextPage: page.hasNextPage,
    );
  }

  String? _resolveFarmId(FieldsFilter filter, String? selectedFarmId) {
    final farmId = filter.farmId;
    if (farmId == FieldsFilter.allFarms) {
      return null;
    }
    if (farmId == null || farmId == FieldsFilter.sessionFarm) {
      return selectedFarmId;
    }
    return farmId;
  }
}

final fieldsByFarmProvider = FutureProvider.family<List<Field>, String?>((
  ref,
  farmId,
) async {
  final useCase = GetFieldsUseCase(ref.watch(fieldsRepositoryProvider));
  return useCase.call(farmId: farmId, active: true);
});

final createFieldControllerProvider =
    AsyncNotifierProvider<CreateFieldController, void>(
      CreateFieldController.new,
    );

class CreateFieldController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(CreateFieldInput input) async {
    final useCase = CreateFieldUseCase(ref.read(fieldsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input);
      ref.invalidate(fieldsInfiniteListProvider);
      ref.invalidate(fieldsByFarmProvider(input.farmId));
    });
  }
}

final updateFieldControllerProvider =
    AsyncNotifierProvider<UpdateFieldController, void>(
      UpdateFieldController.new,
    );

class UpdateFieldController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(String id, UpdateFieldInput input) async {
    final useCase = UpdateFieldUseCase(ref.read(fieldsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(id, input);
      ref.invalidate(fieldsInfiniteListProvider);
      ref.invalidate(fieldsByFarmProvider(input.farmId));
    });
  }
}

final deleteFieldControllerProvider =
    AsyncNotifierProvider<DeleteFieldController, void>(
      DeleteFieldController.new,
    );

class DeleteFieldController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(String id) async {
    final useCase = DeleteFieldUseCase(ref.read(fieldsRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(id);
      ref.invalidate(fieldsInfiniteListProvider);
    });
  }
}
