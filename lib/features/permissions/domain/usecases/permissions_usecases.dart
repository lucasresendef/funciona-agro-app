import 'package:field_management_app/features/permissions/domain/entities/farm_user_permission.dart';
import 'package:field_management_app/features/permissions/domain/repositories/permissions_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/shared/models/app_enums.dart';

class GetPermissionsUseCase {
  const GetPermissionsUseCase(this._repository);

  final PermissionsRepository _repository;

  Future<List<FarmUserPermission>> call({
    String? farmId,
    String? keycloakUserId,
    FarmUserRole? role,
    bool? active,
  }) => _repository.list(
    farmId: farmId,
    keycloakUserId: keycloakUserId,
    role: role,
    active: active,
  );

  Future<PaginatedResult<FarmUserPermission>> page({
    required int page,
    int limit = 20,
    String? farmId,
    String? keycloakUserId,
    FarmUserRole? role,
    bool? active,
  }) => _repository.listPage(
    page: page,
    limit: limit,
    farmId: farmId,
    keycloakUserId: keycloakUserId,
    role: role,
    active: active,
  );
}

class CreatePermissionUseCase {
  const CreatePermissionUseCase(this._repository);

  final PermissionsRepository _repository;

  Future<FarmUserPermission> call(CreateFarmPermissionInput input) =>
      _repository.create(input);
}

class UpdatePermissionUseCase {
  const UpdatePermissionUseCase(this._repository);

  final PermissionsRepository _repository;

  Future<FarmUserPermission> call(String id, UpdateFarmPermissionInput input) =>
      _repository.update(id, input);
}
