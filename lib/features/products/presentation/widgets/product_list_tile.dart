import 'package:field_management_app/core/utils/formatters.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_destructive.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/products/domain/entities/product.dart';
import 'package:flutter/material.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({
    required this.product,
    required this.onEdit,
    required this.onDelete,
    super.key,
  });

  final Product product;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ListTile(
        onTap: () =>
            showProductDetailsSheet(context, product, onEdit, onDelete),
        contentPadding: EdgeInsets.zero,
        leading: const CircleAvatar(child: Icon(Icons.inventory_2_outlined)),
        title: Text(product.name, maxLines: 1, overflow: TextOverflow.ellipsis),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: AppSpacing.xs),
            Text('Código: ${product.code}'),
            Text(
              product.category,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'Estoque total: ${product.totalStockQuantity.toStringAsFixed(2)}',
            ),
          ],
        ),
        trailing: const Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}

void showProductDetailsSheet(
  BuildContext context,
  Product product,
  VoidCallback onEdit,
  VoidCallback onDelete,
) {
  showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (context) {
      final maxHeight = MediaQuery.of(context).size.height * 0.85;
      return SizedBox(
        height: maxHeight,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.md,
            AppSpacing.sm,
            AppSpacing.md,
            AppSpacing.lg,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: AppSpacing.sm),
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.xs,
                children: [
                  Chip(
                    label: Text(product.metadata.active ? 'Ativo' : 'Inativo'),
                  ),
                  Chip(label: Text('Código: ${product.code}')),
                  Chip(label: Text('Categoria: ${product.category}')),
                  Chip(
                    label: Text(
                      'Estoque total: ${product.totalStockQuantity.toStringAsFixed(2)}',
                    ),
                  ),
                ],
              ),
              if (product.activeIngredient != null &&
                  product.activeIngredient!.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.sm),
                Text('Ingrediente ativo: ${product.activeIngredient}'),
              ],
              if (product.stockByLocation.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.md),
                Text(
                  'Estoque por local',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                ...product.stockByLocation.map(
                  (stock) => Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                    child: AppCard(
                      color: Theme.of(context)
                          .colorScheme
                          .surfaceContainerHighest
                          .withValues(alpha: 0.35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${stock.farmName ?? stock.farmId} • ${stock.inventoryLocationName ?? stock.inventoryLocationId}',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Text('Qtd: ${stock.quantity.toStringAsFixed(2)}'),
                          Text(
                            'Custo médio: ${AppFormatters.currency(stock.averageUnitCost)}',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: AppSpacing.lg),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pop();
                        onEdit();
                      },
                      icon: const Icon(Icons.edit_outlined),
                      label: const Text('Editar'),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pop();
                        onDelete();
                      },
                      style: AppDestructive.outlinedStyle(context),
                      icon: Icon(
                        Icons.delete_outline,
                        color: AppDestructive.iconColor(context),
                      ),
                      label: const Text('Excluir'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
