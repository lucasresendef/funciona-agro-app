import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';

Future<T?> showAppFormSheet<T>({
  required BuildContext context,
  required Widget child,
  bool useRootNavigator = true,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    useRootNavigator: useRootNavigator,
    showDragHandle: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return FractionallySizedBox(
        heightFactor: 0.94,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSpacing.radiusXl),
            ),
          ),
          child: child,
        ),
      );
    },
  );
}
