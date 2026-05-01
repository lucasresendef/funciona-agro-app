import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/features/permissions/data/dtos/farm_permission_dtos.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final permissionsRemoteDataSourceProvider =
    Provider<PermissionsRemoteDataSource>((ref) {
      return PermissionsRemoteDataSource(ref.watch(apiClientProvider));
    });

class PermissionsRemoteDataSource {
  const PermissionsRemoteDataSource(this._apiClient);

  final ApiClient _apiClient;

  Future<PaginatedResult<FarmUserPermissionDto>> listPage({
    required int page,
    int limit = 20,
    String? farmId,
    String? keycloakUserId,
    FarmUserRole? role,
    bool? active,
  }) async {
    final payload = await fetchPaginatedMaps(
      apiClient: _apiClient,
      path: '/farm-permissions',
      page: page,
      limit: limit,
      queryParameters: {
        'farmId': farmId,
        'keycloakUserId': keycloakUserId,
        'role': role?.name.toUpperCase(),
        'active': active,
      },
    );
    return payload.map(FarmUserPermissionDto.fromJson);
  }

  Future<List<FarmUserPermissionDto>> list({
    String? farmId,
    String? keycloakUserId,
    FarmUserRole? role,
    bool? active,
  }) async {
    final payload = await fetchAllPaginatedMaps(
      apiClient: _apiClient,
      path: '/farm-permissions',
      queryParameters: {
        'farmId': farmId,
        'keycloakUserId': keycloakUserId,
        'role': role?.name.toUpperCase(),
        'active': active,
      },
    );

    return payload.map(FarmUserPermissionDto.fromJson).toList();
  }

  Future<FarmUserPermissionDto> create(
    CreateFarmPermissionRequestDto input,
  ) async {
    final payload =
        await _apiClient.post('/farm-permissions', data: input.toJson())
            as Map<String, dynamic>;

    return FarmUserPermissionDto.fromJson(payload);
  }

  Future<FarmUserPermissionDto> update(
    String id,
    UpdateFarmPermissionRequestDto input,
  ) async {
    final payload =
        await _apiClient.patch('/farm-permissions/$id', data: input.toJson())
            as Map<String, dynamic>;

    return FarmUserPermissionDto.fromJson(payload);
  }
}
