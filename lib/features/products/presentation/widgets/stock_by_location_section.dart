import 'package:field_management_app/core/utils/validators.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_destructive.dart';
import 'package:field_management_app/design_system/components/app_dropdown_field.dart';
import 'package:field_management_app/design_system/components/app_field_loading.dart';
import 'package:field_management_app/design_system/components/app_text_field.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:field_management_app/features/inventory/presentation/controllers/inventory_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StockByLocationSection extends ConsumerWidget {
  const StockByLocationSection({
    required this.title,
    required this.drafts,
    required this.onAdd,
    required this.onRemove,
    required this.onChanged,
    super.key,
  });

  final String title;
  final List<StockLocationDraft> drafts;
  final VoidCallback onAdd;
  final ValueChanged<StockLocationDraft> onRemove;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final totalQuantity = drafts.fold<double>(
      0,
      (sum, item) =>
          sum +
          (double.tryParse(
                item.quantityController.text.trim().replaceAll(',', '.'),
              ) ??
              0),
    );

    return AppCard(
      color: Theme.of(
        context,
      ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              IconButton.filledTonal(
                onPressed: onAdd,
                icon: const Icon(Icons.add_rounded),
                tooltip: 'Adicionar local',
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: [
              Expanded(
                child: _StockSummaryCard(
                  label: 'Qtd. total',
                  value: totalQuantity.toStringAsFixed(2),
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: _StockSummaryCard(
                  label: 'Locais',
                  value: drafts.length.toString(),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          if (drafts.isEmpty)
            const Text('Adicione ao menos um local de estoque.')
          else
            ...drafts.map((draft) {
              final locationsAsync = ref.watch(
                inventoryLocationsByFarmProvider(draft.farmId),
              );

              return Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                child: AppCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Local',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: drafts.length == 1
                                ? null
                                : () => onRemove(draft),
                            style: AppDestructive.iconButtonStyle(context),
                            icon: Icon(
                              Icons.delete_outline_rounded,
                              color: AppDestructive.iconColor(context),
                            ),
                            tooltip: 'Remover local',
                          ),
                        ],
                      ),
                      farmsAsync.when(
                        data: (farms) => AppDropdownField<String>(
                          label: 'Fazenda',
                          value: draft.farmId,
                          items: farms
                              .map(
                                (farm) => DropdownMenuItem<String>(
                                  value: farm.metadata.id,
                                  child: Text(farm.name),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            draft.farmId = value;
                            draft.inventoryLocationId = null;
                            onChanged();
                          },
                          validator: (value) => FormValidators.requiredField(
                            value,
                            label: 'Fazenda',
                          ),
                        ),
                        loading: () => const AppFieldLoading(),
                        error: (_, __) =>
                            const Text('Erro ao carregar fazendas.'),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      locationsAsync.when(
                        data: (locations) => AppDropdownField<String>(
                          label: 'Local de estoque',
                          value: draft.inventoryLocationId,
                          items: locations
                              .map(
                                (location) => DropdownMenuItem<String>(
                                  value: location.metadata.id,
                                  child: Text(location.name),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            draft.inventoryLocationId = value;
                            onChanged();
                          },
                          validator: (value) => FormValidators.requiredField(
                            value,
                            label: 'Local de estoque',
                          ),
                        ),
                        loading: () => const AppFieldLoading(),
                        error: (_, __) =>
                            const Text('Erro ao carregar locais de estoque.'),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      AppTextField(
                        controller: draft.quantityController,
                        label: 'Quantidade',
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        validator: (value) => FormValidators.nonNegativeNumber(
                          value,
                          label: 'Quantidade',
                        ),
                        onChanged: (_) => onChanged(),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      AppTextField(
                        controller: draft.averageUnitCostController,
                        label: 'Custo médio unitário',
                        prefixText: 'R\$ ',
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        validator: (value) => FormValidators.nonNegativeNumber(
                          value,
                          label: 'Custo médio unitário',
                        ),
                        onChanged: (_) => onChanged(),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      AppTextField(
                        controller: draft.notesController,
                        label: 'Observação',
                        hintText: 'Opcional',
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              );
            }),
        ],
      ),
    );
  }
}

class StockLocationDraft {
  StockLocationDraft({
    this.farmId,
    this.inventoryLocationId,
    double? quantity,
    double? averageUnitCost,
    String? notes,
  }) : quantityController = TextEditingController(
         text: quantity == null ? '' : quantity.toString(),
       ),
       averageUnitCostController = TextEditingController(
         text: averageUnitCost == null ? '' : averageUnitCost.toString(),
       ),
       notesController = TextEditingController(text: notes ?? '');

  String? farmId;
  String? inventoryLocationId;
  final TextEditingController quantityController;
  final TextEditingController averageUnitCostController;
  final TextEditingController notesController;

  void dispose() {
    quantityController.dispose();
    averageUnitCostController.dispose();
    notesController.dispose();
  }
}

class _StockSummaryCard extends StatelessWidget {
  const _StockSummaryCard({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
