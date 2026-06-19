import 'package:field_management_app/core/pagination/infinite_list_state.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/features/field_operations/data/repositories/field_operations_repository_impl.dart';
import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';
import 'package:field_management_app/features/field_operations/domain/usecases/field_operations_usecases.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:field_management_app/core/utils/debug_log.dart';

enum FieldOperationsStatusScope { openAndFinished, open, finished, canceled }

extension FieldOperationsStatusScopeX on FieldOperationsStatusScope {
  String get label => switch (this) {
    FieldOperationsStatusScope.openAndFinished => 'Abertas e finalizadas',
    FieldOperationsStatusScope.open => 'Abertas',
    FieldOperationsStatusScope.finished => 'Finalizadas',
    FieldOperationsStatusScope.canceled => 'Canceladas',
  };

  String get compactLabel => switch (this) {
    FieldOperationsStatusScope.openAndFinished => 'Abertas + finalizadas',
    FieldOperationsStatusScope.open => 'Abertas',
    FieldOperationsStatusScope.finished => 'Finalizadas',
    FieldOperationsStatusScope.canceled => 'Canceladas',
  };

  List<FieldOperationStatus> get statuses => switch (this) {
    FieldOperationsStatusScope.openAndFinished => [
      FieldOperationStatus.open,
      FieldOperationStatus.finished,
    ],
    FieldOperationsStatusScope.open => [FieldOperationStatus.open],
    FieldOperationsStatusScope.finished => [FieldOperationStatus.finished],
    FieldOperationsStatusScope.canceled => [FieldOperationStatus.canceled],
  };
}

class FieldOperationsFilter {
  static const _unset = Object();

  const FieldOperationsFilter({
    this.farmId,
    this.fieldId,
    this.statusScope = FieldOperationsStatusScope.openAndFinished,
    this.active = true,
  });

  final String? farmId;
  final String? fieldId;
  final FieldOperationsStatusScope statusScope;
  final bool? active;

  FieldOperationsFilter copyWith({
    Object? farmId = _unset,
    Object? fieldId = _unset,
    FieldOperationsStatusScope? statusScope,
    bool? active,
  }) {
    return FieldOperationsFilter(
      farmId: identical(farmId, _unset) ? this.farmId : farmId as String?,
      fieldId: identical(fieldId, _unset) ? this.fieldId : fieldId as String?,
      statusScope: statusScope ?? this.statusScope,
      active: active ?? this.active,
    );
  }
}

final fieldOperationsFilterProvider = StateProvider<FieldOperationsFilter>((
  ref,
) {
  return const FieldOperationsFilter();
});

final fieldOperationsSearchProvider = StateProvider<String>((ref) => '');

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
    status: filter.statusScope.statuses.first,
    active: filter.active,
  );
});

final fieldOperationsSearchResultsProvider =
    FutureProvider<List<FieldOperation>>((ref) async {
      final filter = ref.watch(fieldOperationsFilterProvider);
      final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
      final useCase = GetFieldOperationsUseCase(
        ref.watch(fieldOperationsRepositoryProvider),
      );

      final responses = await Future.wait(
        filter.statusScope.statuses
            .map(
              (status) => useCase.call(
                farmId: filter.farmId ?? selectedFarmId,
                fieldId: filter.fieldId,
                status: status,
                active: filter.active,
              ),
            )
            .toList(),
      );

      return mergeAndSortFieldOperations(
        responses.expand((items) => items).toList(),
      );
    });

class FieldOperationsInfiniteListController
    extends AsyncNotifier<InfiniteListState<FieldOperation>> {
  static const _pageSize = 20;
  List<FieldOperation> _mixedStatusCache = const <FieldOperation>[];

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
      if (filter.statusScope.statuses.length > 1) {
        state = AsyncData(
          _loadNextFromCache(current: current, cache: _mixedStatusCache),
        );
        return;
      }

      final page = await useCase.page(
        page: current.page + 1,
        limit: _pageSize,
        farmId: filter.farmId ?? selectedFarmId,
        fieldId: filter.fieldId,
        status: filter.statusScope.statuses.first,
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

    if (filter.statusScope.statuses.length > 1) {
      final responses = await Future.wait(
        filter.statusScope.statuses
            .map(
              (status) => useCase.call(
                farmId: filter.farmId ?? selectedFarmId,
                fieldId: filter.fieldId,
                status: status,
                active: filter.active,
              ),
            )
            .toList(),
      );

      _mixedStatusCache = _mergeAndSortOperations(
        responses.expand((items) => items).toList(),
      );
      final firstSliceEnd = _mixedStatusCache.length > _pageSize
          ? _pageSize
          : _mixedStatusCache.length;
      return InfiniteListState<FieldOperation>(
        items: _mixedStatusCache.sublist(0, firstSliceEnd),
        page: firstSliceEnd == 0 ? 0 : 1,
        hasNextPage: firstSliceEnd < _mixedStatusCache.length,
      );
    }

    _mixedStatusCache = const <FieldOperation>[];
    final page = await useCase.page(
      page: 1,
      limit: _pageSize,
      farmId: filter.farmId ?? selectedFarmId,
      fieldId: filter.fieldId,
      status: filter.statusScope.statuses.first,
      active: filter.active,
    );

    return InfiniteListState<FieldOperation>(
      items: page.data,
      page: page.page,
      hasNextPage: page.hasNextPage,
    );
  }

  InfiniteListState<FieldOperation> _loadNextFromCache({
    required InfiniteListState<FieldOperation> current,
    required List<FieldOperation> cache,
  }) {
    final nextPage = current.page + 1;
    final from = (nextPage - 1) * _pageSize;
    if (from >= cache.length) {
      return current.copyWith(isLoadingMore: false, hasNextPage: false);
    }

    final to = from + _pageSize > cache.length
        ? cache.length
        : from + _pageSize;
    return current.copyWith(
      items: [...current.items, ...cache.sublist(from, to)],
      page: nextPage,
      hasNextPage: to < cache.length,
      isLoadingMore: false,
    );
  }

  List<FieldOperation> _mergeAndSortOperations(
    List<FieldOperation> operations,
  ) => mergeAndSortFieldOperations(operations);
}

List<FieldOperation> mergeAndSortFieldOperations(
  List<FieldOperation> operations,
) {
  final mapById = <String, FieldOperation>{
    for (final item in operations) item.metadata.id: item,
  };
  final merged = mapById.values.toList();
  merged.sort((a, b) {
    final operationDateComparison = b.operationDate.compareTo(a.operationDate);
    if (operationDateComparison != 0) {
      return operationDateComparison;
    }
    final createdAtA = a.metadata.createdAt;
    final createdAtB = b.metadata.createdAt;
    if (createdAtA != null && createdAtB != null) {
      final createdComparison = createdAtB.compareTo(createdAtA);
      if (createdComparison != 0) {
        return createdComparison;
      }
    }
    return (b.sequenceNumber ?? 0).compareTo(a.sequenceNumber ?? 0);
  });
  return merged;
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
