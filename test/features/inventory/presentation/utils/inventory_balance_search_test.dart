import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';
import 'package:field_management_app/features/inventory/presentation/utils/inventory_balance_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('filterInventoryBalancesBySearch', () {
    final items = [
      InventoryBalance(
        metadata: const AuditMetadata(id: 'b1', active: true),
        farmId: 'farm-1',
        inventoryLocationId: 'loc-1',
        productId: 'prod-allora',
        quantity: 10,
        averageUnitCost: 5,
        product: const InventoryBalanceProductRef(
          id: 'prod-allora',
          name: 'ALLORA',
        ),
        inventoryLocation: const InventoryBalanceLocationRef(
          id: 'loc-1',
          name: 'Deposito Leste',
        ),
      ),
      InventoryBalance(
        metadata: const AuditMetadata(id: 'b2', active: true),
        farmId: 'farm-1',
        inventoryLocationId: 'loc-1',
        productId: 'prod-click',
        quantity: 8,
        averageUnitCost: 3,
        product: const InventoryBalanceProductRef(
          id: 'prod-click',
          name: 'CLICK',
          code: 'PRD-002',
        ),
      ),
      InventoryBalance(
        metadata: const AuditMetadata(id: 'b3', active: true),
        farmId: 'farm-1',
        inventoryLocationId: 'loc-2',
        productId: 'prod-triclon',
        quantity: 5,
        averageUnitCost: 4,
        product: const InventoryBalanceProductRef(
          id: 'prod-triclon',
          name: 'TRICLON 280',
        ),
        inventoryLocation: const InventoryBalanceLocationRef(
          id: 'loc-2',
          name: 'Galpao Oeste',
        ),
      ),
    ];

    test('retorna todos os itens quando a busca esta vazia', () {
      final filtered = filterInventoryBalancesBySearch(items, search: '');

      expect(filtered, hasLength(3));
    });

    test('filtra pelo nome exibido do produto', () {
      final filtered = filterInventoryBalancesBySearch(items, search: 'all');

      expect(filtered, hasLength(1));
      expect(filtered.first.productId, 'prod-allora');
    });

    test('faz fallback para productId quando nome nao esta disponivel', () {
      final itemsWithoutProduct = items
          .map((item) => item.copyWith(product: null))
          .toList();

      final filtered = filterInventoryBalancesBySearch(
        itemsWithoutProduct,
        search: 'click',
      );

      expect(filtered, hasLength(1));
      expect(filtered.first.productId, 'prod-click');
    });

    test('filtra por nome do local', () {
      final filtered = filterInventoryBalancesBySearch(items, search: 'leste');

      expect(filtered, hasLength(1));
      expect(filtered.first.productId, 'prod-allora');
    });

    test('filtra por local selecionado', () {
      final filtered = filterInventoryBalancesBySearch(
        items,
        inventoryLocationId: 'loc-1',
        productId: 'prod-click',
      );

      expect(filtered, hasLength(1));
      expect(filtered.first.productId, 'prod-click');
    });

    test('combina busca textual com filtros de local e produto', () {
      final filtered = filterInventoryBalancesBySearch(
        items,
        search: 'prd-002',
        inventoryLocationId: 'loc-1',
        productId: 'prod-click',
      );

      expect(filtered, hasLength(1));
      expect(filtered.first.productId, 'prod-click');
    });

    test('filtra exclusivamente pelo local selecionado', () {
      final filtered = filterInventoryBalancesBySearch(
        items,
        inventoryLocationId: 'loc-2',
      );

      expect(filtered, hasLength(1));
      expect(filtered.first.productId, 'prod-triclon');
    });
  });
}
