import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/foundations/app_layout.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({
    required this.onChanged,
    super.key,
    this.initialValue,
    this.hintText = 'Buscar',
    this.trailing = const [],
  });

  final String? initialValue;
  final String hintText;
  final ValueChanged<String> onChanged;
  final List<Widget> trailing;

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  Widget _normalizeTrailingWidget(Widget widget) {
    if (widget is Expanded) return widget.child;
    if (widget is Flexible) return widget.child;
    return widget;
  }

  Widget _normalizeSheetFilterWidget(Widget widget) {
    if (widget is Expanded) {
      return _normalizeSheetFilterWidget(widget.child);
    }
    if (widget is Flexible) {
      return _normalizeSheetFilterWidget(widget.child);
    }
    return widget;
  }

  void _openFiltersSheet(BuildContext context, List<Widget> trailing) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) {
        final maxHeight = MediaQuery.sizeOf(context).height * 0.72;
        return ConstrainedBox(
          constraints: BoxConstraints(maxHeight: maxHeight),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.md,
              AppSpacing.sm,
              AppSpacing.md,
              AppSpacing.lg,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Filtros',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: AppSpacing.md),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: trailing
                      .map(
                        (child) => Padding(
                          padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                          child: SizedBox(
                            width: double.infinity,
                            child: _normalizeSheetFilterWidget(child),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isCompact = AppLayout.isCompact(context);
    final normalizedTrailing = widget.trailing
        .map(_normalizeTrailingWidget)
        .toList();
    final searchField = TextFormField(
      initialValue: widget.initialValue,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: isCompact ? null : 'Busca',
        hintText: widget.hintText,
        prefixIcon: const Icon(Icons.search_rounded),
        isDense: true,
      ),
    );

    return AppCard(
      padding: EdgeInsets.all(isCompact ? AppSpacing.sm : AppSpacing.md),
      child: Column(
        children: [
          if (isCompact)
            Row(
              children: [
                Expanded(child: searchField),
                if (normalizedTrailing.isNotEmpty) ...[
                  const SizedBox(width: AppSpacing.xs),
                  IconButton.filledTonal(
                    tooltip: 'Filtros',
                    onPressed: () =>
                        _openFiltersSheet(context, normalizedTrailing),
                    icon: const Icon(Icons.tune_rounded),
                  ),
                ],
              ],
            )
          else ...[
            searchField,
            if (normalizedTrailing.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.md),
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: normalizedTrailing
                    .map(
                      (child) => ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: AppLayout.formFieldWidth(context, 320),
                        ),
                        child: child,
                      ),
                    )
                    .toList(),
              ),
            ],
          ],
        ],
      ),
    );
  }
}
