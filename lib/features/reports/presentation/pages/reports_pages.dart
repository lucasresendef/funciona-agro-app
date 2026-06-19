import 'dart:io';
import 'dart:ui' as ui;

import 'package:field_management_app/core/errors/app_exception.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/utils/formatters.dart';
import 'package:field_management_app/design_system/components/app_action_button.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_dropdown_field.dart';
import 'package:field_management_app/design_system/components/app_field_loading.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/fields/presentation/controllers/fields_controller.dart';
import 'package:field_management_app/features/reports/domain/entities/csv_export_models.dart';
import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';
import 'package:field_management_app/features/reports/presentation/controllers/inventory_movements_csv_export_controller.dart';
import 'package:field_management_app/features/reports/presentation/controllers/reports_controller.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class OperationsReportPage extends ConsumerStatefulWidget {
  const OperationsReportPage({super.key});

  static const routePath = '/reports/operations';

  @override
  ConsumerState<OperationsReportPage> createState() =>
      _OperationsReportPageState();
}

class _OperationsReportPageState extends ConsumerState<OperationsReportPage> {
  final _formKey = GlobalKey<FormState>();
  String? _farmId;
  String? _fieldId;
  DateTime? _from;
  DateTime? _to;
  bool _exportAll = false;
  bool _isLoadingFieldReport = false;

  @override
  void initState() {
    super.initState();
    _farmId = ref.read(sessionManagerProvider).selectedFarmId;
    final now = DateTime.now();
    _to = DateTime(now.year, now.month, now.day, 23, 59, 59);
    _from = _to!.subtract(const Duration(days: 7));
  }

  @override
  Widget build(BuildContext context) {
    _farmId = ref.watch(sessionManagerProvider).selectedFarmId;
    final fieldsAsync = ref.watch(fieldsByFarmProvider(_farmId));
    final exportState = ref.watch(
      inventoryMovementsCsvExportControllerProvider,
    );

    ref.listen<InventoryMovementsCsvExportState>(
      inventoryMovementsCsvExportControllerProvider,
      (previous, next) async {
        if (!mounted) {
          return;
        }

        if (next.status == InventoryMovementsCsvExportStatus.downloaded &&
            previous?.downloadedFile?.tempFilePath !=
                next.downloadedFile?.tempFilePath) {
          await _showPostDownloadActions(context);
          return;
        }

        if (next.status == InventoryMovementsCsvExportStatus.error &&
            next.errorMessage != null &&
            previous?.errorMessage != next.errorMessage) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(next.errorMessage!)));
          return;
        }

