import 'package:field_management_app/features/field_operations/presentation/utils/operation_stock_math.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('operation stock math', () {
    test('criação consome estoque no local escolhido', () {
      final consumed = computeQuantityConsumed(
        quantitySent: 10,
        quantityReturned: 0,
      );

      expect(consumed, 10);
    });

    test('devolutiva na criação reduz o consumo', () {
      final consumed = computeQuantityConsumed(
        quantitySent: 10,
        quantityReturned: 3,
      );

      expect(consumed, 7);
    });

    test('patch com aumento de devolutiva gera delta positivo', () {
      final delta = returnedDelta(previousReturned: 1, newReturned: 4);

      expect(delta, 3);
    });

    test('patch com redução de devolutiva gera delta negativo', () {
      final delta = returnedDelta(previousReturned: 4, newReturned: 1);

      expect(delta, -3);
    });

    test('valida erro de saldo insuficiente', () {
      final sufficient = hasSufficientStock(quantitySent: 12, available: 8);

      expect(sufficient, isFalse);
    });

    test(
      'permite consumir o saldo exibido mesmo com arredondamento interno',
      () {
        final sufficient = hasSufficientStock(
          quantitySent: 3,
          available: 2.995,
        );

        expect(sufficient, isTrue);
      },
    );

    test('bloqueia quantidade acima do saldo após arredondamento', () {
      final sufficient = hasSufficientStock(quantitySent: 3.01, available: 3);

      expect(sufficient, isFalse);
    });

    test('nao desconta o proprio item do saldo disponivel', () {
      final adjusted = availableByProductForItem(
        baseAvailableByProduct: const {'prod-1': 363},
        reservations: const [(productId: 'prod-1', quantity: 363)],
        currentIndex: 0,
      );

      expect(adjusted['prod-1'], 363);
    });

    test('desconta apenas os outros itens do mesmo produto', () {
      final adjusted = availableByProductForItem(
        baseAvailableByProduct: const {'prod-1': 363},
        reservations: const [
          (productId: 'prod-1', quantity: 100),
          (productId: 'prod-1', quantity: 50),
        ],
        currentIndex: 1,
      );

      expect(adjusted['prod-1'], 263);
    });
  });
}
