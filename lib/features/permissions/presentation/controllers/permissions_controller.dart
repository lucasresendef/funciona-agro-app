import 'package:field_management_app/core/pagination/infinite_list_state.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/features/permissions/data/repositories/permissions_repository_impl.dart';
import 'package:field_management_app/features/permissions/domain/entities/farm_user_permission.dart';
import 'package:field_management_app/features/permissions/domain/usecases/permissions_usecases.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:field_management_app/core/utils/debug_log.dart';

class PermissionsFilter {
  const PermissionsFilter({
    this.farmId,
    this.keycloakUserId,
    this.role,
    this.active = true,
  });

  final String? farmId;
  final String? keycloakUserId;
  final FarmUserRole? role;
  final bool? active;

  PermissionsFilter copyWith({
    String? farmId,
    String? keycloakUserId,
    FarmUserRole? role,
    bool? active,
  }) {
    return PermissionsFilter(
      farmId: farmId ?? this.farmId,
      keycloakUserId: keycloakUserId ?? this.keycloakUserId,
      role: role ?? this.role,
      active: active ?? this.active,
    );
  }
}

final permissionsFilterProvider = StateProvider<PermissionsFilter>((ref) {
  return const PermissionsFilter();
});

final permissionsInfiniteListProvider =
    AsyncNotifierProvider<
      PermissionsInfiniteListController,
      InfiniteListState<FarmUserPermission>
    >(PermissionsInfiniteListController.new);

class PermissionsInfiniteListController
    extends AsyncNotifier<InfiniteListState<FarmUserPermission>> {
  static const _pageSize = 20;

  @override
  Future<InfiniteListState<FarmUserPermission>> build() async {
    final filter = ref.watch(permissionsFilterProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
    return _loadFirstPage(filter, selectedFarmId);
  }

  Future<void> refreshList() async {
    final filter = ref.read(permissionsFilterProvider);
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

    final filter = ref.read(permissionsFilterProvider);
    final selectedFarmId = ref.read(sessionManagerProvider).selectedFarmId;
    final useCase = GetPermissionsUseCase(
      ref.read(permissionsRepositoryProvider),
    );

    try {
      final page = await useCase.page(
        page: current.page + 1,
        limit: _pageSize,
        farmId: filter.farmId ?? selectedFarmId,
        keycloakUserId: filter.keycloakUserId,
        role: filter.role,
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

  Future<InfiniteListState<FarmUserPermission>> _loadFirstPage(
    PermissionsFilter filter,
    String? selectedFarmId,
  ) async {
    final useCase = GetPermissionsUseCase(
      ref.read(permissionsRepositoryProvider),
    );
    final page = await useCase.page(
      page: 1,
      limit: _pageSize,
      farmId: filter.farmId ?? selectedFarmId,
      keycloakUserId: filter.keycloakUserId,
      role: filter.role,
      active: filter.active,
    );

    return InfiniteListState<FarmUserPermission>(
      items: page.data,
      page: page.page,
      hasNextPage: page.hasNextPage,
    );
  }
}

final createPermissionControllerProvider =
    AsyncNotifierProvider<CreatePermissionController, void>(
      CreatePermissionController.new,
    );

class CreatePermissionController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(CreateFarmPermissionInput input) async {
    final useCase = CreatePermissionUseCase(
      ref.read(permissionsRepositoryProvider),
    );

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input);
      ref.invalidate(permissionsInfiniteListProvider);
    });
  }
}
