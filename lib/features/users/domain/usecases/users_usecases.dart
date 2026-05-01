import 'package:field_management_app/features/users/domain/entities/app_user.dart';
import 'package:field_management_app/features/users/domain/repositories/users_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

class GetUsersUseCase {
  const GetUsersUseCase(this._repository);

  final UsersRepository _repository;

  Future<List<AppUser>> call({bool? active, bool? isAdmin, String? search}) =>
      _repository.list(active: active, isAdmin: isAdmin, search: search);

  Future<PaginatedResult<AppUser>> page({
    required int page,
    int limit = 20,
    bool? active,
    bool? isAdmin,
    String? search,
  }) => _repository.listPage(
    page: page,
    limit: limit,
    active: active,
    isAdmin: isAdmin,
    search: search,
  );
}

class CreateUserUseCase {
  const CreateUserUseCase(this._repository);

  final UsersRepository _repository;

  Future<AppUser> call(CreateAppUserInput input) => _repository.create(input);
}

class UpdateUserUseCase {
  const UpdateUserUseCase(this._repository);

  final UsersRepository _repository;

  Future<AppUser> call(String id, UpdateAppUserInput input) =>
      _repository.update(id, input);
}
