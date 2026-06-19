import 'package:field_management_app/core/models/audit_metadata.dart';
import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';
import 'package:field_management_app/features/field_operations/presentation/utils/field_operation_search.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('filterFieldOperationsBySearch', () {
    final items = [
      FieldOperation(
        metadata: const AuditMetadata(id: 'op-1', active: true),
        sequenceNumber: 5,
        farmId: 'farm-1',
        operationDate: DateTime(2026, 6, 19),
        status: FieldOperationStatus.finished,
        description: 'Aplicacao de defensivo',
        farm: const FieldOperationFarmRef(id: 'farm-1', name: 'Fazenda Norte'),
        inventoryLocation: const FieldOperationInventoryLocationRef(
          id: 'loc-1',
          name: 'Galpao Central',
        ),
        fields: const [
          FieldOperationFieldRef(fieldId: 'field-501', name: 'Talhao N1'),
        ],
        items: const [
          FieldOperationItem(
            productId: 'prod-500',
            quantitySent: 20,
            unitCostAtOperation: 10,
            product: FieldOperationProductRef(
              id: 'prod-500',
              name: 'GLYPHOTAL',
              code: 'PRD-0001',
            ),
          ),
        ],
      ),
      FieldOperation(
        metadata: const AuditMetadata(id: 'op-2', active: true),
        sequenceNumber: 19,
        farmId: 'farm-2',
        operationDate: DateTime(2026, 6, 20),
        status: FieldOperationStatus.open,
        description: 'Adubacao de cobertura',
        fields: const [
          FieldOperationFieldRef(fieldId: 'field-205', name: 'Talhao S2'),
        ],
        items: const [
          FieldOperationItem(
            productId: 'prod-905',
            quantitySent: 12,
            unitCostAtOperation: 7,
          ),
        ],
      ),
    ];

    test('retorna todos os itens quando a busca esta vazia', () {
      final filtered = filterFieldOperationsBySearch(items, search: '');

      expect(filtered, hasLength(2));
    });

    test('filtra pela descricao da operacao', () {
      final filtered = filterFieldOperationsBySearch(
        items,
        search: 'defensivo',
      );

      expect(filtered, hasLength(1));
      expect(filtered.first.metadata.id, 'op-1');
    });

    test('filtra pelo nome exibido da operacao', () {
      final filtered = filterFieldOperationsBySearch(items, search: '#5');

      expect(filtered, hasLength(1));
      expect(filtered.first.metadata.id, 'op-1');
    });

    test('nao usa ids tecnicos internos para casar busca numerica', () {
      final filtered = filterFieldOperationsBySearch(items, search: '5');

      expect(filtered, hasLength(1));
      expect(filtered.first.metadata.id, 'op-1');
    });

    test('filtra pelo nome do talhao', () {
      final filtered = filterFieldOperationsBySearch(items, search: 's2');

      expect(filtered, hasLength(1));
      expect(filtered.first.metadata.id, 'op-2');
    });

    test('filtra pelo nome ou codigo do produto', () {
      expect(
        filterFieldOperationsBySearch(items, search: 'glyph'),
        hasLength(1),
      );
      expect(
        filterFieldOperationsBySearch(items, search: 'prd-0001'),
        hasLength(1),
      );
    });
  });
}
