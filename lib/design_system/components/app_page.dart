import 'package:field_management_app/design_system/components/section_header.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({
    required this.title,
    required this.child,
    super.key,
    this.actions = const [],
    this.maxWidth = 1320,
    this.showHeader = true,
  });

  final String title;
  final List<Widget> actions;
  final Widget child;
  final double maxWidth;
  final bool showHeader;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final hasBoundedHeight = constraints.hasBoundedHeight;

        return Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.md,
                AppSpacing.xs,
                AppSpacing.md,
                AppSpacing.lg,
              ),
              child: Column(
                mainAxisSize: hasBoundedHeight
                    ? MainAxisSize.max
                    : MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (showHeader) ...[
                    SectionHeader(title: title, actions: actions),
                    const SizedBox(height: AppSpacing.sm),
                  ],
                  if (hasBoundedHeight) Expanded(child: child) else child,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
