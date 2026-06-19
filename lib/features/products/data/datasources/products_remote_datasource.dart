import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/features/products/data/dtos/product_dtos.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productsRemoteDataSourceProvider = Provider<ProductsRemoteDataSource>((
  ref,
) {
  return ProductsRemoteDataSource(ref.watch(apiClientProvider));
});

class ProductsRemoteDataSource {
  const ProductsRemoteDataSource(this._apiClient);

  final ApiClient _apiClient;

  Future<PaginatedResult<ProductDto>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    String? category,
    String? search,
  }) async {
    final payload = await fetchPaginatedMaps(
      apiClient: _apiClient,
      path: '/products',
      page: page,
      limit: limit,
      queryParameters: {
        'active': active,
        'category': category,
        'search': search,
      },
    );
    debugPrint(
      '[ProductsRemoteDataSource.listPage] GET /products '
      'query={page:$page,limit:$limit,active:$active,category:$category,search:$search} '
      'responseMeta={page:${payload.page},limit:${payload.limit},total:${payload.total},items:${payload.data.length},hasNext:${payload.hasNextPage}}',
    );
    return payload.map(ProductDto.fromJson);
  }

  Future<List<ProductDto>> list({
    bool? active,
    String? category,
    String? search,
  }) async {
    final payload = await fetchAllPaginatedMaps(
      apiClient: _apiClient,
      path: '/products',
      queryParameters: {
        'active': active,
        'category': category,
        'search': search,
      },
    );
    debugPrint(
      '[ProductsRemoteDataSource.list] GET /products '
      'query={active:$active,category:$category,search:$search} '
      'responseItems=${payload.length}',
    );

    return payload.map(ProductDto.fromJson).toList();
  }

  Future<ProductDto> create(CreateProductRequestDto input) async {
    final payload =
        await _apiClient.post('/products', data: input.toJson())
            as Map<String, dynamic>;

    return ProductDto.fromJson(payload);
  }

  Future<ProductDto> update(String id, UpdateProductRequestDto input) async {
    final payload =
        await _apiClient.patch('/products/$id', data: input.toJson())
            as Map<String, dynamic>;

    return ProductDto.fromJson(payload);
  }

  Future<void> delete(String id) async {
    await _apiClient.delete('/products/$id');
  }
}
