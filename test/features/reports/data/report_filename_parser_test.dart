import 'package:field_management_app/features/reports/data/utils/report_filename_parser.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('extrai filename simples do content-disposition', () {
    const header = 'attachment; filename="operacoes.csv"';
    expect(extractFilenameFromContentDisposition(header), 'operacoes.csv');
  });

  test('extrai filename UTF-8 do content-disposition', () {
    const header = "attachment; filename*=UTF-8''operacoes%20maio.csv";
    expect(extractFilenameFromContentDisposition(header), 'operacoes maio.csv');
  });

  test('retorna null quando header é inválido', () {
    expect(extractFilenameFromContentDisposition(null), isNull);
    expect(extractFilenameFromContentDisposition(''), isNull);
  });
}
