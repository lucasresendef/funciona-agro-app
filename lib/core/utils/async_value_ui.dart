import 'package:field_management_app/design_system/components/app_snackbar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncValueUi on WidgetRef {
  void listenForAction(
    dynamic provider,
    BuildContext context, {
    String? successMessage,
  }) {
    listen<AsyncValue<void>>(provider, (previous, next) {
      if (previous?.isLoading == true &&
          next.hasValue &&
          successMessage != null) {
        AppSnackbar.showSuccess(context, successMessage);
      }

      next.whenOrNull(
        error: (error, _) => AppSnackbar.showError(context, error.toString()),
      );
    });
  }
}
