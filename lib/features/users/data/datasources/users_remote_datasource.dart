import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/features/users/data/dtos/app_user_dtos.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final usersRemoteDataSourceProvider = Provider<UsersRemoteDataSource>((ref) {
  return UsersRemoteDataSource(ref.watch(apiClientProvider));
});

class UsersRemoteDataSource {
  const UsersRemoteDataSource(this._apiClient);

  final ApiClient _apiClient;

  Future<PaginatedResult<AppUserDto>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    bool? isAdmin,
    String? search,
  }) async {
    final payload = await fetchPaginatedMaps(
      apiClient: _apiClient,
      path: '/users',
      page: page,
      limit: limit,
      queryParameters: {'active': active, 'isAdmin': isAdmin, 'search': search},
    );
    return payload.map(AppUserDto.fromJson);
  }

  Future<List<AppUserDto>> list({
    bool? active,
    bool? isAdmin,
    String? search,
  }) async {
    final payload = await fetchAllPaginatedMaps(
      apiClient: _apiClient,
      path: '/users',
      queryParameters: {'active': active, 'isAdmin': isAdmin, 'search': search},
    );

    return payload.map(AppUserDto.fromJson).toList();
  }

  Future<AppUserDto> create(CreateAppUserRequestDto input) async {
    final payload =
        await _apiClient.post('/users', data: input.toJson())
            as Map<String, dynamic>;

    return AppUserDto.fromJson(payload);
  }

  Future<AppUserDto> update(String id, UpdateAppUserRequestDto input) async {
    final payload =
        await _apiClient.patch('/users/$id', data: input.toJson())
            as Map<String, dynamic>;

    return AppUserDto.fromJson(payload);
  }
}
