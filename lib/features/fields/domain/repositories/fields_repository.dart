import 'package:field_management_app/features/fields/domain/entities/field.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

abstract interface class FieldsRepository {
  Future<List<Field>> list({String? farmId, bool? active, String? search});
  Future<PaginatedResult<Field>> listPage({
    required int page,
    int limit = 20,
    String? farmId,
    bool? active,
    String? search,
  });

  Future<Field> create(CreateFieldInput input);

  Future<Field> update(String id, UpdateFieldInput input);

  Future<void> delete(String id);
}
