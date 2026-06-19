import 'package:field_management_app/core/utils/decimal_input.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('decimal input', () {
    test('parse aceita virgula e ponto', () {
      expect(parseDecimalInput('3,60'), 3.6);
      expect(parseDecimalInput('3.60'), 3.6);
    });

    test('parse aceita separadores de milhar', () {
      expect(parseDecimalInput('1.234,56'), 1234.56);
      expect(parseDecimalInput('1,234.56'), 1234.56);
    });

    test('format usa locale pt_BR com duas casas', () {
      expect(formatDecimalInput(3), '3,00');
      expect(formatDecimalInput(69.89), '69,89');
    });

    test('formatter normaliza separador e limita casas decimais', () {
      const formatter = DecimalTextInputFormatter();

      final result = formatter.formatEditUpdate(
        const TextEditingValue(),
        const TextEditingValue(
          text: '12.345',
          selection: TextSelection.collapsed(offset: 6),
        ),
      );

      expect(result.text, '12,34');
    });

    test('formatter remove caracteres invalidos', () {
      const formatter = DecimalTextInputFormatter();

      final result = formatter.formatEditUpdate(
        const TextEditingValue(),
        const TextEditingValue(
          text: 'a1,2b3',
          selection: TextSelection.collapsed(offset: 6),
        ),
      );

      expect(result.text, '1,23');
    });
  });
}
