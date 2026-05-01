import 'package:field_management_app/features/products/data/datasources/products_remote_datasource.dart';
import 'package:field_management_app/features/products/data/mappers/product_mappers.dart';
import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:field_management_app/features/products/domain/repositories/products_repository.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productsRepositoryProvider = Provider<ProductsRepository>((ref) {
  return ProductsRepositoryImpl(ref.watch(productsRemoteDataSourceProvider));
});

class ProductsRepositoryImpl implements ProductsRepository {
  const ProductsRepositoryImpl(this._remoteDataSource);

  final ProductsRemoteDataSource _remoteDataSource;

  @override
  Future<Product> create(CreateProductInput input) async {
    final dto = await _remoteDataSource.create(input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<List<Product>> list({
    bool? active,
    String? category,
    String? search,
  }) async {
    final items = await _remoteDataSource.list(
      active: active,
      category: category,
      search: search,
    );

    return items.map((item) => item.toEntity()).toList();
  }

  @override
  Future<PaginatedResult<Product>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    String? category,
    String? search,
  }) async {
    final result = await _remoteDataSource.listPage(
      page: page,
      limit: limit,
      active: active,
      category: category,
      search: search,
    );
    return result.map((item) => item.toEntity());
  }

  @override
  Future<Product> update(String id, UpdateProductInput input) async {
    final dto = await _remoteDataSource.update(id, input.toRequest());
    return dto.toEntity();
  }

  @override
  Future<void> delete(String id) async {
    await _remoteDataSource.delete(id);
  }
}
