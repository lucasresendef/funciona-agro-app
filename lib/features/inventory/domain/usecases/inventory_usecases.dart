import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';
import 'package:field_management_app/features/inventory/domain/repositories/inventory_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

class GetInventoryLocationsUseCase {
  const GetInventoryLocationsUseCase(this._repository);

  final InventoryRepository _repository;

  Future<List<InventoryLocation>> call({
    String? farmId,
    bool? active,
    String? search,
  }) =>
      _repository.listLocations(farmId: farmId, active: active, search: search);

  Future<PaginatedResult<InventoryLocation>> page({
    required int page,
    int limit = 20,
    String? farmId,
    bool? active,
    String? search,
  }) => _repository.listLocationsPage(
    page: page,
    limit: limit,
    farmId: farmId,
    active: active,
    search: search,
  );
}

class CreateInventoryLocationUseCase {
  const CreateInventoryLocationUseCase(this._repository);

  final InventoryRepository _repository;

  Future<InventoryLocation> call(CreateInventoryLocationInput input) =>
      _repository.createLocation(input);
}

class UpdateInventoryLocationUseCase {
  const UpdateInventoryLocationUseCase(this._repository);

  final InventoryRepository _repository;

  Future<InventoryLocation> call(UpdateInventoryLocationInput input) =>
      _repository.updateLocation(input);
}

class DeleteInventoryLocationUseCase {
  const DeleteInventoryLocationUseCase(this._repository);

  final InventoryRepository _repository;

  Future<void> call(String id) => _repository.deleteLocation(id);
}

class GetInventoryBalancesUseCase {
  const GetInventoryBalancesUseCase(this._repository);

  final InventoryRepository _repository;

  Future<List<InventoryBalance>> call({
    String? farmId,
    String? inventoryLocationId,
    String? productId,
    bool? active,
  }) => _repository.listBalances(
    farmId: farmId,
    inventoryLocationId: inventoryLocationId,
    productId: productId,
    active: active,
  );

  Future<PaginatedResult<InventoryBalance>> page({
    required int page,
    int limit = 20,
    String? farmId,
    String? inventoryLocationId,
    String? productId,
    bool? active,
  }) => _repository.listBalancesPage(
    page: page,
    limit: limit,
    farmId: farmId,
    inventoryLocationId: inventoryLocationId,
    productId: productId,
    active: active,
  );
}

class CreateInventoryBalanceUseCase {
  const CreateInventoryBalanceUseCase(this._repository);

  final InventoryRepository _repository;

  Future<InventoryBalance> call(CreateInventoryBalanceInput input) =>
      _repository.createBalance(input);
}

class UpdateInventoryBalanceUseCase {
  const UpdateInventoryBalanceUseCase(this._repository);

  final InventoryRepository _repository;

  Future<InventoryBalance> call(String id, UpdateInventoryBalanceInput input) =>
      _repository.updateBalance(id, input);
}
