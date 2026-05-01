import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:field_management_app/features/products/domain/repositories/products_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

class GetProductsUseCase {
  const GetProductsUseCase(this._repository);

  final ProductsRepository _repository;

  Future<List<Product>> call({
    bool? active,
    String? category,
    String? search,
  }) => _repository.list(active: active, category: category, search: search);

  Future<PaginatedResult<Product>> page({
    required int page,
    int limit = 20,
    bool? active,
    String? category,
    String? search,
  }) => _repository.listPage(
    page: page,
    limit: limit,
    active: active,
    category: category,
    search: search,
  );
}

class CreateProductUseCase {
  const CreateProductUseCase(this._repository);

  final ProductsRepository _repository;

  Future<Product> call(CreateProductInput input) => _repository.create(input);
}

class UpdateProductUseCase {
  const UpdateProductUseCase(this._repository);

  final ProductsRepository _repository;

  Future<Product> call(String id, UpdateProductInput input) =>
      _repository.update(id, input);
}

class DeleteProductUseCase {
  const DeleteProductUseCase(this._repository);

  final ProductsRepository _repository;

  Future<void> call(String id) => _repository.delete(id);
}
