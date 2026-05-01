import 'package:field_management_app/features/units/domain/entities/unit_of_measure.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

abstract interface class UnitsRepository {
  Future<List<UnitOfMeasure>> list({bool? active, String? search});
  Future<PaginatedResult<UnitOfMeasure>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    String? search,
  });

  Future<UnitOfMeasure> create(CreateUnitInput input);

  Future<UnitOfMeasure> update(UpdateUnitInput input);

  Future<void> delete(String id);
}