        if (next.status == InventoryMovementsCsvExportStatus.success &&
            next.userMessage != null &&
            previous?.userMessage != next.userMessage) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(next.userMessage!)));
        }
      },
    );

    return AppPage(
      title: 'Relatórios de operações',
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppCard(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: _DateField(
                            label: 'De',
                            value: _from,
                            onTap: () => _pickDate(isFrom: true),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.md),
                        Expanded(
                          child: _DateField(
                            label: 'Até',
                            value: _to,
                            onTap: () => _pickDate(isFrom: false),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.md),
                    if (exportState.isBusy) ...[
                      const LinearProgressIndicator(),
                      const SizedBox(height: AppSpacing.sm),
                      Text(exportState.userMessage ?? 'Processando...'),
                      const SizedBox(height: AppSpacing.md),
                    ],
                    CheckboxListTile(
                      value: _exportAll,
                      dense: true,
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Todos'),
                      subtitle: const Text(
                        'Marcado: exporta todas as fazendas. Desmarcado: apenas contexto atual.',
                      ),
                      onChanged: exportState.isBusy
                          ? null
                          : (value) =>
                                setState(() => _exportAll = value ?? false),
                    ),
                    const SizedBox(height: AppSpacing.md),
                    Row(
                      children: [
                        AppActionButton(
                          label: 'Exportar CSV',
                          icon: const Icon(Icons.table_chart_outlined),
                          isLoading: exportState.isBusy,
                          onPressed: exportState.isBusy ? null : _exportCsv,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            AppCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Consumo por talhão',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  fieldsAsync.when(
                    data: (fields) => AppDropdownField<String>(
                      label: 'Talhão',
                      value: _fieldId,
                      items: fields
                          .map(
                            (field) => DropdownMenuItem<String>(
                              value: field.metadata.id,
                              child: Text(field.name),
                            ),
                          )
                          .toList(),
                      onChanged: (value) => setState(() => _fieldId = value),
                      validator: (value) =>
                          value == null ? 'Selecione o talhão.' : null,
                    ),
                    loading: () => const AppFieldLoading(),
                    error: (_, __) => const Text('Falha ao carregar talhões.'),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  AppActionButton(
                    label: 'Consultar consumo',
                    icon: const Icon(Icons.analytics_outlined),
                    isLoading: _isLoadingFieldReport,
                    onPressed: _isLoadingFieldReport ? null : _loadFieldReport,
                  ),
                  const SizedBox(height: AppSpacing.md),
                  const Text(
                    'Ao consultar com sucesso, o relatório será aberto em uma nova tela.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickDate({required bool isFrom}) async {
    final initial = isFrom ? _from : _to;
    final firstDate = DateTime(2020, 1, 1);
    final lastDate = DateTime.now().add(const Duration(days: 365));

    final selected = await showDatePicker(
      context: context,
      initialDate: initial ?? DateTime.now(),
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (selected == null) {
      return;
    }

    setState(() {
      if (isFrom) {
        _from = DateTime(selected.year, selected.month, selected.day, 0, 0, 0);
      } else {
        _to = DateTime(selected.year, selected.month, selected.day, 23, 59, 59);
      }
    });
  }

  void _exportCsv() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final from = _from;
    final to = _to;
    final farmId = ref.read(sessionManagerProvider).selectedFarmId;

    if (!_exportAll && (from == null || to == null)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Selecione o período para exportação.')),
      );
      return;
    }

    if (!_exportAll && from!.isAfter(to!)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Data inicial deve ser menor que a final.'),
        ),
      );
      return;
    }

    if (!_exportAll && (farmId == null || farmId.trim().isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Selecione uma fazenda no contexto superior para este modo.',
          ),
        ),
      );
      return;
    }

    ref
        .read(inventoryMovementsCsvExportControllerProvider.notifier)
        .exportCsv(
          InventoryMovementsCsvExportParams(
            mode: _exportAll
                ? InventoryMovementsCsvMode.all
                : InventoryMovementsCsvMode.filtered,
            farmId: _exportAll ? null : farmId,
            from: _exportAll ? null : from,
            to: _exportAll ? null : to,
          ),
        );
  }

  Future<void> _showPostDownloadActions(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      useSafeArea: true,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.md,
            AppSpacing.sm,
            AppSpacing.md,
            AppSpacing.lg,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.share_outlined),
                title: const Text('Compartilhar arquivo'),
                subtitle: const Text('Envie o CSV para outro app'),
                onTap: () async {
                  final origin = _resolveShareOrigin(context);
                  Navigator.of(context).pop();
                  await ref
                      .read(
                        inventoryMovementsCsvExportControllerProvider.notifier,
                      )
                      .shareDownloadedCsv(sharePositionOrigin: origin);
                },
              ),
              ListTile(
                leading: const Icon(Icons.save_alt_rounded),
                title: const Text('Salvar em...'),
                subtitle: const Text('Escolha a pasta de destino'),
                onTap: () async {
                  Navigator.of(context).pop();
                  await ref
                      .read(
                        inventoryMovementsCsvExportControllerProvider.notifier,
                      )
                      .saveDownloadedCsvAs();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _loadFieldReport() async {
    if (_fieldId == null || _from == null || _to == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Selecione talhão e período.')),
      );
      return;
    }
    if (_from!.isAfter(_to!)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Data inicial deve ser menor que a final.'),
        ),
      );
      return;
    }

    setState(() => _isLoadingFieldReport = true);
    try {
      final report = await ref.read(
        fieldConsumptionReportProvider(
          FieldConsumptionReportFilter(
            fieldId: _fieldId!,
            from: _from!,
            to: _to!,
          ),
        ).future,
      );

      if (!mounted) {
        return;
      }

      if (report.items.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Nenhum consumo encontrado no período selecionado.'),
          ),
        );
        return;
      }

      await Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => FieldConsumptionReportPage(report: report),
        ),
      );
    } catch (error) {
      if (!mounted) {
        return;
      }
      final message = error is AppException
          ? error.message
          : 'Falha ao consultar consumo: $error';
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } finally {
      if (mounted) {
        setState(() => _isLoadingFieldReport = false);
      }
    }
  }

  Rect _resolveShareOrigin(BuildContext tileContext) {
    final renderObject = tileContext.findRenderObject();
    if (renderObject is RenderBox) {
      final origin = renderObject.localToGlobal(Offset.zero);
      final size = renderObject.size;
      if (size.width > 0 && size.height > 0) {
        return origin & size;
      }
    }

    final media = MediaQuery.of(context);
    final centerX = media.size.width / 2;
    final centerY = media.size.height / 2;
    return Rect.fromLTWH(centerX - 1, centerY - 1, 2, 2);
  }
}

