import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';

class AppDropdownField<T> extends StatefulWidget {
  const AppDropdownField({
    required this.label,
    required this.items,
    required this.onChanged,
    super.key,
    this.value,
    this.hintText,
    this.validator,
    this.enabled = true,
  });

  final String label;
  final T? value;
  final String? hintText;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?> onChanged;
  final FormFieldValidator<T>? validator;
  final bool enabled;

  @override
  State<AppDropdownField<T>> createState() => _AppDropdownFieldState<T>();
}

class _AppDropdownFieldState<T> extends State<AppDropdownField<T>> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOutCubic,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        boxShadow: _isFocused
            ? [
                BoxShadow(
                  color: scheme.primary.withValues(alpha: 0.16),
                  blurRadius: 18,
                  offset: const Offset(0, 8),
                ),
              ]
            : const [],
      ),
      child: Focus(
        onFocusChange: (focused) => setState(() => _isFocused = focused),
        child: DropdownButtonFormField<T>(
          focusNode: _focusNode,
          value: widget.value,
          isExpanded: true,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: widget.hintText,
            enabled: widget.enabled,
          ),
          items: widget.items,
          selectedItemBuilder: (context) => widget.items.map((item) {
            final child = item.child;
            if (child is Text) {
              return Text(
                child.data ?? '',
                style: child.style,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              );
            }
            return child;
          }).toList(),
          onChanged: widget.onChanged,
          validator: widget.validator,
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        ),
      ),
    );
  }
}
