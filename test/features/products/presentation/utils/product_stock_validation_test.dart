import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:field_management_app/features/products/presentation/utils/product_stock_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('validateProductStockByLocation', () {
    test('bloqueia quando não há nenhum local', () {
      final error = validateProductStockByLocation(const []);

      expect(error, 'Adicione pelo menos um local de estoque.');
    });

    test('bloqueia local duplicado no mesmo produto', () {
      final error = validateProductStockByLocation([
        const CreateProductStockByLocationInput(
          farmId: 'farm-1',
          inventoryLocationId: 'loc-1',
          quantity: 10,
          averageUnitCost: 2,
        ),
        const CreateProductStockByLocationInput(
          farmId: 'farm-1',
          inventoryLocationId: 'loc-1',
          quantity: 5,
          averageUnitCost: 2.5,
        ),
      ]);

      expect(error, 'Não é permitido repetir o mesmo local de estoque.');
    });

    test('aceita stockByLocation válido', () {
      final error = validateProductStockByLocation([
        const CreateProductStockByLocationInput(
          farmId: 'farm-1',
          inventoryLocationId: 'loc-1',
          quantity: 10,
          averageUnitCost: 2,
        ),
        const CreateProductStockByLocationInput(
          farmId: 'farm-1',
          inventoryLocationId: 'loc-2',
          quantity: 5,
          averageUnitCost: 3,
        ),
      ]);

      expect(error, isNull);
    });
  });

  test('soma totalStockQuantity corretamente', () {
    final total = sumProductStockByLocation([
      const CreateProductStockByLocationInput(
        farmId: 'farm-1',
        inventoryLocationId: 'loc-1',
        quantity: 1200,
        averageUnitCost: 2.55,
      ),
      const CreateProductStockByLocationInput(
        farmId: 'farm-2',
        inventoryLocationId: 'loc-3',
        quantity: 300.5,
        averageUnitCost: 3.1,
      ),
    ]);

    expect(total, 1500.5);
  });
}
