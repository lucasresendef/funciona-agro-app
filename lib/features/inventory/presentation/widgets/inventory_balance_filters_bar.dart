import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:field_management_app/features/farms/domain/entities/farm.dart';
import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';
import 'package:field_management_app/features/inventory/presentation/controllers/inventory_controller.dart';
import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InventoryBalanceFiltersBar extends StatelessWidget {
  const InventoryBalanceFiltersBar({
    required this.farmsAsync,
    required this.locationsAsync,
    required this.productsAsync,
    required this.filter,
    required this.selectedFarmId,
    required this.onFarmChanged,
    required this.onLocationChanged,
    required this.onProductChanged,
    super.key,
  });

  final AsyncValue<List<Farm>> farmsAsync;
  final AsyncValue<List<InventoryLocation>> locationsAsync;
  final AsyncValue<List<Product>> productsAsync;
  final InventoryBalanceFilter filter;
  final String? selectedFarmId;
  final ValueChanged<String?> onFarmChanged;
  final ValueChanged<String?> onLocationChanged;
  final ValueChanged<String?> onProductChanged;

  @override
  Widget build(BuildContext context) {
    return AppSearchBar(
      hintText: 'Use os filtros para navegar pelos saldos',
      onChanged: (_) {},
      trailing: [
        farmsAsync.maybeWhen(
          data: (farms) => DropdownButtonFormField<String?>(
            value: filter.farmId ?? selectedFarmId,
            decoration: const InputDecoration(labelText: 'Fazenda'),
            items: [
              const DropdownMenuItem<String?>(
                value: null,
                child: Text('Todas'),
              ),
              ...farms.map(
                (Farm farm) => DropdownMenuItem<String?>(
                  value: farm.metadata.id,
                  child: Text(farm.name),
                ),
              ),
            ],
            onChanged: onFarmChanged,
          ),
          orElse: SizedBox.shrink,
        ),
        locationsAsync.maybeWhen(
          data: (locations) => DropdownButtonFormField<String?>(
            value: filter.inventoryLocationId,
            decoration: const InputDecoration(labelText: 'Local'),
            items: [
              const DropdownMenuItem<String?>(
                value: null,
                child: Text('Todos'),
              ),
              ...locations.map(
                (location) => DropdownMenuItem<String?>(
                  value: location.metadata.id,
                  child: Text(location.name),
                ),
              ),
            ],
            onChanged: onLocationChanged,
          ),
          orElse: SizedBox.shrink,
        ),
        productsAsync.maybeWhen(
          data: (products) => DropdownButtonFormField<String?>(
            value: filter.productId,
            decoration: const InputDecoration(labelText: 'Produto'),
            items: [
              const DropdownMenuItem<String?>(
                value: null,
                child: Text('Todos'),
              ),
              ...products.map(
                (Product product) => DropdownMenuItem<String?>(
                  value: product.metadata.id,
                  child: Text(product.name),
                ),
              ),
            ],
            onChanged: onProductChanged,
          ),
          orElse: SizedBox.shrink,
        ),
      ],
    );
  }
}
