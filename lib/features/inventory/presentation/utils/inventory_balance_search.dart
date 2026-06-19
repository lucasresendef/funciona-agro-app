import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';

List<InventoryBalance> filterInventoryBalancesBySearch(
  List<InventoryBalance> items, {
  String? search,
  String? inventoryLocationId,
  String? productId,
}) {
  final normalizedSearch = search?.trim().toLowerCase();
  return items.where((balance) {
    if (inventoryLocationId != null &&
        balance.inventoryLocationId != inventoryLocationId) {
      return false;
    }

    if (productId != null && balance.productId != productId) {
      return false;
    }

    if (normalizedSearch == null || normalizedSearch.isEmpty) {
      return true;
    }

    final productName = balance.product?.name.toLowerCase() ?? '';
    final balanceProductId = balance.productId.toLowerCase();
    final productCode = balance.product?.code?.toLowerCase() ?? '';
    final locationName = balance.inventoryLocation?.name.toLowerCase() ?? '';
    return productName.contains(normalizedSearch) ||
        balanceProductId.contains(normalizedSearch) ||
        productCode.contains(normalizedSearch) ||
        locationName.contains(normalizedSearch);
  }).toList();
}
