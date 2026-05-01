import 'package:field_management_app/features/permissions/domain/entities/farm_user_permission.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/shared/models/app_enums.dart';

abstract interface class PermissionsRepository {
  Future<List<FarmUserPermission>> list({
    String? farmId,
    String? keycloakUserId,
    FarmUserRole? role,
    bool? active,
  });
  Future<PaginatedResult<FarmUserPermission>> listPage({
    required int page,
    int limit = 20,
    String? farmId,
    String? keycloakUserId,
    FarmUserRole? role,
    bool? active,
  });

  Future<FarmUserPermission> create(CreateFarmPermissionInput input);

  Future<FarmUserPermission> update(String id, UpdateFarmPermissionInput input);
}
