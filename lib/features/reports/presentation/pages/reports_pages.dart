import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/utils/formatters.dart';
import 'package:field_management_app/design_system/components/app_action_button.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_dropdown_field.dart';
import 'package:field_management_app/design_system/components/app_field_loading.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:field_management_app/features/reports/presentation/controllers/reports_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  DateTime? _from;
  DateTime? _to;

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
    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final reportState = ref.watch(reportCsvControllerProvider);

    return AppPage(
      title: 'Relatório de operações (CSV)',
      child: SingleChildScrollView(
        child: AppCard(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                farmsAsync.when(
                  data: (farms) => AppDropdownField<String>(
                    label: 'Fazenda',
                    value: _farmId,
                    items: farms
                        .map(
                          (farm) => DropdownMenuItem<String>(
                            value: farm.metadata.id,
                            child: Text(farm.name),
                          ),
                        )
                        .toList(),
                    onChanged: (value) => setState(() => _farmId = value),
                    validator: (value) =>
                        value == null ? 'Selecione a fazenda.' : null,
                  ),
                  loading: () => const AppFieldLoading(),
                  error: (_, __) => const Text('Falha ao carregar fazendas.'),
                ),
                const SizedBox(height: AppSpacing.md),
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
                const SizedBox(height: AppSpacing.lg),
                if (reportState.status == ReportFlowStatus.creating ||
                    reportState.status == ReportFlowStatus.processing) ...[
                  const LinearProgressIndicator(),
                  const SizedBox(height: AppSpacing.sm),
                  Text(reportState.userMessage ?? 'Processando...'),
                  const SizedBox(height: AppSpacing.md),
                ],
                if (reportState.errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.md),
                    child: Text(
                      reportState.errorMessage!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                if (reportState.filePath != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.md),
                    child: Text(
                      'Arquivo salvo em: ${reportState.filePath}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                Row(
                  children: [
                    AppActionButton(
                      label: 'Gerar CSV',
                      icon: const Icon(Icons.table_chart_outlined),
                      isLoading:
                          reportState.status == ReportFlowStatus.creating,
                      onPressed: reportState.canCancel ? null : _generate,
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    OutlinedButton.icon(
                      onPressed: reportState.canCancel
                          ? () => ref
                                .read(reportCsvControllerProvider.notifier)
                                .cancel()
                          : null,
                      icon: const Icon(Icons.stop_circle_outlined),
                      label: const Text('Cancelar'),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.sm),
                Row(
                  children: [
                    OutlinedButton.icon(
                      onPressed: reportState.filePath == null
                          ? null
                          : () => ref
                                .read(reportCsvControllerProvider.notifier)
                                .openLatestFile(),
                      icon: const Icon(Icons.file_open_outlined),
                      label: const Text('Abrir'),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    OutlinedButton.icon(
                      onPressed: reportState.filePath == null
                          ? null
                          : () => ref
                                .read(reportCsvControllerProvider.notifier)
                                .shareLatestFile(),
                      icon: const Icon(Icons.share_outlined),
                      label: const Text('Compartilhar'),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  reportState.userMessage ??
                      'Selecione o período e gere o relatório CSV de operações.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
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

  void _generate() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final from = _from;
    final to = _to;
    final farmId = _farmId;

    if (from == null || to == null || farmId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Selecione fazenda e período.')),
      );
      return;
    }

    if (from.isAfter(to)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Data inicial deve ser menor que a final.'),
        ),
      );
      return;
    }

    ref
        .read(reportCsvControllerProvider.notifier)
        .generateCsv(farmId: farmId, from: from, to: to);
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
