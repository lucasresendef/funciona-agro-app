import 'package:field_management_app/features/farms/domain/entities/farm.dart';
import 'package:field_management_app/features/farms/domain/repositories/farms_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

class GetFarmsUseCase {
  const GetFarmsUseCase(this._repository);

  final FarmsRepository _repository;

  Future<List<Farm>> call({bool? active, String? search}) =>
      _repository.list(active: active, search: search);

  Future<PaginatedResult<Farm>> page({
    required int page,
    int limit = 20,
    bool? active,
    String? search,
  }) => _repository.listPage(
    page: page,
    limit: limit,
    active: active,
    search: search,
  );
}

class CreateFarmUseCase {
  const CreateFarmUseCase(this._repository);

  final FarmsRepository _repository;

  Future<Farm> call(CreateFarmInput input) => _repository.create(input);
}

class UpdateFarmUseCase {
  const UpdateFarmUseCase(this._repository);

  final FarmsRepository _repository;

  Future<Farm> call(String id, UpdateFarmInput input) =>
      _repository.update(id, input);
}

class DeleteFarmUseCase {
  const DeleteFarmUseCase(this._repository);

  final FarmsRepository _repository;

  Future<void> call(String id) => _repository.delete(id);
}
