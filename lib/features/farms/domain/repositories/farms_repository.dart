import 'package:field_management_app/features/farms/domain/entities/farm.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

abstract interface class FarmsRepository {
  Future<List<Farm>> list({bool? active, String? search});
  Future<PaginatedResult<Farm>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    String? search,
  });

  Future<Farm> create(CreateFarmInput input);

  Future<Farm> update(String id, UpdateFarmInput input);

  Future<void> delete(String id);
}
