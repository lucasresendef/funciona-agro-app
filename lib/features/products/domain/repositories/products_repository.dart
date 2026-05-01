import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';

abstract interface class ProductsRepository {
  Future<List<Product>> list({bool? active, String? category, String? search});
  Future<PaginatedResult<Product>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    String? category,
    String? search,
  });

  Future<Product> create(CreateProductInput input);

  Future<Product> update(String id, UpdateProductInput input);

  Future<void> delete(String id);
}
