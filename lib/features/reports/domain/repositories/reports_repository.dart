import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';

abstract interface class ReportsRepository {
  Future<DashboardMetrics> getDashboardMetrics(GetDashboardMetricsInput input);

  Future<ReportJobCreated> createInventoryMovementsCsvJob(
    CreateInventoryMovementsCsvJobInput input,
  );

  Future<ReportJob> getReportJob(String jobId);

  Future<DownloadedReportFile> downloadReportJobCsv(String jobId);

  Future<FieldConsumptionReport> getFieldConsumptionReport({
    required String fieldId,
    required DateTime from,
    required DateTime to,
  });
}
