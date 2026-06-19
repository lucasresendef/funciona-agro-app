import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';

List<InventoryBalance> filterInventoryBalancesBySearch(
  List<InventoryBalance> items, {
  required Map<String, String> productNameById,
  String? search,
}) {
  final normalizedSearch = search?.trim().toLowerCase();
  if (normalizedSearch == null || normalizedSearch.isEmpty) {
    return items;
  }

  return items.where((balance) {
    final productName = productNameById[balance.productId]?.toLowerCase() ?? '';
    final productId = balance.productId.toLowerCase();
    return productName.contains(normalizedSearch) ||
        productId.contains(normalizedSearch);
  }).toList();
}
