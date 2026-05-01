import 'package:dio/dio.dart';
import 'package:field_management_app/core/network/api_client.dart';
import 'package:field_management_app/features/reports/data/utils/report_filename_parser.dart';
import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final reportsRemoteDataSourceProvider = Provider<ReportsRemoteDataSource>((
  ref,
) {
  return ReportsRemoteDataSource(
    apiClient: ref.watch(apiClientProvider),
    dio: ref.watch(apiDioProvider),
  );
});

class ReportsRemoteDataSource {
  const ReportsRemoteDataSource({
    required ApiClient apiClient,
    required Dio dio,
  }) : _apiClient = apiClient,
       _dio = dio;

  final ApiClient _apiClient;
  final Dio _dio;

  Future<ReportJobCreated> createInventoryMovementsCsvJob(
    CreateInventoryMovementsCsvJobInput input,
  ) async {
    final payload =
        await _apiClient.post(
              '/reports/inventory-movements/csv',
              data: {
                'farmId': input.farmId,
                'from': input.from.toUtc().toIso8601String(),
                'to': input.to.toUtc().toIso8601String(),
              },
            )
            as Map<String, dynamic>;

    if (kDebugMode) {
      debugPrint('[Reports] CSV job criado: ${payload['jobId']}');
    }

    return ReportJobCreated(
      jobId: payload['jobId'] as String,
      status: ReportJobStatusX.fromApi(payload['status'] as String),
      createdAt: DateTime.parse(payload['createdAt'] as String),
    );
  }

  Future<ReportJob> getReportJob(String jobId) async {
    final payload =
        await _apiClient.get('/reports/jobs/$jobId') as Map<String, dynamic>;

    return ReportJob(
      jobId: payload['jobId'] as String,
      type: payload['type'] as String,
      status: ReportJobStatusX.fromApi(payload['status'] as String),
      createdAt: DateTime.parse(payload['createdAt'] as String),
      completedAt: payload['completedAt'] == null
          ? null
          : DateTime.parse(payload['completedAt'] as String),
      error: payload['error'] as String?,
      hasFile: payload['hasFile'] as bool? ?? false,
    );
  }

  Future<DownloadedReportFile> downloadReportJobCsv(String jobId) async {
    final response = await _dio.get<List<int>>(
      '/reports/jobs/$jobId/download',
      options: Options(responseType: ResponseType.bytes),
    );

    final bytes = response.data;
    if (bytes == null || bytes.isEmpty) {
      throw StateError('Arquivo CSV vazio para o job $jobId.');
    }

    final header = response.headers.value('content-disposition');
    final filename =
        extractFilenameFromContentDisposition(header) ??
        'relatorio_operacoes_${DateTime.now().millisecondsSinceEpoch}.csv';

    return DownloadedReportFile(bytes: bytes, filename: filename);
  }
}
