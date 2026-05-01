import 'package:field_management_app/core/pagination/infinite_list_state.dart';
import 'package:field_management_app/features/users/data/repositories/users_repository_impl.dart';
import 'package:field_management_app/features/users/domain/entities/app_user.dart';
import 'package:field_management_app/features/users/domain/usecases/users_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:field_management_app/core/utils/debug_log.dart';

class UsersFilter {
  const UsersFilter({this.search, this.active = true, this.isAdmin});

  final String? search;
  final bool? active;
  final bool? isAdmin;

  UsersFilter copyWith({String? search, bool? active, bool? isAdmin}) {
    return UsersFilter(
      search: search ?? this.search,
      active: active ?? this.active,
      isAdmin: isAdmin ?? this.isAdmin,
    );
  }
}

final usersFilterProvider = StateProvider<UsersFilter>((ref) {
  return const UsersFilter();
});

final usersInfiniteListProvider =
    AsyncNotifierProvider<
      UsersInfiniteListController,
      InfiniteListState<AppUser>
    >(UsersInfiniteListController.new);

class UsersInfiniteListController
    extends AsyncNotifier<InfiniteListState<AppUser>> {
  static const _pageSize = 20;

  @override
  Future<InfiniteListState<AppUser>> build() async {
    final filter = ref.watch(usersFilterProvider);
    return _loadFirstPage(filter);
  }

  Future<void> refreshList() async {
    final filter = ref.read(usersFilterProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _loadFirstPage(filter));
  }

  Future<void> loadMore() async {
    final current = state.asData?.value;
    if (current == null || current.isLoadingMore || !current.hasNextPage) {
      return;
    }

    state = AsyncData(current.copyWith(isLoadingMore: true));

    final filter = ref.read(usersFilterProvider);
    final useCase = GetUsersUseCase(ref.read(usersRepositoryProvider));

    try {
      final page = await useCase.page(
        page: current.page + 1,
        limit: _pageSize,
        active: filter.active,
        isAdmin: filter.isAdmin,
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

  Future<InfiniteListState<AppUser>> _loadFirstPage(UsersFilter filter) async {
    final useCase = GetUsersUseCase(ref.read(usersRepositoryProvider));
    final page = await useCase.page(
      page: 1,
      limit: _pageSize,
      active: filter.active,
      isAdmin: filter.isAdmin,
      search: filter.search,
    );

    return InfiniteListState<AppUser>(
      items: page.data,
      page: page.page,
      hasNextPage: page.hasNextPage,
    );
  }
}

final allActiveUsersProvider = FutureProvider<List<AppUser>>((ref) async {
  final useCase = GetUsersUseCase(ref.watch(usersRepositoryProvider));
  return useCase.call(active: true);
});

final createUserControllerProvider =
    AsyncNotifierProvider<CreateUserController, void>(CreateUserController.new);

class CreateUserController extends AsyncNotifier<void> {
  @override
  void build() {}

  Future<void> submit(CreateAppUserInput input) async {
    final useCase = CreateUserUseCase(ref.read(usersRepositoryProvider));

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await useCase.call(input);
      ref.invalidate(usersInfiniteListProvider);
      ref.invalidate(allActiveUsersProvider);
    });
  }
}
