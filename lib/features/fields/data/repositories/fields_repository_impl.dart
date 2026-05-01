import 'package:field_management_app/features/fields/data/datasources/fields_remote_datasource.dart';
import 'package:field_management_app/features/fields/data/mappers/field_mappers.dart';
import 'package:field_management_app/features/fields/domain/entities/field.dart';
import 'package:field_management_app/features/fields/domain/repositories/fields_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fieldsRepositoryProvider = Provider<FieldsRepository>((ref) {
  return FieldsRepositoryImpl(ref.watch(fieldsRemoteDataSourceProvider));
});

class FieldsRepositoryImpl implements FieldsRepository {
  const FieldsRepositoryImpl(this._remoteDataSource);

  final FieldsRemoteDataSource _remoteDataSource;

  @override
  Future<Field> create(CreateFieldInput input) async {
    final dto = await _remoteDataSource.create(input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<List<Field>> list({
    String? farmId,
    bool? active,
    String? search,
  }) async {
    final items = await _remoteDataSource.list(
      farmId: farmId,
      active: active,
      search: search,
    );

    return items.map((item) => item.toEntity()).toList();
  }

  @override
  Future<PaginatedResult<Field>> listPage({
    required int page,
    int limit = 20,
    String? farmId,
    bool? active,
    String? search,
  }) async {
    final result = await _remoteDataSource.listPage(
      page: page,
      limit: limit,
      farmId: farmId,
      active: active,
      search: search,
    );

    return result.map((item) => item.toEntity());
  }

  @override
  Future<Field> update(String id, UpdateFieldInput input) async {
    final dto = await _remoteDataSource.update(id, input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<void> delete(String id) async {
    await _remoteDataSource.delete(id);
  }
}
