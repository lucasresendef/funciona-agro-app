import 'package:field_management_app/features/field_operations/data/datasources/field_operations_remote_datasource.dart';
import 'package:field_management_app/features/field_operations/data/mappers/field_operation_mappers.dart';
import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';
import 'package:field_management_app/features/field_operations/domain/repositories/field_operations_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fieldOperationsRepositoryProvider = Provider<FieldOperationsRepository>((
  ref,
) {
  return FieldOperationsRepositoryImpl(
    ref.watch(fieldOperationsRemoteDataSourceProvider),
  );
});

class FieldOperationsRepositoryImpl implements FieldOperationsRepository {
  const FieldOperationsRepositoryImpl(this._remoteDataSource);

  final FieldOperationsRemoteDataSource _remoteDataSource;

  @override
  Future<FieldOperation> create(
    CreateFieldOperationInput input, {
    required String inventoryLocationId,
  }) async {
    final dto = await _remoteDataSource.create(
      input.toRequest(),
      inventoryLocationId: inventoryLocationId,
    );
    return dto.toEntity();
  }

  @override
  Future<FieldOperation> update(
    String id,
    UpdateFieldOperationInput input,
  ) async {
    final dto = await _remoteDataSource.update(id, input.toPatchRequest());
    return dto.toEntity();
  }

  @override
  Future<List<FieldOperation>> list({
    String? farmId,
    String? fieldId,
    FieldOperationStatus? status,
    bool? active,
  }) async {
    final items = await _remoteDataSource.list(
      farmId: farmId,
      fieldId: fieldId,
      status: status,
      active: active,
    );

    return items.map((item) => item.toEntity()).toList();
  }

  @override
  Future<PaginatedResult<FieldOperation>> listPage({
    required int page,
    int limit = 20,
    String? farmId,
    String? fieldId,
    FieldOperationStatus? status,
    bool? active,
  }) async {
    final result = await _remoteDataSource.listPage(
      page: page,
      limit: limit,
      farmId: farmId,
      fieldId: fieldId,
      status: status,
      active: active,
    );

    return result.map((item) => item.toEntity());
  }
}
