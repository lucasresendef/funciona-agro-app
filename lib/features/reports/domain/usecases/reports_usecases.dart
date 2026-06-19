import 'dart:async';
import 'dart:io';

import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';
import 'package:field_management_app/features/reports/domain/repositories/reports_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ReportsUseCases {
  const ReportsUseCases(this._repository);

  final ReportsRepository _repository;

  Future<DashboardMetrics> getDashboardMetrics(GetDashboardMetricsInput input) {
    return _repository.getDashboardMetrics(input);
  }

  Future<ReportJobCreated> createInventoryMovementsCsvJob(
    CreateInventoryMovementsCsvJobInput input,
  ) => _repository.createInventoryMovementsCsvJob(input);

  Future<ReportJob> getReportJob(String jobId) =>
      _repository.getReportJob(jobId);

  Future<FieldConsumptionReport> getFieldConsumptionReport({
    required String fieldId,
    required DateTime from,
    required DateTime to,
  }) => _repository.getFieldConsumptionReport(
    fieldId: fieldId,
    from: from,
    to: to,
  );

  Future<ReportJob> pollReportJobUntilFinalStatus(
    String jobId, {
    Duration interval = const Duration(seconds: 2),
    Duration timeout = const Duration(minutes: 2),
    Future<void> Function(Duration)? delay,
    bool Function()? isCancelled,
  }) async {
    final wait = delay ?? Future<void>.delayed;
    final startedAt = DateTime.now();
    var transientErrors = 0;

    while (DateTime.now().difference(startedAt) <= timeout) {
      if (isCancelled?.call() == true) {
        throw ReportJobCancelledException();
      }

      ReportJob job;
      try {
        job = await getReportJob(jobId);
        transientErrors = 0;
      } catch (_) {
        transientErrors++;
        if (transientErrors >= 3) {
          rethrow;
        }
        await wait(interval);
        continue;
      }
      if (job.status == ReportJobStatus.completed) {
        return job;
      }

      if (job.status == ReportJobStatus.failed) {
        return job;
      }

      await wait(interval);
    }

    throw ReportJobTimeoutException();
  }

  Future<String> downloadAndSaveCsv(String jobId) async {
    final file = await _repository.downloadReportJobCsv(jobId);
    final directory = await getApplicationDocumentsDirectory();
    final reportsDir = Directory('${directory.path}/reports');
    if (!await reportsDir.exists()) {
      await reportsDir.create(recursive: true);
    }

    final outputFile = File('${reportsDir.path}/${file.filename}');
    await outputFile.writeAsBytes(file.bytes, flush: true);

    if (kDebugMode) {
      debugPrint('[Reports] CSV salvo em: ${outputFile.path}');
    }

    return outputFile.path;
  }

  Future<void> shareFile(String path) async {
    await SharePlus.instance.share(ShareParams(files: [XFile(path)]));
  }

  Future<OpenResult> openFile(String path) {
    return OpenFilex.open(path);
  }
}
