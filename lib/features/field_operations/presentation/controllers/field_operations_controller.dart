import 'package:field_management_app/core/pagination/infinite_list_state.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/features/field_operations/data/repositories/field_operations_repository_impl.dart';
import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';
import 'package:field_management_app/features/field_operations/domain/usecases/field_operations_usecases.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:field_management_app/core/utils/debug_log.dart';

class FieldOperationsFilter {
  const FieldOperationsFilter({
    this.farmId,
    this.fieldId,
    this.status,
    this.active = true,
  });

  final String? farmId;
  final String? fieldId;
  final FieldOperationStatus? status;
  final bool? active;

  FieldOperationsFilter copyWith({
    String? farmId,
    String? fieldId,
    FieldOperationStatus? status,
    bool? active,
  }) {
    return FieldOperationsFilter(
      farmId: farmId ?? this.farmId,
      fieldId: fieldId ?? this.fieldId,
      status: status ?? this.status,
      active: active ?? this.active,
    );
  }
}

final fieldOperationsFilterProvider = StateProvider<FieldOperationsFilter>((
  ref,
) {
  return const FieldOperationsFilter(status: FieldOperationStatus.open);
});

final fieldOperationsInfiniteListProvider =
    AsyncNotifierProvider<
      FieldOperationsInfiniteListController,
      InfiniteListState<FieldOperation>
    >(FieldOperationsInfiniteListController.new);

final fieldOperationsProvider = FutureProvider<List<FieldOperation>>((
  ref,
) async {
  final filter = ref.watch(fieldOperationsFilterProvider);
  final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
  final useCase = GetFieldOperationsUseCase(
    ref.watch(fieldOperationsRepositoryProvider),
  );

  return useCase.call(
    farmId: filter.farmId ?? selectedFarmId,
    fieldId: filter.fieldId,
    status: filter.status,
    active: filter.active,
  );
});

class FieldOperationsInfiniteListController
    extends AsyncNotifier<InfiniteListState<FieldOperation>> {
  static const _pageSize = 20;

  @override
  Future<InfiniteListState<FieldOperation>> build() async {
    final filter = ref.watch(fieldOperationsFilterProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
    return _loadFirstPage(filter, selectedFarmId);
  }

  Future<void> refreshList() async {
    final filter = ref.read(fieldOperationsFilterProvider);
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

    final filter = ref.read(fieldOperationsFilterProvider);
    final selectedFarmId = ref.read(sessionManagerProvider).selectedFarmId;
    final useCase = GetFieldOperationsUseCase(
      ref.read(fieldOperationsRepositoryProvider),
    );

    try {
      final page = await useCase.page(
        page: current.page + 1,
        limit: _pageSize,
        farmId: filter.farmId ?? selectedFarmId,
        fieldId: filter.fieldId,
        status: filter.status,
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

  Future<InfiniteListState<FieldOperation>> _loadFirstPage(
    FieldOperationsFilter filter,
    String? selectedFarmId,
  ) async {
    final useCase = GetFieldOperationsUseCase(
      ref.read(fieldOperationsRepositoryProvider),
    );
    final page = await useCase.page(
      page: 1,
      limit: _pageSize,
      farmId: filter.farmId ?? selectedFarmId,
      fieldId: filter.fieldId,
      status: filter.status,
      active: filter.active,
    );

    return InfiniteListState<FieldOperation>(
      items: page.data,
      page: page.page,
      hasNextPage: page.hasNextPage,
    );
  }
}

final createFieldOperationControllerProvider =
    AsyncNotifierProvider<CreateFieldOperationController, void>(
      CreateFieldOperationController.new,
    );

class CreateFieldOperationController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(
    CreateFieldOperationInput input, {
    required String inventoryLocationId,
  }) async {
    final useCase = CreateFieldOperationUseCase(
      ref.read(fieldOperationsRepositoryProvider),
    );

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input, inventoryLocationId: inventoryLocationId);
      ref.invalidate(fieldOperationsInfiniteListProvider);
    });
  }
}

final updateFieldOperationControllerProvider =
    AsyncNotifierProvider<UpdateFieldOperationController, void>(
      UpdateFieldOperationController.new,
    );

class UpdateFieldOperationController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(String id, UpdateFieldOperationInput input) async {
    final useCase = UpdateFieldOperationUseCase(
      ref.read(fieldOperationsRepositoryProvider),
    );

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(id, input);
      ref.invalidate(fieldOperationsInfiniteListProvider);
    });
  }
}
