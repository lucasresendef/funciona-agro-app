import 'package:field_management_app/design_system/components/app_action_button.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';

class AppResponsiveFormActions extends StatelessWidget {
  const AppResponsiveFormActions({
    required this.cancelLabel,
    required this.submitLabel,
    required this.submitIcon,
    required this.isLoading,
    required this.onCancel,
    required this.onSubmit,
    super.key,
  });

  final String cancelLabel;
  final String submitLabel;
  final Widget submitIcon;
  final bool isLoading;
  final VoidCallback onCancel;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxWidth < 340;
        if (compact) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlinedButton(
                onPressed: isLoading ? null : onCancel,
                child: Text(cancelLabel),
              ),
              const SizedBox(height: AppSpacing.sm),
              AppActionButton(
                label: submitLabel,
                icon: submitIcon,
                isLoading: isLoading,
                isExpanded: true,
                onPressed: onSubmit,
              ),
            ],
          );
        }

        return Row(
          children: [
            OutlinedButton(
              onPressed: isLoading ? null : onCancel,
              child: Text(cancelLabel),
            ),
            const SizedBox(width: AppSpacing.md),
            AppActionButton(
              label: submitLabel,
              icon: submitIcon,
              isLoading: isLoading,
              onPressed: onSubmit,
            ),
          ],
        );
      },
    );
  }
}
