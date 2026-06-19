import 'package:field_management_app/core/utils/decimal_input.dart';

abstract final class FormValidators {
  static String? requiredField(String? value, {String label = 'Campo'}) {
    if (value == null || value.trim().isEmpty) {
      return '$label é obrigatório.';
    }

    return null;
  }

  static String? email(String? value) {
    final required = requiredField(value, label: 'E-mail');
    if (required != null) {
      return required;
    }

    final emailPattern = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
    if (!emailPattern.hasMatch(value!.trim())) {
      return 'Informe um e-mail válido.';
    }

    return null;
  }

  static String? positiveNumber(String? value, {String label = 'Valor'}) {
    final required = requiredField(value, label: label);
    if (required != null) {
      return required;
    }

    final parsed = parseDecimalInput(value);
    if (parsed == null) {
      return '$label inválido.';
    }

    if (parsed <= 0) {
      return '$label deve ser maior que zero.';
    }

    return null;
  }

  static String? nonNegativeNumber(String? value, {String label = 'Valor'}) {
    final required = requiredField(value, label: label);
    if (required != null) {
      return required;
    }

    final parsed = parseDecimalInput(value);
    if (parsed == null) {
      return '$label inválido.';
    }

    if (parsed < 0) {
      return '$label deve ser maior ou igual a zero.';
    }

    return null;
  }
}
