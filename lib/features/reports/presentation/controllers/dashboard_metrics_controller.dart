import 'package:field_management_app/features/reports/data/repositories/reports_repository_impl.dart';
import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';
import 'package:field_management_app/features/reports/domain/usecases/reports_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardMetricsQuery {
  const DashboardMetricsQuery({
    required this.from,
    required this.to,
    this.farmId,
  });

  final DateTime from;
  final DateTime to;
  final String? farmId;

  GetDashboardMetricsInput toInput() {
    return GetDashboardMetricsInput(from: from, to: to, farmId: farmId);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is DashboardMetricsQuery &&
        other.from == from &&
        other.to == to &&
        other.farmId == farmId;
  }

  @override
  int get hashCode => Object.hash(from, to, farmId);
}

final dashboardMetricsProvider = FutureProvider.autoDispose
    .family<DashboardMetrics, DashboardMetricsQuery>((ref, query) {
      final useCases = ReportsUseCases(ref.read(reportsRepositoryProvider));
      return useCases.getDashboardMetrics(query.toInput());
    });
