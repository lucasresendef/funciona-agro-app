import 'package:field_management_app/core/utils/formatters.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter/material.dart';

class OperationSummaryPage extends StatelessWidget {
  const OperationSummaryPage({required this.operation, super.key});

  final FieldOperation operation;

  @override
  Widget build(BuildContext context) {
    final operation = this.operation;
    final fieldNameById = <String, String>{
      for (final field in operation.fields)
        field.fieldId: field.name ?? field.fieldId,
    };
    final fieldAreaById = <String, double>{
      for (final field in operation.fields)
        if (field.areaHectares != null) field.fieldId: field.areaHectares!,
    };
    final operationFieldIds = operation.fieldIds.isNotEmpty
        ? operation.fieldIds
        : operation.fields.map((field) => field.fieldId).toList();
    final operationFieldNamesWithArea = operationFieldIds
        .map((fieldId) {
          final name = fieldNameById[fieldId] ?? fieldId;
          final area = fieldAreaById[fieldId];
          if (area == null) {
            return '$name (área n/d)';
          }
          return '$name (${AppFormatters.number(area)} ha)';
        })
        .join(', ');
    final totalAreaHectares = operationFieldIds.fold<double>(
      0,
      (sum, fieldId) => sum + (fieldAreaById[fieldId] ?? 0),
    );
    final totalSent = operation.items.fold<double>(
      0,
      (sum, item) => sum + item.quantitySent,
    );
    final totalReturned = operation.items.fold<double>(
      0,
      (sum, item) => sum + (item.quantityReturned ?? 0),
    );
    final totalConsumed = operation.items.fold<double>(
      0,
      (sum, item) => sum + (item.quantityConsumed ?? item.quantitySent),
    );
    final consumedUnitLabel = _resolveConsumedUnitLabel(operation: operation);
    final totalCost = operation.items.fold<double>(
      0,
      (sum, item) =>
          sum +
          ((item.totalCostConsumed ??
                  item.quantityConsumed ??
                  item.quantitySent) *
              item.unitCostAtOperation),
    );

    return AppPage(
      title: 'Resumo da operação',
      actions: [
        IconButton(
          tooltip: 'Ver histórico',
          onPressed: () => _openHistorySheet(context, operation),
          icon: const Icon(Icons.history_rounded),
        ),
      ],
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppCard(
              color: Theme.of(
                context,
              ).colorScheme.primaryContainer.withValues(alpha: 0.35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: AppSpacing.sm,
                    runSpacing: AppSpacing.sm,
                    children: [
                      Chip(label: Text(operation.status.label)),
                      Chip(
                        label: Text(_operationLabel(operation.sequenceNumber)),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  _SummaryRow(
                    label: 'Talhões',
                    value: operationFieldNamesWithArea,
                  ),
                  if (operation.inventoryLocation != null)
                    _SummaryRow(
                      label: 'Local de estoque',
                      value: operation.inventoryLocation!.name,
                    ),
                  _SummaryRow(
                    label: 'Área total',
                    value: totalAreaHectares <= 0
                        ? 'Não disponível'
                        : '${AppFormatters.number(totalAreaHectares)} ha',
                  ),
                  _SummaryRow(
                    label: 'Data da operação',
                    value: AppFormatters.dateTime(operation.operationDate),
                  ),
                  _SummaryRow(
                    label: 'Início',
                    value: operation.startedAt == null
                        ? '-'
                        : AppFormatters.dateTime(operation.startedAt),
                  ),
                  _SummaryRow(
                    label: 'Finalização',
                    value: operation.finishedAt == null
                        ? '-'
                        : AppFormatters.dateTime(operation.finishedAt),
                  ),
                  if (operation.description != null &&
                      operation.description!.isNotEmpty) ...[
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      operation.description!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            AppCard(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final isCompact = constraints.maxWidth < 520;
                  final itemWidth = isCompact
                      ? constraints.maxWidth
                      : (constraints.maxWidth - AppSpacing.sm) / 2;

                  return Wrap(
                    spacing: AppSpacing.sm,
                    runSpacing: AppSpacing.sm,
                    children: [
                      SizedBox(
                        width: itemWidth,
                        child: _MetricChip(
                          title: 'Enviado',
                          value: AppFormatters.number(totalSent),
                        ),
                      ),
                      SizedBox(
                        width: itemWidth,
                        child: _MetricChip(
                          title: 'Devolvido',
                          value: AppFormatters.number(totalReturned),
                        ),
                      ),
                      SizedBox(
                        width: itemWidth,
                        child: _MetricChip(
                          title: 'Consumido',
                          value:
                              '${AppFormatters.number(totalConsumed)} $consumedUnitLabel',
                        ),
                      ),
                      SizedBox(
                        width: itemWidth,
                        child: _MetricChip(
                          title: 'Custo total',
                          value: AppFormatters.currency(totalCost),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            AppCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Consumo por produto e talhão',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    'Leitura detalhada por produto com distribuição por talhão.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  ...operation.items.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;
                    final consumed = item.quantityConsumed ?? item.quantitySent;
                    final unitSymbol = _resolveUnitSymbol(item);
                    final lineTotal =
                        (item.totalCostConsumed ?? consumed) *
                        item.unitCostAtOperation;
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: index == operation.items.length - 1
                            ? 0
                            : AppSpacing.sm,
                      ),
                      child: _ConsumptionProductCard(
                        productName: item.product?.name ?? item.productId,
                        unitSymbol: unitSymbol,
                        consumed: consumed,
                        lineTotal: lineTotal,
                        fieldResults: item.fieldResults,
                        notes: item.notes,
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openHistorySheet(BuildContext context, FieldOperation operation) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useSafeArea: true,
      builder: (sheetContext) {
        final mediaQuery = MediaQuery.of(sheetContext);
        final maxHeight = mediaQuery.size.height * 0.72;

        return ConstrainedBox(
          constraints: BoxConstraints(maxHeight: maxHeight),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.md,
              AppSpacing.xs,
              AppSpacing.md,
              AppSpacing.md,
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  'Histórico da ação',
                  style: Theme.of(
                    sheetContext,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: AppSpacing.sm),
                _HistoryEventTile(
                  icon: Icons.add_task_rounded,
                  title: 'Operação criada',
                  actor: operation.metadata.createdBy ?? '-',
                  actorEmail: operation.metadata.createdByEmail,
                  date: operation.metadata.createdAt,
                ),
                _HistoryEventTile(
                  icon: Icons.rule_folder_outlined,
                  title: operation.status == FieldOperationStatus.finished
                      ? 'Operação finalizada'
                      : 'Última atualização',
                  actor:
                      operation.metadata.updatedBy ??
                      operation.metadata.createdBy ??
                      '-',
                  actorEmail:
                      operation.metadata.updatedByEmail ??
                      operation.metadata.createdByEmail,
                  date:
                      operation.metadata.updatedAt ??
                      operation.metadata.createdAt,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

String _operationLabel(int? sequenceNumber) {
  if (sequenceNumber == null) {
    return 'Operação';
  }
  return 'Operação #$sequenceNumber';
}

String _resolveUnitSymbol(FieldOperationItem item) {
  return item.product?.unitOfMeasureSymbol ?? 'un.';
}

String _resolveConsumedUnitLabel({required FieldOperation operation}) {
  final symbols = operation.items.map(_resolveUnitSymbol).toSet();

  if (symbols.isEmpty) {
    return 'un.';
  }
  if (symbols.length == 1) {
    return symbols.first;
  }
  return '(unidades mistas)';
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final compact = constraints.maxWidth < 520;
          if (compact) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            );
          }
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 130,
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  value,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _MetricChip extends StatelessWidget {
  const _MetricChip({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        color: Theme.of(
          context,
        ).colorScheme.tertiaryContainer.withValues(alpha: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}

class _ConsumptionProductCard extends StatelessWidget {
  const _ConsumptionProductCard({
    required this.productName,
    required this.unitSymbol,
    required this.consumed,
    required this.lineTotal,
    required this.fieldResults,
    required this.notes,
  });

  final String productName;
  final String unitSymbol;
  final double consumed;
  final double lineTotal;
  final List<FieldOperationItemFieldResult> fieldResults;
  final String? notes;

  @override
  Widget build(BuildContext context) {
    final totalAllocated = fieldResults.fold<double>(
      0,
      (sum, item) => sum + (item.allocatedQuantityConsumed ?? 0),
    );

    return AppCard(
      color: Theme.of(
        context,
      ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productName,
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: AppSpacing.sm),
          LayoutBuilder(
            builder: (context, constraints) {
              final compact = constraints.maxWidth < 540;
              final cardWidth = compact
                  ? constraints.maxWidth
                  : (constraints.maxWidth - AppSpacing.sm) / 2;
              return Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: [
                  SizedBox(
                    width: cardWidth,
                    child: _InlineMetric(
                      label: 'Consumido total',
                      value: '${AppFormatters.number(consumed)} $unitSymbol',
                    ),
                  ),
                  SizedBox(
                    width: cardWidth,
                    child: _InlineMetric(
                      label: 'Custo total do item',
                      value: AppFormatters.currency(lineTotal),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Distribuição por talhão',
            style: Theme.of(
              context,
            ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: AppSpacing.xs),
          if (fieldResults.isEmpty)
            Text(
              'Sem distribuição por talhão.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ...fieldResults.map((result) {
            final allocatedQuantity = result.allocatedQuantityConsumed ?? 0;
            final fieldName = result.fieldName ?? result.fieldId;
            final percentage = totalAllocated <= 0
                ? null
                : (allocatedQuantity / totalAllocated) * 100;
            return Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.xs),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      fieldName,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      percentage == null
                          ? '${AppFormatters.number(allocatedQuantity)} $unitSymbol'
                          : '${AppFormatters.number(allocatedQuantity)} $unitSymbol (${AppFormatters.number(percentage)}%)',
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
          if (notes != null && notes!.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.xs),
            _InlineMetric(label: 'Observação', value: notes!),
          ],
        ],
      ),
    );
  }
}

class _InlineMetric extends StatelessWidget {
  const _InlineMetric({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.75),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xs,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}

class _HistoryEventTile extends StatelessWidget {
  const _HistoryEventTile({
    required this.icon,
    required this.title,
    required this.actor,
    this.actorEmail,
    required this.date,
  });

  final IconData icon;
  final String title;
  final String actor;
  final String? actorEmail;
  final DateTime? date;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(
        '${AppFormatters.dateTime(date)}\n$actor${actorEmail == null ? '' : ' • $actorEmail'}',
      ),
      isThreeLine: true,
    );
  }
}
