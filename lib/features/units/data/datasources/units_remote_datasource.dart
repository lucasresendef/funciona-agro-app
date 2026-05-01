import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/features/units/data/dtos/unit_dtos.dart';
import 'package:field_management_app/features/units/domain/entities/unit_of_measure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final unitsRemoteDataSourceProvider = Provider<UnitsRemoteDataSource>((ref) {
  return UnitsRemoteDataSource(ref.watch(apiClientProvider));
});

class UnitsRemoteDataSource {
  const UnitsRemoteDataSource(this._apiClient);

  final ApiClient _apiClient;

  Future<PaginatedResult<UnitOfMeasureDto>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    String? search,
  }) async {
    final payload = await fetchPaginatedMaps(
      apiClient: _apiClient,
      path: '/units',
      page: page,
      limit: limit,
      queryParameters: {'active': active, 'search': search},
    );
    return payload.map(UnitOfMeasureDto.fromJson);
  }

  Future<List<UnitOfMeasureDto>> list({bool? active, String? search}) async {
    final payload = await fetchAllPaginatedMaps(
      apiClient: _apiClient,
      path: '/units',
      queryParameters: {'active': active, 'search': search},
    );

    return payload.map(UnitOfMeasureDto.fromJson).toList();
  }

  Future<UnitOfMeasureDto> create(CreateUnitRequestDto input) async {
    final payload =
        await _apiClient.post('/units', data: input.toJson())
            as Map<String, dynamic>;

    return UnitOfMeasureDto.fromJson(payload);
  }

  Future<UnitOfMeasureDto> update(UpdateUnitInput input) async {
    final payload =
        await _apiClient.patch('/units/${input.id}', data: input.toJson())
            as Map<String, dynamic>;

    return UnitOfMeasureDto.fromJson(payload);
  }

  Future<void> delete(String id) async {
    await _apiClient.delete('/units/$id');
  }
}
