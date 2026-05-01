import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/core/network/paginated_list_helper.dart';
import 'package:field_management_app/features/products/data/repositories/products_repository_impl.dart';
import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:field_management_app/features/products/domain/repositories/products_repository.dart';
import 'package:field_management_app/features/products/presentation/pages/products_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeProductsRepository implements ProductsRepository {
  _FakeProductsRepository(this._items);

  final List<Product> _items;

  @override
  Future<Product> create(CreateProductInput input) async => _items.first;

  @override
  Future<void> delete(String id) async {}

  @override
  Future<List<Product>> list({
    bool? active,
    String? category,
    String? search,
  }) async {
    return _items;
  }

  @override
  Future<PaginatedResult<Product>> listPage({
    required int page,
    int limit = 20,
    bool? active,
    String? category,
    String? search,
  }) async {
    return PaginatedResult<Product>(
      data: _items,
      page: page,
      limit: limit,
      total: _items.length,
      totalPages: 1,
    );
  }

  @override
  Future<Product> update(String id, UpdateProductInput input) async =>
      _items.first;
}

void main() {
  testWidgets('renderiza estoque total e lista por local no detalhe', (
    tester,
  ) async {
    final product = Product(
      metadata: const AuditMetadata(id: 'prod-1', active: true),
      name: 'Ureia Perolada',
      code: 'PROD-UREIA-002',
      category: 'FERTILIZER',
      unitOfMeasureId: 'unit-1',
      stockByLocation: const [
        ProductStockByLocation(
          farmId: 'farm-1',
          farmName: 'Fazenda A',
          inventoryLocationId: 'loc-1',
          inventoryLocationName: 'Galpão Central',
          quantity: 1200,
          averageUnitCost: 2.55,
        ),
      ],
      totalStockQuantity: 1200,
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          productsRepositoryProvider.overrideWithValue(
            _FakeProductsRepository([product]),
          ),
        ],
        child: const MaterialApp(home: Scaffold(body: ProductsPage())),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Ureia Perolada'), findsOneWidget);
    expect(find.text('Estoque total: 1200.00'), findsOneWidget);

    await tester.tap(find.text('Ureia Perolada'));
    await tester.pumpAndSettle();

    expect(find.text('Estoque por local'), findsOneWidget);
    expect(find.textContaining('Fazenda A • Galpão Central'), findsOneWidget);
    expect(find.text('Qtd: 1200.00'), findsOneWidget);
    expect(find.textContaining('Custo médio:'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
