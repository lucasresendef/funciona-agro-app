import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';

class KpiCard extends StatelessWidget {
  const KpiCard({
    required this.title,
    required this.icon,
    required this.semanticLabel,
    super.key,
    this.numericValue,
    this.valueLabel,
    this.formatter,
    this.subtitle,
    this.delay = Duration.zero,
  });

  final String title;
  final IconData icon;
  final String semanticLabel;
  final double? numericValue;
  final String? valueLabel;
  final String Function(double value)? formatter;
  final String? subtitle;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Semantics(
      label: semanticLabel,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: 1),
        duration: const Duration(milliseconds: 320),
        curve: Curves.easeOutCubic,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0x33FFFFFF), width: 1),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFDFEFC), Color(0xFFF7FAF6)],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x14000000),
                blurRadius: 20,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0x1A2F6F4F),
                    border: Border.all(color: const Color(0x332F6F4F)),
                  ),
                  child: Icon(icon, color: const Color(0xFF2F6F4F), size: 20),
                ),
                const SizedBox(height: AppSpacing.sm),
                Expanded(
                  child: _KpiValue(
                    numericValue: numericValue,
                    valueLabel: valueLabel,
                    formatter: formatter,
                    delay: delay,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: const Color(0xFF1F2937),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    subtitle!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: const Color(0xFF6B7280),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
        builder: (context, value, child) {
          return Transform.translate(
            offset: Offset(0, 10 * (1 - value)),
            child: Opacity(opacity: value, child: child),
          );
        },
      ),
    );
  }
}

class _KpiValue extends StatelessWidget {
  const _KpiValue({
    required this.numericValue,
    required this.valueLabel,
    required this.formatter,
    required this.delay,
  });

  final double? numericValue;
  final String? valueLabel;
  final String Function(double value)? formatter;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    final numericStyle = Theme.of(context).textTheme.headlineSmall?.copyWith(
      color: const Color(0xFF1F2937),
      fontWeight: FontWeight.w900,
      letterSpacing: -0.2,
      height: 1.05,
    );
    final labelStyle = Theme.of(context).textTheme.titleMedium?.copyWith(
      color: const Color(0xFF1F2937),
      fontWeight: FontWeight.w800,
      height: 1.15,
    );

    if (numericValue == null) {
      return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          valueLabel ?? '-',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: labelStyle,
        ),
      );
    }

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: numericValue!),
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeOutCubic,
      builder: (context, value, _) {
        final text = formatter?.call(value) ?? value.toStringAsFixed(0);
        return Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: numericStyle,
          ),
        );
      },
    );
  }
}
