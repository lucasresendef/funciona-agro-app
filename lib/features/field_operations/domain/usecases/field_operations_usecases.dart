import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';
import 'package:field_management_app/features/field_operations/domain/repositories/field_operations_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/shared/models/app_enums.dart';

class GetFieldOperationsUseCase {
  const GetFieldOperationsUseCase(this._repository);

  final FieldOperationsRepository _repository;

  Future<List<FieldOperation>> call({
    String? farmId,
    String? fieldId,
    FieldOperationStatus? status,
    bool? active,
  }) => _repository.list(
    farmId: farmId,
    fieldId: fieldId,
    status: status,
    active: active,
  );

  Future<PaginatedResult<FieldOperation>> page({
    required int page,
    int limit = 20,
    String? farmId,
    String? fieldId,
    FieldOperationStatus? status,
    bool? active,
  }) => _repository.listPage(
    page: page,
    limit: limit,
    farmId: farmId,
    fieldId: fieldId,
    status: status,
    active: active,
  );
}

class CreateFieldOperationUseCase {
  const CreateFieldOperationUseCase(this._repository);

  final FieldOperationsRepository _repository;

  Future<FieldOperation> call(
    CreateFieldOperationInput input, {
    required String inventoryLocationId,
  }) => _repository.create(input, inventoryLocationId: inventoryLocationId);
}

class UpdateFieldOperationUseCase {
  const UpdateFieldOperationUseCase(this._repository);

  final FieldOperationsRepository _repository;

  Future<FieldOperation> call(String id, UpdateFieldOperationInput input) =>
      _repository.update(id, input);
}
