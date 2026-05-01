import 'package:field_management_app/design_system/components/app_skeleton.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';

class AppFieldLoading extends StatefulWidget {
  const AppFieldLoading({super.key, this.height = 56});

  final double height;

  @override
  State<AppFieldLoading> createState() => _AppFieldLoadingState();
}

class _AppFieldLoadingState extends State<AppFieldLoading>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final alpha = 0.45 + (_controller.value * 0.25);
        return Opacity(opacity: alpha, child: child);
      },
      child: Container(
        height: widget.height,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.20),
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          border: Border.all(
            color: colorScheme.outlineVariant.withValues(alpha: 0.35),
          ),
        ),
        child: const Row(
          children: [
            AppSkeleton(width: 26, height: 26),
            SizedBox(width: AppSpacing.sm),
            Expanded(child: AppSkeleton(height: 14)),
          ],
        ),
      ),
    );
  }
}
