import 'package:field_management_app/features/reports/data/datasources/reports_remote_datasource.dart';
import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';
import 'package:field_management_app/features/reports/domain/repositories/reports_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final reportsRepositoryProvider = Provider<ReportsRepository>((ref) {
  return ReportsRepositoryImpl(ref.watch(reportsRemoteDataSourceProvider));
});

class ReportsRepositoryImpl implements ReportsRepository {
  const ReportsRepositoryImpl(this._remoteDataSource);

  final ReportsRemoteDataSource _remoteDataSource;

  @override
  Future<ReportJobCreated> createInventoryMovementsCsvJob(
    CreateInventoryMovementsCsvJobInput input,
  ) => _remoteDataSource.createInventoryMovementsCsvJob(input);

  @override
  Future<DownloadedReportFile> downloadReportJobCsv(String jobId) =>
      _remoteDataSource.downloadReportJobCsv(jobId);

  @override
  Future<ReportJob> getReportJob(String jobId) =>
      _remoteDataSource.getReportJob(jobId);
}
