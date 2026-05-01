import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

abstract interface class InventoryRepository {
  Future<List<InventoryLocation>> listLocations({
    String? farmId,
    bool? active,
    String? search,
  });
  Future<PaginatedResult<InventoryLocation>> listLocationsPage({
    required int page,
    int limit = 20,
    String? farmId,
    bool? active,
    String? search,
  });

  Future<InventoryLocation> createLocation(CreateInventoryLocationInput input);

  Future<InventoryLocation> updateLocation(UpdateInventoryLocationInput input);

  Future<void> deleteLocation(String id);

  Future<List<InventoryBalance>> listBalances({
    String? farmId,
    String? inventoryLocationId,
    String? productId,
    bool? active,
  });
  Future<PaginatedResult<InventoryBalance>> listBalancesPage({
    required int page,
    int limit = 20,
    String? farmId,
    String? inventoryLocationId,
    String? productId,
    bool? active,
  });

  Future<InventoryBalance> createBalance(CreateInventoryBalanceInput input);

  Future<InventoryBalance> updateBalance(
    String id,
    UpdateInventoryBalanceInput input,
  );
}
