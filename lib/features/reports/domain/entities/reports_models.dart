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

class ReportJobTimeoutException implements Exception {}

class ReportJobCancelledException implements Exception {}
