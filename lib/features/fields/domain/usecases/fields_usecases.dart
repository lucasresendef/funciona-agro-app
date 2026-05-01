import 'package:field_management_app/features/fields/domain/entities/field.dart';
import 'package:field_management_app/features/fields/domain/repositories/fields_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

class GetFieldsUseCase {
  const GetFieldsUseCase(this._repository);

  final FieldsRepository _repository;

  Future<List<Field>> call({String? farmId, bool? active, String? search}) =>
      _repository.list(farmId: farmId, active: active, search: search);

  Future<PaginatedResult<Field>> page({
    required int page,
    int limit = 20,
    String? farmId,
    bool? active,
    String? search,
  }) => _repository.listPage(
    page: page,
    limit: limit,
    farmId: farmId,
    active: active,
    search: search,
  );
}

class CreateFieldUseCase {
  const CreateFieldUseCase(this._repository);

  final FieldsRepository _repository;

  Future<Field> call(CreateFieldInput input) => _repository.create(input);
}

class UpdateFieldUseCase {
  const UpdateFieldUseCase(this._repository);

  final FieldsRepository _repository;

  Future<Field> call(String id, UpdateFieldInput input) =>
      _repository.update(id, input);
}

class DeleteFieldUseCase {
  const DeleteFieldUseCase(this._repository);

  final FieldsRepository _repository;

  Future<void> call(String id) => _repository.delete(id);
}
