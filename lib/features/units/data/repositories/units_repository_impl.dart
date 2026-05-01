import 'package:field_management_app/features/units/data/datasources/units_remote_datasource.dart';
import 'package:field_management_app/features/units/data/mappers/unit_mappers.dart';
import 'package:field_management_app/features/units/domain/entities/unit_of_measure.dart';
import 'package:field_management_app/features/units/domain/repositories/units_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final unitsRepositoryProvider = Provider<UnitsRepository>((ref) {
  return UnitsRepositoryImpl(ref.watch(unitsRemoteDataSourceProvider));
});

class UnitsRepositoryImpl implements UnitsRepository {
  const UnitsRepositoryImpl(this._remoteDataSource);

  final UnitsRemoteDataSource _remoteDataSource;

  @override
  Future<UnitOfMeasure> create(CreateUnitInput input) async {
    final dto = await _remoteDataSource.create(input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<UnitOfMeasure> update(UpdateUnitInput input) async {
    final dto = await _remoteDataSource.update(input);
    return dto.toEntity();
  }

  @override
  Future<void> delete(String id) async {
    await _remoteDataSource.delete(id);
  }

  @override
  Future<List<UnitOfMeasure>> list({bool? active, String? search}) async {
    final items = await _remoteDataSource.list(active: active, search: search);
    return items.map((item) => item.toEntity()).toList();
  }

  @override
  Future<PaginatedResult<UnitOfMeasure>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    String? search,
  }) async {
    final result = await _remoteDataSource.listPage(
      page: page,
      limit: limit,
      active: active,
      search: search,
    );
    return result.map((item) => item.toEntity());
  }
}
