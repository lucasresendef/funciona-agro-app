import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/shared/models/app_enums.dart';

abstract interface class FieldOperationsRepository {
  Future<List<FieldOperation>> list({
    String? farmId,
    String? fieldId,
    FieldOperationStatus? status,
    bool? active,
  });
  Future<PaginatedResult<FieldOperation>> listPage({
    required int page,
    int limit = 20,
    String? farmId,
    String? fieldId,
    FieldOperationStatus? status,
    bool? active,
  });

  Future<FieldOperation> create(
    CreateFieldOperationInput input, {
    required String inventoryLocationId,
  });

  Future<FieldOperation> update(String id, UpdateFieldOperationInput input);
}
