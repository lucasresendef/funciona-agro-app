import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';
import 'package:field_management_app/features/reports/domain/repositories/reports_repository.dart';
import 'package:field_management_app/features/reports/domain/usecases/reports_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeReportsRepository implements ReportsRepository {
  @override
  Future<DashboardMetrics> getDashboardMetrics(
    GetDashboardMetricsInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<FieldConsumptionReport> getFieldConsumptionReport({
    required String fieldId,
    required DateTime from,
    required DateTime to,
  }) async {
    return FieldConsumptionReport(
      fieldId: fieldId,
      fieldName: 'Talhão',
      farmId: 'farm',
      farmName: 'Fazenda',
      period: FieldConsumptionReportPeriod(from: from, to: to),
      summary: const FieldConsumptionReportSummary(
        totalAllocatedQuantityConsumed: 0,
        totalAllocatedCostConsumed: 0,
        operationCount: 0,
        itemCount: 0,
      ),
      items: const [],
    );
  }

  _FakeReportsRepository(this._jobs);

  final List<ReportJob> _jobs;
  int _index = 0;
  int failuresBeforeSuccess = 0;

  @override
  Future<ReportJobCreated> createInventoryMovementsCsvJob(
    CreateInventoryMovementsCsvJobInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<DownloadedReportFile> downloadReportJobCsv(String jobId) {
    throw UnimplementedError();
  }

  @override
  Future<ReportJob> getReportJob(String jobId) async {
    if (failuresBeforeSuccess > 0) {
      failuresBeforeSuccess--;
      throw Exception('transient');
    }
    final item = _jobs[_index < _jobs.length ? _index : _jobs.length - 1];
    _index++;
    return item;
  }
}

ReportJob _job(ReportJobStatus status, {String? error}) {
  return ReportJob(
    jobId: 'job-1',
    type: 'INVENTORY_MOVEMENTS_CSV',
    status: status,
    createdAt: DateTime(2026, 5, 1),
    completedAt: status == ReportJobStatus.completed
        ? DateTime(2026, 5, 1, 10)
        : null,
    error: error,
    hasFile: status == ReportJobStatus.completed,
  );
}

void main() {
  test('polling finaliza em COMPLETED', () async {
    final repo = _FakeReportsRepository([
      _job(ReportJobStatus.pending),
      _job(ReportJobStatus.processing),
      _job(ReportJobStatus.completed),
    ]);
    final useCase = ReportsUseCases(repo);

    final result = await useCase.pollReportJobUntilFinalStatus(
      'job-1',
      interval: Duration.zero,
      timeout: const Duration(seconds: 1),
      delay: (_) async {},
    );

    expect(result.status, ReportJobStatus.completed);
  });

  test('polling retorna FAILED quando backend falha', () async {
    final repo = _FakeReportsRepository([
      _job(ReportJobStatus.processing),
      _job(ReportJobStatus.failed, error: 'Erro backend'),
    ]);
    final useCase = ReportsUseCases(repo);

    final result = await useCase.pollReportJobUntilFinalStatus(
      'job-1',
      interval: Duration.zero,
      timeout: const Duration(seconds: 1),
      delay: (_) async {},
    );

    expect(result.status, ReportJobStatus.failed);
    expect(result.error, 'Erro backend');
  });

  test('polling lança timeout ao extrapolar limite', () async {
    final repo = _FakeReportsRepository([
      _job(ReportJobStatus.pending),
      _job(ReportJobStatus.pending),
      _job(ReportJobStatus.pending),
    ]);
    final useCase = ReportsUseCases(repo);

    expect(
      () => useCase.pollReportJobUntilFinalStatus(
        'job-1',
        interval: const Duration(milliseconds: 1),
        timeout: Duration.zero,
        delay: (_) async {},
      ),
      throwsA(isA<ReportJobTimeoutException>()),
    );
  });

  test('polling tolera falhas transitórias de rede', () async {
    final repo = _FakeReportsRepository([_job(ReportJobStatus.completed)])
      ..failuresBeforeSuccess = 2;
    final useCase = ReportsUseCases(repo);

    final result = await useCase.pollReportJobUntilFinalStatus(
      'job-1',
      interval: Duration.zero,
      timeout: const Duration(seconds: 1),
      delay: (_) async {},
    );

    expect(result.status, ReportJobStatus.completed);
  });

  test('polling cancela quando sinalizado', () async {
    final repo = _FakeReportsRepository([_job(ReportJobStatus.processing)]);
    final useCase = ReportsUseCases(repo);

    expect(
      () => useCase.pollReportJobUntilFinalStatus(
        'job-1',
        interval: Duration.zero,
        timeout: const Duration(seconds: 1),
        delay: (_) async {},
        isCancelled: () => true,
      ),
      throwsA(isA<ReportJobCancelledException>()),
    );
  });
}
