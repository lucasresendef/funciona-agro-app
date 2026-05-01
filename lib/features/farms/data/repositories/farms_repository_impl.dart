import 'package:field_management_app/features/farms/data/datasources/farms_remote_datasource.dart';
import 'package:field_management_app/features/farms/data/mappers/farm_mappers.dart';
import 'package:field_management_app/features/farms/domain/entities/farm.dart';
import 'package:field_management_app/features/farms/domain/repositories/farms_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final farmsRepositoryProvider = Provider<FarmsRepository>((ref) {
  return FarmsRepositoryImpl(ref.watch(farmsRemoteDataSourceProvider));
});

class FarmsRepositoryImpl implements FarmsRepository {
  const FarmsRepositoryImpl(this._remoteDataSource);

  final FarmsRemoteDataSource _remoteDataSource;

  @override
  Future<Farm> create(CreateFarmInput input) async {
    final dto = await _remoteDataSource.create(input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<List<Farm>> list({bool? active, String? search}) async {
    final items = await _remoteDataSource.list(active: active, search: search);
    return items.map((item) => item.toEntity()).toList();
  }

  @override
  Future<PaginatedResult<Farm>> listPage({
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

  @override
  Future<Farm> update(String id, UpdateFarmInput input) async {
    final dto = await _remoteDataSource.update(id, input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<void> delete(String id) async {
    await _remoteDataSource.delete(id);
  }
}
