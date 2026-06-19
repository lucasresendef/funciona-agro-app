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

  Future<DashboardMetrics> getDashboardMetrics(
    GetDashboardMetricsInput input,
  ) async {
    final payload =
        await _apiClient.get(
              '/reports/dashboard-metrics',
              queryParameters: {
                'from': input.from.toUtc().toIso8601String(),
                'to': input.to.toUtc().toIso8601String(),
                'farmId': input.farmId,
              },
            )
            as Map<String, dynamic>;

    final data = (payload['data'] is Map<String, dynamic>)
        ? payload['data'] as Map<String, dynamic>
        : payload;

    final period = _asMap(data['period']);
    final filters = _asMap(data['filters']);
    final operations = _asMap(data['operations']);
    final mostUsedProduct = _asMapOrNull(data['mostUsedProduct']);
    final lowestStockProduct = _asMapOrNull(data['lowestStockProduct']);
    final fieldConsumption = _asMap(data['fieldConsumption']);

    return DashboardMetrics(
      period: DashboardMetricsPeriod(
        from:
            DateTime.tryParse(period['from'] as String? ?? '') ??
            input.from.toUtc(),
        to:
            DateTime.tryParse(period['to'] as String? ?? '') ??
            input.to.toUtc(),
      ),
      filters: DashboardMetricsFilters(farmId: filters['farmId'] as String?),
      operations: DashboardOperationsMetrics(
        totalFinishedOperations: _asInt(operations['totalFinishedOperations']),
        totalQuantityConsumed: _asDouble(operations['totalQuantityConsumed']),
        totalCostConsumed: _asDouble(operations['totalCostConsumed']),
      ),
      mostUsedProduct: mostUsedProduct == null
          ? null
          : DashboardMostUsedProduct(
              productCode: mostUsedProduct['productCode'] as String? ?? '-',
              productName: mostUsedProduct['productName'] as String? ?? '-',
              unit: mostUsedProduct['unit'] as String? ?? '-',
              totalQuantityConsumed: _asDouble(
                mostUsedProduct['totalQuantityConsumed'],
              ),
              totalCostConsumed: _asDouble(mostUsedProduct['totalCostConsumed']),
              operationItemCount: _asInt(mostUsedProduct['operationItemCount']),
            ),
      lowestStockProduct: lowestStockProduct == null
          ? null
          : DashboardLowestStockProduct(
              productCode: lowestStockProduct['productCode'] as String? ?? '-',
              productName: lowestStockProduct['productName'] as String? ?? '-',
              unit: lowestStockProduct['unit'] as String? ?? '-',
              estimatedStockQuantity: _asDouble(
                lowestStockProduct['estimatedStockQuantity'],
              ),
              calculatedUntil:
                  DateTime.tryParse(
                    lowestStockProduct['calculatedUntil'] as String? ?? '',
                  )?.toLocal(),
            ),
      fieldConsumption: DashboardFieldConsumptionMetrics(
        highest: _parseFieldConsumptionEntry(fieldConsumption['highest']),
        lowest: _parseFieldConsumptionEntry(fieldConsumption['lowest']),
      ),
    );
  }

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

  Future<FieldConsumptionReport> getFieldConsumptionReport({
    required String fieldId,
    required DateTime from,
    required DateTime to,
  }) async {
    final queryParameters = {
      'fieldId': fieldId,
      'from': from.toUtc().toIso8601String(),
      'to': to.toUtc().toIso8601String(),
    };
    try {
      if (kDebugMode) {
        debugPrint(
          '[Reports][field-consumption] GET /reports/field-consumption query=$queryParameters',
        );
      }
      final payload =
          await _apiClient.get(
                '/reports/field-consumption',
                queryParameters: queryParameters,
              )
              as Map<String, dynamic>;

      if (kDebugMode) {
        debugPrint('[Reports][field-consumption] payload=$payload');
      }

      final data = (payload['data'] is Map<String, dynamic>)
          ? payload['data'] as Map<String, dynamic>
          : payload;
      final summary = data['summary'] as Map<String, dynamic>? ?? const {};
      final period = data['period'] as Map<String, dynamic>? ?? const {};
      final itemsRaw = data['items'] as List<dynamic>? ?? const [];

      return FieldConsumptionReport(
        fieldId: data['fieldId'] as String? ?? fieldId,
        fieldName: data['fieldName'] as String? ?? '-',
        farmId: data['farmId'] as String? ?? '',
        farmName: data['farmName'] as String? ?? '-',
        period: FieldConsumptionReportPeriod(
          from: DateTime.tryParse(period['from'] as String? ?? '') ?? from,
          to: DateTime.tryParse(period['to'] as String? ?? '') ?? to,
        ),
        summary: FieldConsumptionReportSummary(
          totalAllocatedQuantityConsumed: _asDouble(
            summary['totalAllocatedQuantityConsumed'],
          ),
          totalAllocatedCostConsumed: _asDouble(
            summary['totalAllocatedCostConsumed'],
          ),
          operationCount: _asInt(summary['operationCount']),
          itemCount: _asInt(summary['itemCount']),
        ),
        items: itemsRaw
            .whereType<Map<String, dynamic>>()
            .map(
              (item) => FieldConsumptionReportItem(
                productId: item['productId'] as String? ?? '',
                productCode: item['productCode'] as String? ?? '-',
                productName: item['productName'] as String? ?? '-',
                unit: item['unit'] as String? ?? '-',
                totalAllocatedQuantityConsumed: _asDouble(
                  item['totalAllocatedQuantityConsumed'],
                ),
                totalAllocatedCostConsumed: _asDouble(
                  item['totalAllocatedCostConsumed'],
                ),
              ),
            )
            .toList(),
      );
    } catch (error, stackTrace) {
      if (kDebugMode) {
        debugPrint('[Reports][field-consumption] error=$error');
        debugPrint(
          '[Reports][field-consumption] stackTrace=${stackTrace.toString()}',
        );
      }
      rethrow;
    }
  }

  double _asDouble(dynamic value) {
    if (value == null) {
      return 0;
    }
    if (value is num) {
      return value.toDouble();
    }
    if (value is String) {
      return double.tryParse(value.replaceAll(',', '.')) ?? 0;
    }
    return 0;
  }

  int _asInt(dynamic value) {
    if (value == null) {
      return 0;
    }
    if (value is int) {
      return value;
    }
    if (value is num) {
      return value.toInt();
    }
    if (value is String) {
      return int.tryParse(value) ?? 0;
    }
    return 0;
  }

  Map<String, dynamic> _asMap(dynamic value) {
    if (value is Map<String, dynamic>) {
      return value;
    }
    return const {};
  }

  Map<String, dynamic>? _asMapOrNull(dynamic value) {
    if (value is Map<String, dynamic>) {
      return value;
    }
    return null;
  }

  DashboardFieldConsumptionEntry? _parseFieldConsumptionEntry(dynamic raw) {
    final map = _asMapOrNull(raw);
    if (map == null || map.isEmpty) {
      return null;
    }
    return DashboardFieldConsumptionEntry(
      fieldName: map['fieldName'] as String? ?? '-',
      farmName: map['farmName'] as String? ?? '-',
      totalAllocatedQuantityConsumed: _asDouble(
        map['totalAllocatedQuantityConsumed'],
      ),
      totalAllocatedCostConsumed: _asDouble(map['totalAllocatedCostConsumed']),
    );
  }
}
