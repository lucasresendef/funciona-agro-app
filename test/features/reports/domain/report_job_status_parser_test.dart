import 'package:field_management_app/features/reports/domain/entities/reports_models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('parser converte status da API corretamente', () {
    expect(ReportJobStatusX.fromApi('PENDING'), ReportJobStatus.pending);
    expect(ReportJobStatusX.fromApi('processing'), ReportJobStatus.processing);
    expect(ReportJobStatusX.fromApi('COMPLETED'), ReportJobStatus.completed);
    expect(ReportJobStatusX.fromApi('FAILED'), ReportJobStatus.failed);
  });

  test('parser lança erro para status inválido', () {
    expect(() => ReportJobStatusX.fromApi('UNKNOWN'), throwsFormatException);
  });
}
