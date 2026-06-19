import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';

typedef AppSearchableDropdownMatcher<T> =
    bool Function(AppDropdownOption<T> option, String normalizedQuery);
typedef AppSearchableDropdownComparator<T> =
    bool Function(T? left, T? right);

class AppDropdownOption<T> {
  const AppDropdownOption({
    required this.value,
    required this.label,
    this.searchKeywords = const [],
  });

  final T value;
  final String label;
  final List<String> searchKeywords;
}

class AppSearchableDropdownField<T> extends FormField<T> {
  AppSearchableDropdownField({
    required this.label,
    required this.options,
    required this.onChanged,
    super.key,
    this.value,
    this.hintText,
    this.searchHintText,
    this.emptyText,
    this.matcher,
    this.compareValues,
    super.validator,
    super.enabled = true,
  }) : super(
         initialValue: value,
         autovalidateMode: AutovalidateMode.onUserInteraction,
         builder: (field) {
           final state = field as _AppSearchableDropdownFieldState<T>;
           return state.buildField(field.context);
         },
       );

  final String label;
  final T? value;
  final String? hintText;
  final String? searchHintText;
  final String? emptyText;
  final List<AppDropdownOption<T>> options;
  final ValueChanged<T?> onChanged;
  final AppSearchableDropdownMatcher<T>? matcher;
  final AppSearchableDropdownComparator<T>? compareValues;

  @override
  FormFieldState<T> createState() => _AppSearchableDropdownFieldState<T>();
}

class _AppSearchableDropdownFieldState<T> extends FormFieldState<T> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  AppSearchableDropdownField<T> get widget =>
      super.widget as AppSearchableDropdownField<T>;

  @override
  void didUpdateWidget(covariant AppSearchableDropdownField<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!_sameValue(value, widget.value)) {
      setValue(widget.value);
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  bool _sameValue(T? left, T? right) {
    final compareValues = widget.compareValues;
    if (compareValues != null) {
      return compareValues(left, right);
    }
    return left == right;
  }

  AppDropdownOption<T>? _selectedOption() {
    for (final option in widget.options) {
      if (_sameValue(option.value, value)) {
        return option;
      }
    }
    return null;
  }

  Future<void> _openSelectionSheet(BuildContext context) async {
    if (!widget.enabled) {
      return;
    }

    FocusScope.of(context).unfocus();

    final selectedValue = await showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (context) {
        return _SearchableDropdownSheet<T>(
          title: widget.label,
          options: widget.options,
          selectedValue: value,
          searchHintText: widget.searchHintText ?? 'Buscar',
          emptyText: widget.emptyText ?? 'Nenhum item encontrado.',
          matcher: widget.matcher,
          compareValues: widget.compareValues,
        );
      },
    );

    if (!mounted) {
      return;
    }

    if (!_sameValue(selectedValue, value)) {
      didChange(selectedValue);
      widget.onChanged(selectedValue);
    }
  }

  Widget buildField(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final selectedOption = _selectedOption();

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
        child: InkWell(
          onTap: widget.enabled ? () => _openSelectionSheet(context) : null,
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          child: InputDecorator(
            isFocused: _isFocused,
            isEmpty: selectedOption == null,
            decoration: InputDecoration(
              labelText: widget.label,
              hintText: widget.hintText,
              enabled: widget.enabled,
              errorText: errorText,
              suffixIcon: const Icon(Icons.arrow_drop_down_rounded),
            ),
            child: Text(
              selectedOption?.label ?? widget.hintText ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}

class _SearchableDropdownSheet<T> extends StatefulWidget {
  const _SearchableDropdownSheet({
    required this.title,
    required this.options,
    required this.selectedValue,
    required this.searchHintText,
    required this.emptyText,
    this.matcher,
    this.compareValues,
  });

  final String title;
  final List<AppDropdownOption<T>> options;
  final T? selectedValue;
  final String searchHintText;
  final String emptyText;
  final AppSearchableDropdownMatcher<T>? matcher;
  final AppSearchableDropdownComparator<T>? compareValues;

  @override
  State<_SearchableDropdownSheet<T>> createState() =>
      _SearchableDropdownSheetState<T>();
}

class _SearchableDropdownSheetState<T>
    extends State<_SearchableDropdownSheet<T>> {
  late final TextEditingController _searchController;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  bool _sameValue(T? left, T? right) {
    final compareValues = widget.compareValues;
    if (compareValues != null) {
      return compareValues(left, right);
    }
    return left == right;
  }

  bool _matchesQuery(AppDropdownOption<T> option, String normalizedQuery) {
    if (normalizedQuery.isEmpty) {
      return true;
    }

    final matcher = widget.matcher;
    if (matcher != null) {
      return matcher(option, normalizedQuery);
    }

    if (option.label.toLowerCase().contains(normalizedQuery)) {
      return true;
    }

    return option.searchKeywords.any(
      (keyword) => keyword.toLowerCase().contains(normalizedQuery),
    );
  }

  @override
  Widget build(BuildContext context) {
    final normalizedQuery = _query.trim().toLowerCase();
    final filteredOptions = widget.options
        .where((option) => _matchesQuery(option, normalizedQuery))
        .toList();
    final viewInsets = MediaQuery.viewInsetsOf(context);
    final maxHeight = MediaQuery.sizeOf(context).height * 0.72;

    return AnimatedPadding(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOutCubic,
      padding: EdgeInsets.only(bottom: viewInsets.bottom),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: maxHeight),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.md,
            AppSpacing.sm,
            AppSpacing.md,
            AppSpacing.lg,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: AppSpacing.md),
              TextField(
                controller: _searchController,
                autofocus: true,
                onChanged: (value) => setState(() => _query = value),
                decoration: InputDecoration(
                  hintText: widget.searchHintText,
                  prefixIcon: const Icon(Icons.search_rounded),
                  suffixIcon: _query.isEmpty
                      ? null
                      : IconButton(
                          tooltip: 'Limpar busca',
                          onPressed: () {
                            _searchController.clear();
                            setState(() => _query = '');
                          },
                          icon: const Icon(Icons.close_rounded),
                        ),
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Expanded(
                child: filteredOptions.isEmpty
                    ? Center(child: Text(widget.emptyText))
                    : ListView.separated(
                        itemCount: filteredOptions.length,
                        separatorBuilder: (_, __) =>
                            const SizedBox(height: AppSpacing.xs),
                        itemBuilder: (context, index) {
                          final option = filteredOptions[index];
                          final isSelected = _sameValue(
                            option.value,
                            widget.selectedValue,
                          );

                          return ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              option.label,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            trailing: isSelected
                                ? Icon(
                                    Icons.check_rounded,
                                    color: Theme.of(context).colorScheme.primary,
                                  )
                                : null,
                            onTap: () => Navigator.of(context).pop(option.value),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
