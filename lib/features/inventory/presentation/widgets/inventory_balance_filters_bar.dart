import 'package:field_management_app/design_system/components/app_search_bar.dart';
import 'package:field_management_app/design_system/components/app_searchable_dropdown_field.dart';
import 'package:field_management_app/features/inventory/domain/entities/inventory_models.dart';
import 'package:field_management_app/features/inventory/presentation/controllers/inventory_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InventoryBalanceFiltersBar extends StatelessWidget {
  const InventoryBalanceFiltersBar({
    required this.balanceOptionsAsync,
    required this.filter,
    required this.onClearFilters,
    required this.onSearchChanged,
    required this.onLocationChanged,
    required this.onProductChanged,
    required this.hasActiveFilters,
    super.key,
  });

  final AsyncValue<List<InventoryBalance>> balanceOptionsAsync;
  final InventoryBalanceFilter filter;
  final VoidCallback onClearFilters;
  final ValueChanged<String> onSearchChanged;
  final ValueChanged<String?> onLocationChanged;
  final ValueChanged<String?> onProductChanged;
  final bool hasActiveFilters;

  List<({String id, String label})> _locationOptions(
    List<InventoryBalance> items,
  ) {
    final byId = <String, String>{};
    for (final item in items) {
      final id = item.inventoryLocationId;
      final label = item.inventoryLocation?.name ?? id;
      byId.putIfAbsent(id, () => label);
    }
    final options = byId.entries
        .map((entry) => (id: entry.key, label: entry.value))
        .toList();
    options.sort(
      (a, b) => a.label.toLowerCase().compareTo(b.label.toLowerCase()),
    );
    return options;
  }

  List<AppDropdownOption<String?>> _productOptions(
    List<InventoryBalance> items,
  ) {
    final byId = <String, AppDropdownOption<String?>>{};
    for (final item in items) {
      final id = item.productId;
      final label = item.product?.name ?? id;
      byId.putIfAbsent(
        id,
        () {
          final productCode = item.product?.code?.trim();
          return AppDropdownOption<String?>(
            value: id,
            label: label,
            searchKeywords: [
              if (productCode?.isNotEmpty ?? false) productCode!,
              id,
            ],
          );
        },
      );
    }
    final options = byId.values.toList();
    options.sort(
      (a, b) => a.label.toLowerCase().compareTo(b.label.toLowerCase()),
    );
    return options;
  }

  @override
  Widget build(BuildContext context) {
    final availableLocationIds = balanceOptionsAsync.maybeWhen(
      data: (items) => _locationOptions(items).map((item) => item.id).toSet(),
      orElse: () => const <String>{},
    );
    final availableProductIds = balanceOptionsAsync.maybeWhen(
      data: (items) => _productOptions(
        items,
      ).map((item) => item.value).whereType<String>().toSet(),
      orElse: () => const <String>{},
    );
    final selectedLocationId = availableLocationIds.contains(
          filter.inventoryLocationId,
        )
        ? filter.inventoryLocationId
        : null;
    final selectedProductId = availableProductIds.contains(filter.productId)
        ? filter.productId
        : null;

    return AppSearchBar(
      initialValue: filter.search,
      hintText: 'Use os filtros para navegar pelos saldos',
      actions: [
        IconButton.filledTonal(
          tooltip: 'Limpar filtros',
          onPressed: hasActiveFilters ? onClearFilters : null,
          icon: const Icon(Icons.filter_alt_off_rounded),
        ),
      ],
      onChanged: onSearchChanged,
      trailing: [
        balanceOptionsAsync.maybeWhen(
          data: (items) => DropdownButtonFormField<String?>(
            value: selectedLocationId,
            isExpanded: true,
            decoration: const InputDecoration(labelText: 'Local'),
            items: [
              const DropdownMenuItem<String?>(
                value: null,
                child: Text('Todos'),
              ),
              ..._locationOptions(items).map(
                (location) => DropdownMenuItem<String?>(
                  value: location.id,
                  child: Text(
                    location.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
            onChanged: onLocationChanged,
          ),
          orElse: SizedBox.shrink,
        ),
        balanceOptionsAsync.maybeWhen(
          data: (items) => AppSearchableDropdownField<String?>(
            label: 'Produto',
            value: selectedProductId,
            hintText: 'Todos',
            searchHintText: 'Buscar produto',
            emptyText: 'Nenhum produto encontrado.',
            options: [
              const AppDropdownOption<String?>(
                value: null,
                label: 'Todos',
              ),
              ..._productOptions(items),
            ],
            onChanged: onProductChanged,
          ),
          orElse: SizedBox.shrink,
        ),
      ],
    );
  }
}
