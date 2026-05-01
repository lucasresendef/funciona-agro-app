import 'dart:math' as math;

import 'package:flutter/widgets.dart';

abstract final class AppLayout {
  static const compactBreakpoint = 600.0;
  static const mediumBreakpoint = 1024.0;

  static bool isCompact(BuildContext context) =>
      MediaQuery.sizeOf(context).width < compactBreakpoint;

  static bool isMediumUp(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= compactBreakpoint;

  static double formFieldWidth(BuildContext context, double preferred) {
    final width = MediaQuery.sizeOf(context).width;
    final horizontalPadding = isCompact(context) ? 40.0 : 88.0;
    final maxUsable = math.max(220.0, width - horizontalPadding);
    return math.min(preferred, maxUsable);
  }
}
