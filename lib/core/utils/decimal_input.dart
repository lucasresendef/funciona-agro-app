import 'dart:math' as math;

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

double? parseDecimalInput(String? value) {
  if (value == null) {
    return null;
  }

  final trimmed = value.trim();
  if (trimmed.isEmpty) {
    return null;
  }

  var normalized = trimmed.replaceAll(' ', '');
  final hasComma = normalized.contains(',');
  final hasDot = normalized.contains('.');

  if (hasComma && hasDot) {
    final decimalIndex = math.max(
      normalized.lastIndexOf(','),
      normalized.lastIndexOf('.'),
    );
    final integerPart = normalized
        .substring(0, decimalIndex)
        .replaceAll(RegExp(r'[.,]'), '');
    final fractionPart = normalized
        .substring(decimalIndex + 1)
        .replaceAll(RegExp(r'[.,]'), '');
    normalized = '$integerPart.$fractionPart';
  } else {
    normalized = normalized.replaceAll(',', '.');
  }

  return double.tryParse(normalized);
}

String formatDecimalInput(num value, {int decimalDigits = 2}) {
  return NumberFormat.decimalPatternDigits(
    locale: 'pt_BR',
    decimalDigits: decimalDigits,
  ).format(value);
}

class DecimalTextInputFormatter extends TextInputFormatter {
  const DecimalTextInputFormatter({this.decimalDigits = 2});

  final int decimalDigits;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var text = newValue.text.replaceAll('.', ',');
    text = text.replaceAll(RegExp(r'[^0-9,]'), '');

    final firstComma = text.indexOf(',');
    if (firstComma >= 0) {
      final integerPart = text.substring(0, firstComma + 1);
      final fractionPart = text.substring(firstComma + 1).replaceAll(',', '');
      final limitedFraction = fractionPart.length > decimalDigits
          ? fractionPart.substring(0, decimalDigits)
          : fractionPart;
      text = '$integerPart$limitedFraction';
    }

    final selectionOffset = math.min(text.length, newValue.selection.end);
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: selectionOffset),
      composing: TextRange.empty,
    );
  }
}
