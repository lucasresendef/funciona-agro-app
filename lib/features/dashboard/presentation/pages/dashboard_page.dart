import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/components/app_skeleton.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/dashboard/presentation/widgets/dashboard_section_header.dart';
import 'package:field_management_app/features/dashboard/presentation/widgets/insight_card.dart';
import 'package:field_management_app/features/dashboard/presentation/widgets/kpi_card.dart';
import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';
import 'package:field_management_app/features/reports/presentation/controllers/dashboard_metrics_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  static const routePath = '/dashboard';

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  static final NumberFormat _numberFormatter = NumberFormat('#,##0.##', 'pt_BR');
  static final NumberFormat _currencyFormatter = NumberFormat.currency(
    locale: 'pt_BR',
    symbol: 'R\$',
  );
  static final DateFormat _dateFormatter = DateFormat('dd/MM/yyyy');
  static final DateFormat _dateTimeFormatter = DateFormat('dd/MM/yyyy HH:mm');

  late DateTime _draftFrom;
  late DateTime _draftTo;
  late DashboardMetricsQuery _appliedQuery;
  DateTime? _lastUpdated;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _draftTo = DateTime(now.year, now.month, now.day, 23, 59, 59);
    _draftFrom = _draftTo.subtract(const Duration(days: 30));
    _appliedQuery = DashboardMetricsQuery(
      from: _draftFrom,
      to: _draftTo,
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
    final metricsProvider = dashboardMetricsProvider(
      DashboardMetricsQuery(
        from: _appliedQuery.from,
        to: _appliedQuery.to,
        farmId: selectedFarmId,
      ),
    );
    final metricsAsync = ref.watch(metricsProvider);
    final showSkeleton = metricsAsync.isLoading;

    ref.listen(metricsProvider, (previous, next) {
      if (next.hasValue && mounted) {
        setState(() => _lastUpdated = DateTime.now());
      }
    });

    return AppPage(
      title: 'Dashboard',
      showHeader: false,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF6F7F5), Color(0xFFF2F5EE), Color(0xFFF8F6F2)],
          ),
        ),
        child: RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(metricsProvider);
            await ref.read(metricsProvider.future);
          },
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.md,
              AppSpacing.md,
              AppSpacing.md,
              AppSpacing.lg,
            ),
            children: [
              _FiltersCard(
                from: _draftFrom,
                to: _draftTo,
                onFromTap: () => _pickDate(isFrom: true),
                onToTap: () => _pickDate(isFrom: false),
                onApply: _applyFilters,
                formatDate: (date) => _dateFormatter.format(date),
              ),
              const SizedBox(height: AppSpacing.lg),
              if (showSkeleton)
                _buildLoadingState()
              else
                metricsAsync.when(
                  loading: _buildLoadingState,
                  error: (error, _) => _DashboardErrorState(
                    message: 'Falha ao carregar métricas do dashboard.',
                    onRetry: () => ref.invalidate(metricsProvider),
                  ),
                  data: (metrics) {
                    if (_isEmpty(metrics)) {
                      return const _DashboardEmptyState();
                    }
                    return _buildMetricsState(metrics, context);
                  },
                ),
              const SizedBox(height: AppSpacing.lg),
              Text(
                _lastUpdated == null
                    ? 'Última atualização: -'
                    : 'Última atualização: ${_dateTimeFormatter.format(_lastUpdated!)}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: const Color(0xFF6B7280),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMetricsState(DashboardMetrics metrics, BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final kpiCrossAxisCount = width >= 1080
        ? 4
        : width >= 700
        ? 2
        : 1;
    final insightsCrossAxisCount = width >= 900 ? 2 : 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DashboardSectionHeader(
          title: 'KPIs principais',
          subtitle: 'Leitura rápida do consumo operacional',
        ),
        const SizedBox(height: AppSpacing.md),
        GridView.count(
          crossAxisCount: kpiCrossAxisCount,
          mainAxisSpacing: AppSpacing.md,
          crossAxisSpacing: AppSpacing.md,
          mainAxisExtent: 196,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            KpiCard(
              title: 'Operações Finalizadas',
              icon: Icons.check_circle_outline_rounded,
              semanticLabel:
                  'Operações finalizadas ${metrics.operations.totalFinishedOperations}',
              numericValue: metrics.operations.totalFinishedOperations
                  .toDouble(),
              formatter: (value) => _numberFormatter.format(value),
              subtitle: 'No período selecionado',
            ),
            KpiCard(
              title: 'Quantidade Consumida',
              icon: Icons.science_outlined,
              semanticLabel:
                  'Quantidade consumida ${_numberFormatter.format(metrics.operations.totalQuantityConsumed)}',
              numericValue: metrics.operations.totalQuantityConsumed,
              formatter: (value) => _numberFormatter.format(value),
              subtitle: 'Volume total alocado',
            ),
            KpiCard(
              title: 'Custo Consumido',
              icon: Icons.payments_outlined,
              semanticLabel:
                  'Custo consumido ${_currencyFormatter.format(metrics.operations.totalCostConsumed)}',
              numericValue: metrics.operations.totalCostConsumed,
              formatter: (value) => _currencyFormatter.format(value),
              subtitle: 'Impacto financeiro do período',
            ),
            KpiCard(
              title: 'Produto Mais Usado',
              icon: Icons.workspace_premium_outlined,
              semanticLabel:
                  'Produto mais usado ${metrics.mostUsedProduct?.productName ?? 'não informado'}',
              valueLabel: metrics.mostUsedProduct?.productName ?? '-',
              subtitle: metrics.mostUsedProduct == null
                  ? 'Sem dados'
                  : '${metrics.mostUsedProduct!.productCode} • ${_numberFormatter.format(metrics.mostUsedProduct!.totalQuantityConsumed)} ${metrics.mostUsedProduct!.unit}',
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        const DashboardSectionHeader(
          title: 'Insumos',
          subtitle: 'Destaques de consumo e atenção de estoque',
        ),
        const SizedBox(height: AppSpacing.md),
        GridView.count(
          crossAxisCount: insightsCrossAxisCount,
          mainAxisSpacing: AppSpacing.md,
          crossAxisSpacing: AppSpacing.md,
          mainAxisExtent: 270,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            InsightCard(
              title: 'Produto mais usado',
              icon: Icons.local_florist_outlined,
              semanticLabel: 'Resumo do produto mais usado no período',
              lines: [
                ('Produto', metrics.mostUsedProduct?.productName ?? '-'),
                ('Código', metrics.mostUsedProduct?.productCode ?? '-'),
                (
                  'Quantidade',
                  metrics.mostUsedProduct == null
                      ? '-'
                      : '${_numberFormatter.format(metrics.mostUsedProduct!.totalQuantityConsumed)} ${metrics.mostUsedProduct!.unit}',
                ),
                (
                  'Custo',
                  metrics.mostUsedProduct == null
                      ? '-'
                      : _currencyFormatter.format(
                          metrics.mostUsedProduct!.totalCostConsumed,
                        ),
                ),
                (
                  'Itens de operação',
                  metrics.mostUsedProduct == null
                      ? '-'
                      : _numberFormatter.format(
                          metrics.mostUsedProduct!.operationItemCount,
                        ),
                ),
              ],
            ),
            InsightCard(
              title: 'Menor estoque estimado',
              icon: Icons.warning_amber_rounded,
              semanticLabel: 'Resumo do menor estoque estimado',
              highlight: true,
              badge: metrics.lowestStockProduct == null ? 'Sem dados' : 'Atenção',
              lines: [
                ('Produto', metrics.lowestStockProduct?.productName ?? '-'),
                ('Código', metrics.lowestStockProduct?.productCode ?? '-'),
                (
                  'Estoque estimado',
                  metrics.lowestStockProduct == null
                      ? '-'
                      : '${_numberFormatter.format(metrics.lowestStockProduct!.estimatedStockQuantity)} ${metrics.lowestStockProduct!.unit}',
                ),
                (
                  'Calculado até',
                  metrics.lowestStockProduct?.calculatedUntil == null
                      ? '-'
                      : _dateFormatter.format(
                          metrics.lowestStockProduct!.calculatedUntil!,
                        ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        const DashboardSectionHeader(
          title: 'Talhões',
          subtitle: 'Comparativo do maior e menor consumo',
        ),
        const SizedBox(height: AppSpacing.md),
        GridView.count(
          crossAxisCount: insightsCrossAxisCount,
          mainAxisSpacing: AppSpacing.md,
          crossAxisSpacing: AppSpacing.md,
          mainAxisExtent: 250,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            InsightCard(
              title: 'Talhão que mais consumiu',
              icon: Icons.trending_up_rounded,
              semanticLabel: 'Talhão com maior consumo no período',
              lines: [
                (
                  'Talhão',
                  metrics.fieldConsumption.highest?.fieldName ?? '-',
                ),
                (
                  'Fazenda',
                  metrics.fieldConsumption.highest?.farmName ?? '-',
                ),
                (
                  'Quantidade',
                  metrics.fieldConsumption.highest == null
                      ? '-'
                      : _numberFormatter.format(
                          metrics.fieldConsumption.highest!
                              .totalAllocatedQuantityConsumed,
                        ),
                ),
                (
                  'Custo',
                  metrics.fieldConsumption.highest == null
                      ? '-'
                      : _currencyFormatter.format(
                          metrics.fieldConsumption.highest!
                              .totalAllocatedCostConsumed,
                        ),
                ),
              ],
            ),
            InsightCard(
              title: 'Talhão que menos consumiu',
              icon: Icons.trending_down_rounded,
              semanticLabel: 'Talhão com menor consumo no período',
              lines: [
                (
                  'Talhão',
                  metrics.fieldConsumption.lowest?.fieldName ?? '-',
                ),
                (
                  'Fazenda',
                  metrics.fieldConsumption.lowest?.farmName ?? '-',
                ),
                (
                  'Quantidade',
                  metrics.fieldConsumption.lowest == null
                      ? '-'
                      : _numberFormatter.format(
                          metrics.fieldConsumption.lowest!
                              .totalAllocatedQuantityConsumed,
                        ),
                ),
                (
                  'Custo',
                  metrics.fieldConsumption.lowest == null
                      ? '-'
                      : _currencyFormatter.format(
                          metrics.fieldConsumption.lowest!
                              .totalAllocatedCostConsumed,
                        ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLoadingState() {
    final width = MediaQuery.sizeOf(context).width;
    final kpiCrossAxisCount = width >= 1080
        ? 4
        : width >= 700
        ? 2
        : 1;
    final insightsCrossAxisCount = width >= 900 ? 2 : 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DashboardSectionHeader(title: 'KPIs principais'),
        const SizedBox(height: AppSpacing.md),
        GridView.count(
          crossAxisCount: kpiCrossAxisCount,
          mainAxisSpacing: AppSpacing.md,
          crossAxisSpacing: AppSpacing.md,
          mainAxisExtent: 186,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(4, (_) => const _SkeletonCard()),
        ),
        const SizedBox(height: AppSpacing.lg),
        const DashboardSectionHeader(title: 'Insumos'),
        const SizedBox(height: AppSpacing.md),
        GridView.count(
          crossAxisCount: insightsCrossAxisCount,
          mainAxisSpacing: AppSpacing.md,
          crossAxisSpacing: AppSpacing.md,
          mainAxisExtent: 250,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(2, (_) => const _SkeletonCard()),
        ),
      ],
    );
  }

  bool _isEmpty(DashboardMetrics metrics) {
    return metrics.operations.totalFinishedOperations == 0 &&
        metrics.operations.totalQuantityConsumed == 0 &&
        metrics.operations.totalCostConsumed == 0 &&
        metrics.mostUsedProduct == null &&
        metrics.lowestStockProduct == null &&
        metrics.fieldConsumption.highest == null &&
        metrics.fieldConsumption.lowest == null;
  }

  Future<void> _pickDate({required bool isFrom}) async {
    final initial = isFrom ? _draftFrom : _draftTo;
    final selected = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: DateTime(2020, 1, 1),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (selected == null) {
      return;
    }

    setState(() {
      if (isFrom) {
        _draftFrom = DateTime(selected.year, selected.month, selected.day, 0, 0, 0);
      } else {
        _draftTo = DateTime(selected.year, selected.month, selected.day, 23, 59, 59);
      }
    });
  }

  void _applyFilters() {
    if (_draftFrom.isAfter(_draftTo)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('A data inicial deve ser menor que a final.')),
      );
      return;
    }

    setState(() {
      _appliedQuery = DashboardMetricsQuery(
        from: _draftFrom,
        to: _draftTo,
      );
    });
  }
}

class _FiltersCard extends StatelessWidget {
  const _FiltersCard({
    required this.from,
    required this.to,
    required this.onFromTap,
    required this.onToTap,
    required this.onApply,
    required this.formatDate,
  });

  final DateTime from;
  final DateTime to;
  final VoidCallback onFromTap;
  final VoidCallback onToTap;
  final VoidCallback onApply;
  final String Function(DateTime) formatDate;

  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.sizeOf(context).width >= 720;
    final theme = Theme.of(context);

    return AppCard(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0x40FFFFFF)),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFDFEFC), Color(0xFFF7F9F6)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Filtros',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: const Color(0xFF1F2937),
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              if (isTablet)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _DateInput(
                        label: 'De',
                        value: formatDate(from),
                        onTap: onFromTap,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Expanded(
                      child: _DateInput(
                        label: 'Até',
                        value: formatDate(to),
                        onTap: onToTap,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    SizedBox(
                      height: 56,
                      child: FilledButton.icon(
                        onPressed: onApply,
                        icon: const Icon(Icons.tune_rounded),
                        label: const Text('Aplicar'),
                      ),
                    ),
                  ],
                )
              else
                Column(
                  children: [
                    _DateInput(
                      label: 'De',
                      value: formatDate(from),
                      onTap: onFromTap,
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    _DateInput(
                      label: 'Até',
                      value: formatDate(to),
                      onTap: onToTap,
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FilledButton.icon(
                        onPressed: onApply,
                        icon: const Icon(Icons.tune_rounded),
                        label: const Text('Aplicar'),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DateInput extends StatelessWidget {
  const _DateInput({
    required this.label,
    required this.value,
    required this.onTap,
  });

  final String label;
  final String value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
      onTap: onTap,
      child: InputDecorator(
        decoration: InputDecoration(labelText: label),
        child: Row(
          children: [
            Expanded(
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Icon(Icons.calendar_month_rounded, size: 18),
          ],
        ),
      ),
    );
  }
}

class _DashboardErrorState extends StatelessWidget {
  const _DashboardErrorState({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            const Icon(
              Icons.wifi_tethering_error_rounded,
              color: Color(0xFFB94834),
              size: 32,
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF1F2937),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Tentar novamente'),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardEmptyState extends StatelessWidget {
  const _DashboardEmptyState();

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          children: [
            Container(
              width: 58,
              height: 58,
              decoration: const BoxDecoration(
                color: Color(0x1A2F6F4F),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.insights_outlined,
                color: Color(0xFF2F6F4F),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              'Sem dados para este período',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w800,
                color: const Color(0xFF1F2937),
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              'Ajuste os filtros e tente novamente para visualizar os indicadores.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: const Color(0xFF6B7280),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SkeletonCard extends StatelessWidget {
  const _SkeletonCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: const Color(0x33FFFFFF)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSkeleton(width: 38, height: 38),
          SizedBox(height: AppSpacing.sm),
          AppSkeleton(width: 88, height: 28),
          SizedBox(height: AppSpacing.xs),
          AppSkeleton(width: 120, height: 14),
          Spacer(),
          AppSkeleton(width: 140, height: 12),
        ],
      ),
    );
  }
}
