import 'package:field_management_app/features/users/data/datasources/users_remote_datasource.dart';
import 'package:field_management_app/features/users/data/mappers/app_user_mappers.dart';
import 'package:field_management_app/features/users/domain/entities/app_user.dart';
import 'package:field_management_app/features/users/domain/repositories/users_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final usersRepositoryProvider = Provider<UsersRepository>((ref) {
  return UsersRepositoryImpl(ref.watch(usersRemoteDataSourceProvider));
});

class UsersRepositoryImpl implements UsersRepository {
  const UsersRepositoryImpl(this._remoteDataSource);

  final UsersRemoteDataSource _remoteDataSource;

  @override
  Future<AppUser> create(CreateAppUserInput input) async {
    final dto = await _remoteDataSource.create(input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<AppUser> update(String id, UpdateAppUserInput input) async {
    final dto = await _remoteDataSource.update(id, input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<List<AppUser>> list({
    bool? active,
    bool? isAdmin,
    String? search,
  }) async {
    final items = await _remoteDataSource.list(
      active: active,
      isAdmin: isAdmin,
      search: search,
    );

    return items.map((item) => item.toEntity()).toList();
  }

  @override
  Future<PaginatedResult<AppUser>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    bool? isAdmin,
    String? search,
  }) async {
    final result = await _remoteDataSource.listPage(
      page: page,
      limit: limit,
      active: active,
      isAdmin: isAdmin,
      search: search,
    );
    return result.map((item) => item.toEntity());
  }
}
