import 'package:field_management_app/core/utils/formatters.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/field_operations/domain/entities/field_operation_models.dart';
import 'package:field_management_app/features/fields/presentation/controllers/fields_controller.dart';
import 'package:field_management_app/features/products/presentation/controllers/products_controller.dart';
import 'package:field_management_app/shared/models/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OperationSummaryPage extends ConsumerWidget {
  const OperationSummaryPage({required this.operation, super.key});

  final FieldOperation operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(allActiveProductsProvider);
    final productNames = productsAsync.maybeWhen(
      data: (products) => <String, String>{
        for (final product in products) product.metadata.id: product.name,
      },
      orElse: () => const <String, String>{},
    );
    final fieldsAsync = ref.watch(fieldsByFarmProvider(operation.farmId));
    final fieldName = fieldsAsync.maybeWhen(
      data: (fields) => fields
          .where((field) => field.metadata.id == operation.fieldId)
          .map((field) => field.name)
          .firstOrNull,
      orElse: () => null,
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
                        label: Text(
                          'Operação ${operation.metadata.id.substring(0, 8)}',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  _SummaryRow(
                    label: 'Talhão',
                    value: fieldName ?? operation.fieldId,
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
                          value: totalSent.toStringAsFixed(2),
                        ),
                      ),
                      SizedBox(
                        width: itemWidth,
                        child: _MetricChip(
                          title: 'Devolvido',
                          value: totalReturned.toStringAsFixed(2),
                        ),
                      ),
                      SizedBox(
                        width: itemWidth,
                        child: _MetricChip(
                          title: 'Consumido',
                          value: totalConsumed.toStringAsFixed(2),
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
                    'Itens e movimentações',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  ...operation.items.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;
                    final consumed = item.quantityConsumed ?? item.quantitySent;
                    final returned = item.quantityReturned ?? 0;
                    final lineTotal =
                        (item.totalCostConsumed ?? consumed) *
                        item.unitCostAtOperation;
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: index == operation.items.length - 1
                            ? 0
                            : AppSpacing.sm,
                      ),
                      child: AppCard(
                        color: Theme.of(context)
                            .colorScheme
                            .surfaceContainerHighest
                            .withValues(alpha: 0.35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productNames[item.productId] ?? item.productId,
                              style: Theme.of(context).textTheme.titleSmall
                                  ?.copyWith(fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Wrap(
                              spacing: AppSpacing.sm,
                              runSpacing: AppSpacing.xs,
                              children: [
                                Chip(
                                  label: Text(
                                    'Enviado: ${item.quantitySent.toStringAsFixed(2)}',
                                  ),
                                ),
                                Chip(
                                  label: Text(
                                    'Devolvido: ${returned.toStringAsFixed(2)}',
                                  ),
                                ),
                                Chip(
                                  label: Text(
                                    'Consumido: ${consumed.toStringAsFixed(2)}',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              'Custo unitário: ${AppFormatters.currency(item.unitCostAtOperation)}',
                            ),
                            Text(
                              'Custo total do item: ${AppFormatters.currency(lineTotal)}',
                            ),
                            if (item.notes != null &&
                                item.notes!.isNotEmpty) ...[
                              const SizedBox(height: AppSpacing.xs),
                              Text('Observação: ${item.notes!}'),
                            ],
                          ],
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            AppCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Histórico da ação',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
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
          ],
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.xs),
      child: Row(
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(child: Text(value)),
        ],
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
            Text(title, style: Theme.of(context).textTheme.labelMedium),
            Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w800),
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
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 18, child: Icon(icon, size: 18)),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: AppCard(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text('Responsável: $actor'),
                  if (actorEmail != null && actorEmail!.isNotEmpty)
                    Text('Email: $actorEmail'),
                  Text(
                    'Data: ${date == null ? '-' : AppFormatters.dateTime(date)}',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
