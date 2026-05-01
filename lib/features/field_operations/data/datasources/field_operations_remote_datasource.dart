import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/features/field_operations/data/dtos/field_operation_dtos.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fieldOperationsRemoteDataSourceProvider =
    Provider<FieldOperationsRemoteDataSource>((ref) {
      return FieldOperationsRemoteDataSource(ref.watch(apiClientProvider));
    });

class FieldOperationsRemoteDataSource {
  const FieldOperationsRemoteDataSource(this._apiClient);

  final ApiClient _apiClient;

  Future<PaginatedResult<FieldOperationDto>> listPage({
    required int page,
    int limit = 20,
    String? farmId,
    String? fieldId,
    FieldOperationStatus? status,
    bool? active,
  }) async {
    final payload = await fetchPaginatedMaps(
      apiClient: _apiClient,
      path: '/field-operations',
      page: page,
      limit: limit,
      queryParameters: {
        'farmId': farmId,
        'fieldId': fieldId,
        'status': status?.name.toUpperCase(),
        'active': active,
      },
    );
    return payload.map(FieldOperationDto.fromJson);
  }

  Future<List<FieldOperationDto>> list({
    String? farmId,
    String? fieldId,
    FieldOperationStatus? status,
    bool? active,
  }) async {
    final payload = await fetchAllPaginatedMaps(
      apiClient: _apiClient,
      path: '/field-operations',
      queryParameters: {
        'farmId': farmId,
        'fieldId': fieldId,
        'status': status?.name.toUpperCase(),
        'active': active,
      },
    );

    return payload.map(FieldOperationDto.fromJson).toList();
  }

  Future<FieldOperationDto> create(
    CreateFieldOperationRequestDto input, {
    required String inventoryLocationId,
  }) async {
    final data = input.toJson()..['inventoryLocationId'] = inventoryLocationId;
    final payload =
        await _apiClient.post('/field-operations', data: data)
            as Map<String, dynamic>;

    return FieldOperationDto.fromJson(payload);
  }

  Future<FieldOperationDto> update(
    String id,
    Map<String, dynamic> input,
  ) async {
    final payload =
        await _apiClient.patch('/field-operations/$id', data: input)
            as Map<String, dynamic>;

    return FieldOperationDto.fromJson(payload);
  }
}
