import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/features/farms/data/dtos/farm_dtos.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final farmsRemoteDataSourceProvider = Provider<FarmsRemoteDataSource>((ref) {
  return FarmsRemoteDataSource(ref.watch(apiClientProvider));
});

class FarmsRemoteDataSource {
  const FarmsRemoteDataSource(this._apiClient);

  final ApiClient _apiClient;

  Future<PaginatedResult<FarmDto>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    String? search,
  }) async {
    final payload = await fetchPaginatedMaps(
      apiClient: _apiClient,
      path: '/farms',
      page: page,
      limit: limit,
      queryParameters: {'active': active, 'search': search},
    );
    return payload.map(FarmDto.fromJson);
  }

  Future<List<FarmDto>> list({bool? active, String? search}) async {
    final payload = await fetchAllPaginatedMaps(
      apiClient: _apiClient,
      path: '/farms',
      queryParameters: {'active': active, 'search': search},
    );

    return payload.map(FarmDto.fromJson).toList();
  }

  Future<FarmDto> create(CreateFarmRequestDto input) async {
    final payload =
        await _apiClient.post('/farms', data: input.toJson())
            as Map<String, dynamic>;

    return FarmDto.fromJson(payload);
  }

  Future<FarmDto> update(String id, UpdateFarmRequestDto input) async {
    final payload =
        await _apiClient.patch('/farms/$id', data: input.toJson())
            as Map<String, dynamic>;

    return FarmDto.fromJson(payload);
  }

  Future<void> delete(String id) async {
    await _apiClient.delete('/farms/$id');
  }
}
