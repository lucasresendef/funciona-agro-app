import 'package:field_management_app/features/permissions/data/datasources/permissions_remote_datasource.dart';
import 'package:field_management_app/features/permissions/data/mappers/farm_permission_mappers.dart';
import 'package:field_management_app/features/permissions/domain/entities/farm_user_permission.dart';
import 'package:field_management_app/features/permissions/domain/repositories/permissions_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final permissionsRepositoryProvider = Provider<PermissionsRepository>((ref) {
  return PermissionsRepositoryImpl(
    ref.watch(permissionsRemoteDataSourceProvider),
  );
});

class PermissionsRepositoryImpl implements PermissionsRepository {
  const PermissionsRepositoryImpl(this._remoteDataSource);

  final PermissionsRemoteDataSource _remoteDataSource;

  @override
  Future<FarmUserPermission> create(CreateFarmPermissionInput input) async {
    final dto = await _remoteDataSource.create(input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<FarmUserPermission> update(
    String id,
    UpdateFarmPermissionInput input,
  ) async {
    final dto = await _remoteDataSource.update(id, input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<List<FarmUserPermission>> list({
    String? farmId,
    String? keycloakUserId,
    FarmUserRole? role,
    bool? active,
  }) async {
    final items = await _remoteDataSource.list(
      farmId: farmId,
      keycloakUserId: keycloakUserId,
      role: role,
      active: active,
    );

    return items.map((item) => item.toEntity()).toList();
  }

  @override
  Future<PaginatedResult<FarmUserPermission>> listPage({
    required int page,
    int limit = 20,
    String? farmId,
    String? keycloakUserId,
    FarmUserRole? role,
    bool? active,
  }) async {
    final result = await _remoteDataSource.listPage(
      page: page,
      limit: limit,
      farmId: farmId,
      keycloakUserId: keycloakUserId,
      role: role,
      active: active,
    );

    return result.map((item) => item.toEntity());
  }
}