class _DateField extends StatelessWidget {
  const _DateField({
    required this.label,
    required this.value,
    required this.onTap,
  });

  final String label;
  final DateTime? value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: InputDecorator(
        decoration: InputDecoration(labelText: label),
        child: Text(
          value == null ? 'Selecionar data' : AppFormatters.date(value),
        ),
      ),
    );
  }
}

class _ConsumptionShareBar extends StatelessWidget {
  const _ConsumptionShareBar({required this.ratio});

  final double ratio;

  @override
  Widget build(BuildContext context) {
    final percent = (ratio * 100).toStringAsFixed(1);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Participação no consumo: $percent%',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: AppSpacing.xs),
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
          child: LinearProgressIndicator(
            value: ratio,
            minHeight: 8,
            backgroundColor: Theme.of(
              context,
            ).colorScheme.outlineVariant.withValues(alpha: 0.3),
          ),
        ),
      ],
    );
  }
}

enum _ShareKind { image, text }

class FieldConsumptionReportPage extends StatefulWidget {
  const FieldConsumptionReportPage({required this.report, super.key});

  final FieldConsumptionReport report;

  @override
  State<FieldConsumptionReportPage> createState() =>
      _FieldConsumptionReportPageState();
}

class _FieldConsumptionReportPageState
    extends State<FieldConsumptionReportPage> {
  final GlobalKey _dashboardKey = GlobalKey();
  bool _isExporting = false;

  @override
  Widget build(BuildContext context) {
    final report = widget.report;
    final unitLabels = report.items
        .map((item) => item.unit)
        .where((unit) => unit.trim().isNotEmpty)
        .toSet();
    final totalUnitLabel = unitLabels.isEmpty
        ? 'un.'
        : (unitLabels.length == 1 ? unitLabels.first : '(unidades mistas)');
    final totalQuantity = report.summary.totalAllocatedQuantityConsumed;
    final topItem = report.items.isEmpty
        ? null
        : (report.items.toList()..sort(
                (a, b) => b.totalAllocatedQuantityConsumed.compareTo(
                  a.totalAllocatedQuantityConsumed,
                ),
              ))
              .first;
    final itemCount = report.items.length;

    return AppPage(
      title: 'Relatório de consumo',
      actions: [
        IconButton(
          tooltip: 'Compartilhar',
          onPressed: _isExporting ? null : _onShareTapped,
          icon: const Icon(Icons.share_outlined),
        ),
        IconButton(
          tooltip: 'Salvar no dispositivo',
          onPressed: _isExporting ? null : _saveDashboard,
          icon: const Icon(Icons.download_rounded),
        ),
      ],
      child: RepaintBoundary(
        key: _dashboardKey,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(
                  context,
                ).colorScheme.primaryContainer.withValues(alpha: 0.16),
                Theme.of(context).colorScheme.surface,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppCard(
                  color: Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withValues(alpha: 0.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        report.fieldName,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        report.farmName,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.sm,
                          vertical: AppSpacing.xs,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: Colors.white.withValues(alpha: 0.75),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.outlineVariant
                                .withValues(alpha: 0.45),
                          ),
                        ),
                        child: Text(
                          'Período ${AppFormatters.date(report.period.from)} - ${AppFormatters.date(report.period.to)}',
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final isCompact = constraints.maxWidth < 700;
                    final cardWidth = isCompact
                        ? constraints.maxWidth
                        : (constraints.maxWidth - (AppSpacing.sm * 3)) / 4;
                    return Wrap(
                      spacing: AppSpacing.sm,
                      runSpacing: AppSpacing.sm,
                      children: [
                        SizedBox(
                          width: cardWidth,
                          child: _KpiCard(
                            title: 'Quantidade total',
                            value:
                                '${AppFormatters.number(totalQuantity)} $totalUnitLabel',
                            icon: Icons.science_outlined,
                          ),
                        ),
                        SizedBox(
                          width: cardWidth,
                          child: _KpiCard(
                            title: 'Custo total',
                            value: AppFormatters.currency(
                              report.summary.totalAllocatedCostConsumed,
                            ),
                            icon: Icons.attach_money_rounded,
                          ),
                        ),
                        SizedBox(
                          width: cardWidth,
                          child: _KpiCard(
                            title: 'Operações',
                            value: report.summary.operationCount.toString(),
                            icon: Icons.check_circle_outline_rounded,
                          ),
                        ),
                        SizedBox(
                          width: cardWidth,
                          child: _KpiCard(
                            title: 'Insumos',
                            value: itemCount.toString(),
                            icon: Icons.inventory_2_outlined,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: AppSpacing.md),
                if (topItem != null)
                  AppCard(
                    color: const Color(0xFFF6F9F6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Destaque do período',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: AppSpacing.xs),
                        Text(
                          '${topItem.productCode} - ${topItem.productName}',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: AppSpacing.xs),
                        Text(
                          '${AppFormatters.number(topItem.totalAllocatedQuantityConsumed)} ${topItem.unit} consumidos',
                        ),
                        Text(
                          'Custo: ${AppFormatters.currency(topItem.totalAllocatedCostConsumed)}',
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  'Consumo por insumo',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                ...report.items.map(
                  (item) => Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                    child: AppCard(
                      color: Theme.of(context).colorScheme.surface,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${item.productCode} - ${item.productName}',
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '${AppFormatters.number(item.totalAllocatedQuantityConsumed)} ${item.unit}',
                                  style: Theme.of(context).textTheme.bodyLarge
                                      ?.copyWith(fontWeight: FontWeight.w700),
                                ),
                              ),
                              Text(
                                AppFormatters.currency(
                                  item.totalAllocatedCostConsumed,
                                ),
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          _ConsumptionShareBar(
                            ratio: totalQuantity <= 0
                                ? 0
                                : (item.totalAllocatedQuantityConsumed /
                                          totalQuantity)
                                      .clamp(0, 1)
                                      .toDouble(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onShareTapped() async {
    final choice = await showModalBottomSheet<_ShareKind>(
      context: context,
      showDragHandle: true,
      useSafeArea: true,
      builder: (sheetContext) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.image_outlined),
                title: const Text('Compartilhar como imagem'),
                subtitle: const Text('Envia uma imagem do relatório'),
                onTap: () => Navigator.of(sheetContext).pop(_ShareKind.image),
              ),
              ListTile(
                leading: const Icon(Icons.subject_rounded),
                title: const Text('Compartilhar como texto'),
                subtitle: const Text('Envia um resumo em texto'),
                onTap: () => Navigator.of(sheetContext).pop(_ShareKind.text),
              ),
              const SizedBox(height: AppSpacing.sm),
            ],
          ),
        );
      },
    );

    if (choice == null || !mounted) {
      return;
    }

    if (choice == _ShareKind.image) {
      await _shareImage();
    } else {
      await _shareText();
    }
  }

  Future<void> _shareText() async {
    final messenger = ScaffoldMessenger.of(context);
    final origin = _resolveShareOrigin(context);
    try {
      await SharePlus.instance.share(
        ShareParams(
          text: _buildTextSummary(),
          subject: 'Relatório de consumo - ${widget.report.fieldName}',
          sharePositionOrigin: origin,
        ),
      );
    } catch (error) {
      if (!mounted) {
        return;
      }
      messenger.showSnackBar(
        SnackBar(content: Text('Falha ao compartilhar resumo: $error')),
      );
    }
  }

  String _buildTextSummary() {
    final report = widget.report;
    final unitLabels = report.items
        .map((item) => item.unit)
        .where((unit) => unit.trim().isNotEmpty)
        .toSet();
    final totalUnitLabel = unitLabels.isEmpty
        ? 'un.'
        : (unitLabels.length == 1 ? unitLabels.first : 'un. (mistas)');

    final buffer = StringBuffer()
      ..writeln('Relatório de consumo')
      ..writeln('${report.fieldName} - ${report.farmName}')
      ..writeln(
        'Período: ${AppFormatters.date(report.period.from)} a ${AppFormatters.date(report.period.to)}',
      )
      ..writeln('')
      ..writeln(
        'Quantidade total: ${AppFormatters.number(report.summary.totalAllocatedQuantityConsumed)} $totalUnitLabel',
      )
      ..writeln(
        'Custo total: ${AppFormatters.currency(report.summary.totalAllocatedCostConsumed)}',
      )
      ..writeln('Operações: ${report.summary.operationCount}')
      ..writeln('Insumos: ${report.items.length}');

    if (report.items.isNotEmpty) {
      buffer
        ..writeln('')
        ..writeln('Consumo por insumo:');
      for (final item in report.items) {
        buffer.writeln(
          '- ${item.productCode} - ${item.productName}: ${AppFormatters.number(item.totalAllocatedQuantityConsumed)} ${item.unit} | ${AppFormatters.currency(item.totalAllocatedCostConsumed)}',
        );
      }
    }

    return buffer.toString().trimRight();
  }

  Future<void> _shareImage() async {
    final messenger = ScaffoldMessenger.of(context);
    final origin = _resolveShareOrigin(context);
    setState(() => _isExporting = true);
    try {
      final file = await _captureDashboardAsPng();
      if (!mounted) {
        return;
      }
      await SharePlus.instance.share(
        ShareParams(
          files: [XFile(file.path, mimeType: 'image/png', name: '${_safeFileName(widget.report.fieldName)}.png')],
          text:
              'Relatório de consumo - ${widget.report.fieldName} (${AppFormatters.date(widget.report.period.from)} a ${AppFormatters.date(widget.report.period.to)})',
          sharePositionOrigin: origin,
        ),
      );
    } catch (error) {
      if (!mounted) {
        return;
      }
      messenger.showSnackBar(
        SnackBar(content: Text('Falha ao compartilhar dashboard: $error')),
      );
    } finally {
      if (mounted) {
        setState(() => _isExporting = false);
      }
    }
  }

  Future<void> _saveDashboard() async {
    final messenger = ScaffoldMessenger.of(context);
    setState(() => _isExporting = true);
    try {
      final imageFile = await _captureDashboardAsPng();
      final defaultName =
          'consumo-talhao-${_safeFileName(widget.report.fieldName)}-${DateTime.now().millisecondsSinceEpoch}.png';
      String? destinationPath;

      try {
        destinationPath = await FilePicker.platform.saveFile(
          dialogTitle: 'Salvar dashboard',
          fileName: defaultName,
          type: FileType.custom,
          allowedExtensions: const ['png'],
        );
      } catch (_) {
        destinationPath = null;
      }

      destinationPath ??= await _pickPathByDirectory(defaultName);
      if (destinationPath == null || destinationPath.trim().isEmpty) {
        return;
      }

      final normalized = destinationPath.toLowerCase().endsWith('.png')
          ? destinationPath
          : '$destinationPath.png';
      final destination = File(normalized);
      await destination.parent.create(recursive: true);
      await imageFile.copy(destination.path);

      if (!mounted) {
        return;
      }
      messenger.showSnackBar(
        SnackBar(content: Text('Dashboard salvo em ${destination.path}')),
      );
    } catch (error) {
      if (!mounted) {
        return;
      }
      messenger.showSnackBar(
        SnackBar(content: Text('Falha ao salvar dashboard: $error')),
      );
    } finally {
      if (mounted) {
        setState(() => _isExporting = false);
      }
    }
  }

  Future<File> _captureDashboardAsPng() async {
    await WidgetsBinding.instance.endOfFrame;
    final boundary =
        _dashboardKey.currentContext?.findRenderObject()
            as RenderRepaintBoundary?;
    if (boundary == null) {
      throw Exception('Não foi possível capturar o dashboard.');
    }

    final image = await boundary.toImage(pixelRatio: 2.5);
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final bytes = byteData?.buffer.asUint8List();
    if (bytes == null || bytes.isEmpty) {
      throw Exception('Falha ao gerar imagem do dashboard.');
    }

    final tempDir = await getTemporaryDirectory();
    final file = File(
      '${tempDir.path}/field_consumption_dashboard_${DateTime.now().millisecondsSinceEpoch}.png',
    );
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }

  Future<String?> _pickPathByDirectory(String filename) async {
    try {
      final directoryPath = await FilePicker.platform.getDirectoryPath(
        dialogTitle: 'Escolha uma pasta para salvar',
      );
      if (directoryPath == null || directoryPath.trim().isEmpty) {
        return null;
      }
      return Directory(directoryPath).uri.resolve(filename).toFilePath();
    } catch (_) {
      return null;
    }
  }

  String _safeFileName(String input) {
    return input.trim().replaceAll(RegExp(r'[^a-zA-Z0-9-_]'), '-');
  }

  Rect _resolveShareOrigin(BuildContext originContext) {
    final renderObject = originContext.findRenderObject();
    if (renderObject is RenderBox) {
      final position = renderObject.localToGlobal(Offset.zero);
      final size = renderObject.size;
      if (size.width > 0 && size.height > 0) {
        return position & size;
      }
    }

    final media = MediaQuery.of(context);
    final centerX = media.size.width / 2;
    final centerY = media.size.height / 2;
    return Rect.fromLTWH(centerX - 1, centerY - 1, 2, 2);
  }
}

class _KpiCard extends StatelessWidget {
  const _KpiCard({
    required this.title,
    required this.value,
    required this.icon,
  });

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        color: Colors.white.withValues(alpha: 0.92),
        border: Border.all(
          color: Theme.of(
            context,
          ).colorScheme.outlineVariant.withValues(alpha: 0.35),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: AppSpacing.xs),
          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
