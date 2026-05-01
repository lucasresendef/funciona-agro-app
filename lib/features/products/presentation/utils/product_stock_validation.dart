import 'package:field_management_app/features/products/domain/entities/product.dart';

String? validateProductStockByLocation(
  List<CreateProductStockByLocationInput> items,
) {
  if (items.isEmpty) {
    return 'Adicione pelo menos um local de estoque.';
  }

  final seenLocations = <String>{};
  for (final item in items) {
    if (!seenLocations.add(item.inventoryLocationId)) {
      return 'Não é permitido repetir o mesmo local de estoque.';
    }
  }

  return null;
}

double sumProductStockByLocation(
  List<CreateProductStockByLocationInput> items,
) {
  return items.fold<double>(0, (sum, item) => sum + item.quantity);
}
