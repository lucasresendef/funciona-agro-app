import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/features/inventory/data/dtos/inventory_dtos.dart';
import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final inventoryRemoteDataSourceProvider = Provider<InventoryRemoteDataSource>((
  ref,
) {
  return InventoryRemoteDataSource(ref.watch(apiClientProvider));
});

class InventoryRemoteDataSource {
  const InventoryRemoteDataSource(this._apiClient);

  final ApiClient _apiClient;

  Future<PaginatedResult<InventoryLocationDto>> listLocationsPage({
    required int page,
    int limit = 20,
    String? farmId,
    bool? active,
    String? search,
  }) async {
    final payload = await fetchPaginatedMaps(
      apiClient: _apiClient,
      path: '/inventory/locations',
      page: page,
      limit: limit,
      queryParameters: {'farmId': farmId, 'active': active, 'search': search},
    );
    return payload.map(InventoryLocationDto.fromJson);
  }

  Future<List<InventoryLocationDto>> listLocations({
    String? farmId,
    bool? active,
    String? search,
  }) async {
    final payload = await fetchAllPaginatedMaps(
      apiClient: _apiClient,
      path: '/inventory/locations',
      queryParameters: {'farmId': farmId, 'active': active, 'search': search},
    );

    return payload.map(InventoryLocationDto.fromJson).toList();
  }

  Future<InventoryLocationDto> createLocation(
    CreateInventoryLocationRequestDto input,
  ) async {
    final payload =
        await _apiClient.post('/inventory/locations', data: input.toJson())
            as Map<String, dynamic>;

    return InventoryLocationDto.fromJson(payload);
  }

  Future<InventoryLocationDto> updateLocation(
    UpdateInventoryLocationInput input,
  ) async {
    final payload =
        await _apiClient.patch(
              '/inventory/locations/${input.id}',
              data: input.toJson(),
            )
            as Map<String, dynamic>;

    return InventoryLocationDto.fromJson(payload);
  }

  Future<void> deleteLocation(String id) async {
    await _apiClient.delete('/inventory/locations/$id');
  }

  Future<List<InventoryBalanceDto>> listBalances({
    String? farmId,
    String? inventoryLocationId,
    String? productId,
    bool? active,
  }) async {
    final payload = await fetchAllPaginatedMaps(
      apiClient: _apiClient,
      path: '/inventory/balance',
      queryParameters: {
        'farmId': farmId,
        'inventoryLocationId': inventoryLocationId,
        'productId': productId,
        'active': active,
      },
    );

    return payload.map(InventoryBalanceDto.fromJson).toList();
  }

  Future<PaginatedResult<InventoryBalanceDto>> listBalancesPage({
    required int page,
    int limit = 20,
    String? farmId,
    String? inventoryLocationId,
    String? productId,
    bool? active,
  }) async {
    final payload = await fetchPaginatedMaps(
      apiClient: _apiClient,
      path: '/inventory/balance',
      page: page,
      limit: limit,
      queryParameters: {
        'farmId': farmId,
        'inventoryLocationId': inventoryLocationId,
        'productId': productId,
        'active': active,
      },
    );
    return payload.map(InventoryBalanceDto.fromJson);
  }

  Future<InventoryBalanceDto> createBalance(
    CreateInventoryBalanceRequestDto input,
  ) async {
    final payload =
        await _apiClient.post('/inventory/balance', data: input.toJson())
            as Map<String, dynamic>;

    return InventoryBalanceDto.fromJson(payload);
  }

  Future<InventoryBalanceDto> updateBalance(
    String id,
    UpdateInventoryBalanceRequestDto input,
  ) async {
    final payload =
        await _apiClient.patch('/inventory/balance/$id', data: input.toJson())
            as Map<String, dynamic>;

    return InventoryBalanceDto.fromJson(payload);
  }
}
