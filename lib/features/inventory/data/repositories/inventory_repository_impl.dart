import 'package:field_management_app/features/inventory/data/datasources/inventory_remote_datasource.dart';
import 'package:field_management_app/features/inventory/data/mappers/inventory_mappers.dart';
import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';
import 'package:field_management_app/features/inventory/domain/repositories/inventory_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final inventoryRepositoryProvider = Provider<InventoryRepository>((ref) {
  return InventoryRepositoryImpl(ref.watch(inventoryRemoteDataSourceProvider));
});

class InventoryRepositoryImpl implements InventoryRepository {
  const InventoryRepositoryImpl(this._remoteDataSource);

  final InventoryRemoteDataSource _remoteDataSource;

  @override
  Future<InventoryBalance> createBalance(
    CreateInventoryBalanceInput input,
  ) async {
    final dto = await _remoteDataSource.createBalance(input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<InventoryBalance> updateBalance(
    String id,
    UpdateInventoryBalanceInput input,
  ) async {
    final dto = await _remoteDataSource.updateBalance(id, input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<InventoryLocation> createLocation(
    CreateInventoryLocationInput input,
  ) async {
    final dto = await _remoteDataSource.createLocation(input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<InventoryLocation> updateLocation(
    UpdateInventoryLocationInput input,
  ) async {
    final dto = await _remoteDataSource.updateLocation(input);
    return dto.toEntity();
  }

  @override
  Future<void> deleteLocation(String id) async {
    await _remoteDataSource.deleteLocation(id);
  }

  @override
  Future<List<InventoryBalance>> listBalances({
    String? farmId,
    String? inventoryLocationId,
    String? productId,
    bool? active,
  }) async {
    final items = await _remoteDataSource.listBalances(
      farmId: farmId,
      inventoryLocationId: inventoryLocationId,
      productId: productId,
      active: active,
    );

    return items.map((item) => item.toEntity()).toList();
  }

  @override
  Future<PaginatedResult<InventoryBalance>> listBalancesPage({
    required int page,
    int limit = 20,
    String? farmId,
    String? inventoryLocationId,
    String? productId,
    bool? active,
  }) async {
    final result = await _remoteDataSource.listBalancesPage(
      page: page,
      limit: limit,
      farmId: farmId,
      inventoryLocationId: inventoryLocationId,
      productId: productId,
      active: active,
    );

    return result.map((item) => item.toEntity());
  }

  @override
  Future<List<InventoryLocation>> listLocations({
    String? farmId,
    bool? active,
    String? search,
  }) async {
    final items = await _remoteDataSource.listLocations(
      farmId: farmId,
      active: active,
      search: search,
    );

    return items.map((item) => item.toEntity()).toList();
  }

  @override
  Future<PaginatedResult<InventoryLocation>> listLocationsPage({
    required int page,
    int limit = 20,
    String? farmId,
    bool? active,
    String? search,
  }) async {
    final result = await _remoteDataSource.listLocationsPage(
      page: page,
      limit: limit,
      farmId: farmId,
      active: active,
      search: search,
    );

    return result.map((item) => item.toEntity());
  }
}
