import 'package:field_management_app/features/field_operations/data/mappers/field_operation_mappers.dart';
import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('PATCH envia apenas campos alterados na operação', () {
    final payload = UpdateFieldOperationInput(
      id: 'op-1',
      status: FieldOperationStatus.finished,
      finishedAt: DateTime.parse('2026-04-16T17:03:55.957Z'),
      items: [
        const UpdateFieldOperationItemInput(
          id: 'item-1',
          productId: 'prod-1',
          quantitySent: 2,
          quantityReturned: 1,
          quantityConsumed: 1,
          unitCostAtOperation: 2,
          notes: 'devolução parcial',
        ),
      ],
    ).toPatchRequest();

    expect(payload['status'], 'FINISHED');
    expect(payload.containsKey('operationDate'), isFalse);
    expect(payload.containsKey('description'), isFalse);
    expect(payload.containsKey('startedAt'), isFalse);
    expect(payload['finishedAt'], '2026-04-16T17:03:55.957Z');

    final items = payload['items'] as List<dynamic>;
    final firstItem = items.first as Map<String, dynamic>;
    expect(firstItem['id'], 'item-1');
    expect(firstItem['quantityReturned'], 1);
    expect(firstItem['quantityConsumed'], 1);
    expect(firstItem['notes'], 'devolução parcial');
    expect(firstItem.containsKey('productId'), isFalse);
    expect(firstItem.containsKey('quantitySent'), isFalse);
    expect(firstItem.containsKey('unitCostAtOperation'), isFalse);
  });

  test('item patch envia notes como null quando não informado', () {
    final payload = const UpdateFieldOperationItemInput(
      id: 'item-2',
      productId: 'prod-2',
      quantitySent: 5,
      quantityReturned: 0,
      quantityConsumed: 5,
      unitCostAtOperation: 3,
      notes: null,
    ).toPatchRequest();

    expect(payload['id'], 'item-2');
    expect(payload['notes'], isNull);
    expect(payload.containsKey('quantityReturned'), isTrue);
    expect(payload.containsKey('quantityConsumed'), isTrue);
    expect(payload.containsKey('productId'), isFalse);
  });
}
