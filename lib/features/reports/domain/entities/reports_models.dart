enum ReportJobStatus { pending, processing, completed, failed }

extension ReportJobStatusX on ReportJobStatus {
  static ReportJobStatus fromApi(String value) {
    switch (value.toUpperCase()) {
      case 'PENDING':
        return ReportJobStatus.pending;
      case 'PROCESSING':
        return ReportJobStatus.processing;
      case 'COMPLETED':
        return ReportJobStatus.completed;
      case 'FAILED':
        return ReportJobStatus.failed;
      default:
        throw FormatException('Status de job de relatório inválido: $value');
    }
  }
}

class CreateInventoryMovementsCsvJobInput {
  const CreateInventoryMovementsCsvJobInput({
    required this.farmId,
    required this.from,
    required this.to,
  });

  final String farmId;
  final DateTime from;
  final DateTime to;
}

class ReportJobCreated {
  const ReportJobCreated({
    required this.jobId,
    required this.status,
    required this.createdAt,
  });

  final String jobId;
  final ReportJobStatus status;
  final DateTime createdAt;
}

class ReportJob {
  const ReportJob({
    required this.jobId,
    required this.type,
    required this.status,
    required this.createdAt,
    required this.completedAt,
    required this.error,
    required this.hasFile,
  });

  final String jobId;
  final String type;
  final ReportJobStatus status;
  final DateTime createdAt;
  final DateTime? completedAt;
  final String? error;
  final bool hasFile;
}

class DownloadedReportFile {
  const DownloadedReportFile({required this.bytes, required this.filename});

  final List<int> bytes;
  final String filename;
}

class FieldConsumptionReportPeriod {
  const FieldConsumptionReportPeriod({required this.from, required this.to});

  final DateTime from;
  final DateTime to;
}

class FieldConsumptionReportSummary {
  const FieldConsumptionReportSummary({
    required this.totalAllocatedQuantityConsumed,
    required this.totalAllocatedCostConsumed,
    required this.operationCount,
    required this.itemCount,
  });

  final double totalAllocatedQuantityConsumed;
  final double totalAllocatedCostConsumed;
  final int operationCount;
  final int itemCount;
}

class FieldConsumptionReportItem {
  const FieldConsumptionReportItem({
    required this.productId,
    required this.productCode,
    required this.productName,
    required this.unit,
    required this.totalAllocatedQuantityConsumed,
    required this.totalAllocatedCostConsumed,
  });

  final String productId;
  final String productCode;
  final String productName;
  final String unit;
  final double totalAllocatedQuantityConsumed;
  final double totalAllocatedCostConsumed;
}

class FieldConsumptionReport {
  const FieldConsumptionReport({
    required this.fieldId,
    required this.fieldName,
    required this.farmId,
    required this.farmName,
    required this.period,
    required this.summary,
    required this.items,
  });

  final String fieldId;
  final String fieldName;
  final String farmId;
  final String farmName;
  final FieldConsumptionReportPeriod period;
  final FieldConsumptionReportSummary summary;
  final List<FieldConsumptionReportItem> items;
}

class GetDashboardMetricsInput {
  const GetDashboardMetricsInput({
    required this.from,
    required this.to,
    this.farmId,
  });

  final DateTime from;
  final DateTime to;
  final String? farmId;
}

class DashboardMetricsPeriod {
  const DashboardMetricsPeriod({required this.from, required this.to});

  final DateTime from;
  final DateTime to;
}

class DashboardMetricsFilters {
  const DashboardMetricsFilters({this.farmId});

  final String? farmId;
}

class DashboardOperationsMetrics {
  const DashboardOperationsMetrics({
    required this.totalFinishedOperations,
    required this.totalQuantityConsumed,
    required this.totalCostConsumed,
  });

  final int totalFinishedOperations;
  final double totalQuantityConsumed;
  final double totalCostConsumed;
}

class DashboardMostUsedProduct {
  const DashboardMostUsedProduct({
    required this.productCode,
    required this.productName,
    required this.unit,
    required this.totalQuantityConsumed,
    required this.totalCostConsumed,
    required this.operationItemCount,
  });

  final String productCode;
  final String productName;
  final String unit;
  final double totalQuantityConsumed;
  final double totalCostConsumed;
  final int operationItemCount;
}

class DashboardLowestStockProduct {
  const DashboardLowestStockProduct({
    required this.productCode,
    required this.productName,
    required this.unit,
    required this.estimatedStockQuantity,
    required this.calculatedUntil,
  });

  final String productCode;
  final String productName;
  final String unit;
  final double estimatedStockQuantity;
  final DateTime? calculatedUntil;
}

class DashboardFieldConsumptionEntry {
  const DashboardFieldConsumptionEntry({
    required this.fieldName,
    required this.farmName,
    required this.totalAllocatedQuantityConsumed,
    required this.totalAllocatedCostConsumed,
  });

  final String fieldName;
  final String farmName;
  final double totalAllocatedQuantityConsumed;
  final double totalAllocatedCostConsumed;
}

class DashboardFieldConsumptionMetrics {
  const DashboardFieldConsumptionMetrics({this.highest, this.lowest});

  final DashboardFieldConsumptionEntry? highest;
  final DashboardFieldConsumptionEntry? lowest;
}

class DashboardMetrics {
  const DashboardMetrics({
    required this.period,
    required this.filters,
    required this.operations,
    required this.mostUsedProduct,
    required this.lowestStockProduct,
    required this.fieldConsumption,
  });

  final DashboardMetricsPeriod period;
  final DashboardMetricsFilters filters;
  final DashboardOperationsMetrics operations;
  final DashboardMostUsedProduct? mostUsedProduct;
  final DashboardLowestStockProduct? lowestStockProduct;
  final DashboardFieldConsumptionMetrics fieldConsumption;
}

class ReportJobTimeoutException implements Exception {}

class ReportJobCancelledException implements Exception {}
