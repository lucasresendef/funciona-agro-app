import 'package:field_management_app/features/units/domain/entities/unit_of_measure.dart';
import 'package:field_management_app/features/units/domain/repositories/units_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

class GetUnitsUseCase {
  const GetUnitsUseCase(this._repository);

  final UnitsRepository _repository;

  Future<List<UnitOfMeasure>> call({bool? active, String? search}) =>
      _repository.list(active: active, search: search);

  Future<PaginatedResult<UnitOfMeasure>> page({
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

class CreateUnitUseCase {
  const CreateUnitUseCase(this._repository);

  final UnitsRepository _repository;

  Future<UnitOfMeasure> call(CreateUnitInput input) =>
      _repository.create(input);
}

class UpdateUnitUseCase {
  const UpdateUnitUseCase(this._repository);

  final UnitsRepository _repository;

  Future<UnitOfMeasure> call(UpdateUnitInput input) =>
      _repository.update(input);
}

class DeleteUnitUseCase {
  const DeleteUnitUseCase(this._repository);

  final UnitsRepository _repository;

  Future<void> call(String id) => _repository.delete(id);
}
