import 'package:field_management_app/features/users/domain/entities/app_user.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

abstract interface class UsersRepository {
  Future<List<AppUser>> list({bool? active, bool? isAdmin, String? search});
  Future<PaginatedResult<AppUser>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    bool? isAdmin,
    String? search,
  });

  Future<AppUser> create(CreateAppUserInput input);

  Future<AppUser> update(String id, UpdateAppUserInput input);
}
