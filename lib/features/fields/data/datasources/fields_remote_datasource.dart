import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/features/fields/data/dtos/field_dtos.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fieldsRemoteDataSourceProvider = Provider<FieldsRemoteDataSource>((ref) {
  return FieldsRemoteDataSource(ref.watch(apiClientProvider));
});

class FieldsRemoteDataSource {
  const FieldsRemoteDataSource(this._apiClient);

  final ApiClient _apiClient;

  Future<PaginatedResult<FieldDto>> listPage({
    required int page,
    int limit = 20,
    String? farmId,
    bool? active,
    String? search,
  }) async {
    final payload = await fetchPaginatedMaps(
      apiClient: _apiClient,
      path: '/fields',
      page: page,
      limit: limit,
      queryParameters: {'farmId': farmId, 'active': active, 'search': search},
    );
    return payload.map(FieldDto.fromJson);
  }

  Future<List<FieldDto>> list({
    String? farmId,
    bool? active,
    String? search,
  }) async {
    final payload = await fetchAllPaginatedMaps(
      apiClient: _apiClient,
      path: '/fields',
      queryParameters: {'farmId': farmId, 'active': active, 'search': search},
    );

    return payload.map(FieldDto.fromJson).toList();
  }

  Future<FieldDto> create(CreateFieldRequestDto input) async {
    final payload =
        await _apiClient.post('/fields', data: input.toJson())
            as Map<String, dynamic>;

    return FieldDto.fromJson(payload);
  }

  Future<FieldDto> update(String id, UpdateFieldRequestDto input) async {
    final payload =
        await _apiClient.patch('/fields/$id', data: input.toJson())
            as Map<String, dynamic>;

    return FieldDto.fromJson(payload);
  }

  Future<void> delete(String id) async {
    await _apiClient.delete('/fields/$id');
  }
}
