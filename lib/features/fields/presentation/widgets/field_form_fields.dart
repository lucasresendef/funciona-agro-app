import 'package:field_management_app/core/utils/validators.dart';
import 'package:field_management_app/design_system/components/app_dropdown_field.dart';
import 'package:field_management_app/design_system/components/app_field_loading.dart';
import 'package:field_management_app/design_system/components/app_text_field.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/farms/domain/entities/farm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FieldFormFields extends StatelessWidget {
  const FieldFormFields({
    required this.farmsAsync,
    required this.farmId,
    required this.onFarmChanged,
    required this.nameController,
    required this.areaController,
    required this.descriptionController,
    required this.nameHint,
    required this.areaLabel,
    required this.areaHint,
    required this.descriptionHint,
    this.farmsErrorText = 'Falha ao carregar fazendas.',
    this.areaKeyboardType = const TextInputType.numberWithOptions(
      decimal: true,
    ),
    this.areaValidator,
    this.descriptionMaxLines = 4,
    super.key,
  });

  final AsyncValue<List<Farm>> farmsAsync;
  final String? farmId;
  final ValueChanged<String?> onFarmChanged;
  final TextEditingController nameController;
  final TextEditingController areaController;
  final TextEditingController descriptionController;
  final String nameHint;
  final String areaLabel;
  final String areaHint;
  final String descriptionHint;
  final String farmsErrorText;
  final TextInputType areaKeyboardType;
  final String? Function(String?)? areaValidator;
  final int descriptionMaxLines;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSpacing.md,
      runSpacing: AppSpacing.md,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: farmsAsync.when(
            data: (farms) => AppDropdownField<String>(
              label: 'Fazenda',
              value: farmId,
              hintText: 'Selecione uma fazenda',
              items: farms
                  .map(
                    (farm) => DropdownMenuItem<String>(
                      value: farm.metadata.id,
                      child: Text(farm.name),
                    ),
                  )
                  .toList(),
              onChanged: onFarmChanged,
              validator: (value) =>
                  FormValidators.requiredField(value, label: 'Fazenda'),
            ),
            loading: () => const AppFieldLoading(),
            error: (_, __) => Text(farmsErrorText),
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          child: AppTextField(
            controller: nameController,
            label: 'Nome',
            hintText: nameHint,
            validator: (value) =>
                FormValidators.requiredField(value, label: 'Nome'),
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          child: AppTextField(
            controller: areaController,
            label: areaLabel,
            hintText: areaHint,
            keyboardType: areaKeyboardType,
            validator:
                areaValidator ??
                (value) => FormValidators.positiveNumber(value, label: 'Área'),
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          child: AppTextField(
            controller: descriptionController,
            label: 'Descrição',
            hintText: descriptionHint,
            maxLines: descriptionMaxLines,
          ),
        ),
      ],
    );
  }
}
