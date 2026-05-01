import 'package:flutter/material.dart';

abstract final class AppSnackbar {
  static void showSuccess(BuildContext context, String message) {
    _show(context, message, Colors.green.shade700);
  }

  static void showError(BuildContext context, String message) {
    _show(context, message, Colors.red.shade800);
  }

  static void _show(
    BuildContext context,
    String message,
    Color backgroundColor,
  ) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(backgroundColor: backgroundColor, content: Text(message)),
      );
  }
}
