import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';

List<FieldOperation> filterFieldOperationsBySearch(
  List<FieldOperation> items, {
  String? search,
}) {
  final normalizedSearch = search?.trim().toLowerCase();
  if (normalizedSearch == null || normalizedSearch.isEmpty) {
    return items;
  }

  return items.where((operation) {
    final operationLabel = operation.sequenceNumber == null
        ? 'operação'
        : 'operação #${operation.sequenceNumber}';
    final fieldNames = operation.fields
        .map((field) => field.name?.toLowerCase() ?? '')
        .join(' ');
    final productNames = operation.items
        .map((item) => item.product?.name.toLowerCase() ?? '')
        .join(' ');
    final productCodes = operation.items
        .map((item) => item.product?.code?.toLowerCase() ?? '')
        .join(' ');
    final inventoryLocationName =
        operation.inventoryLocation?.name.toLowerCase() ?? '';
    final farmName = operation.farm?.name.toLowerCase() ?? '';
    final description = operation.description?.toLowerCase() ?? '';
    final sequenceNumber = operation.sequenceNumber?.toString() ?? '';
    final status = operation.status.name.toLowerCase();

    return operationLabel.contains(normalizedSearch) ||
        description.contains(normalizedSearch) ||
        sequenceNumber.contains(normalizedSearch) ||
        status.contains(normalizedSearch) ||
        fieldNames.contains(normalizedSearch) ||
        productNames.contains(normalizedSearch) ||
        productCodes.contains(normalizedSearch) ||
        inventoryLocationName.contains(normalizedSearch) ||
        farmName.contains(normalizedSearch);
  }).toList();
}
