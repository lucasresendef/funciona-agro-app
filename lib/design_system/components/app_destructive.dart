import 'package:flutter/material.dart';

abstract final class AppDestructive {
  static Color background(BuildContext context) {
    return Theme.of(context).colorScheme.errorContainer;
  }

  static Color foreground(BuildContext context) {
    return Theme.of(context).colorScheme.onErrorContainer;
  }

  static ButtonStyle outlinedStyle(BuildContext context) {
    final bg = background(context);
    final fg = foreground(context);
    return OutlinedButton.styleFrom(
      backgroundColor: bg,
      foregroundColor: fg,
      side: BorderSide(color: fg.withValues(alpha: 0.18)),
    );
  }

  static ButtonStyle textStyle(BuildContext context) {
    final bg = background(context);
    final fg = foreground(context);
    return TextButton.styleFrom(backgroundColor: bg, foregroundColor: fg);
  }

  static ButtonStyle filledStyle(BuildContext context) {
    final bg = background(context);
    final fg = foreground(context);
    return FilledButton.styleFrom(backgroundColor: bg, foregroundColor: fg);
  }

  static ButtonStyle iconButtonStyle(BuildContext context) {
    final bg = background(context);
    final fg = foreground(context);
    return IconButton.styleFrom(backgroundColor: bg, foregroundColor: fg);
  }

  static Color iconColor(BuildContext context) {
    return foreground(context);
  }
}
