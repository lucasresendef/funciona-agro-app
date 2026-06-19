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
      ),
      InventoryBalance(
        metadata: const AuditMetadata(id: 'b2', active: true),
        farmId: 'farm-1',
        inventoryLocationId: 'loc-1',
        productId: 'prod-click',
        quantity: 8,
        averageUnitCost: 3,
      ),
    ];

    final productNameById = {'prod-allora': 'ALLORA', 'prod-click': 'CLICK'};

    test('retorna todos os itens quando a busca esta vazia', () {
      final filtered = filterInventoryBalancesBySearch(
        items,
        productNameById: productNameById,
        search: '',
      );

      expect(filtered, hasLength(2));
    });

    test('filtra pelo nome exibido do produto', () {
      final filtered = filterInventoryBalancesBySearch(
        items,
        productNameById: productNameById,
        search: 'all',
      );

      expect(filtered, hasLength(1));
      expect(filtered.first.productId, 'prod-allora');
    });

    test('faz fallback para productId quando nome nao esta disponivel', () {
      final filtered = filterInventoryBalancesBySearch(
        items,
        productNameById: const {},
        search: 'click',
      );

      expect(filtered, hasLength(1));
      expect(filtered.first.productId, 'prod-click');
    });
  });
}
