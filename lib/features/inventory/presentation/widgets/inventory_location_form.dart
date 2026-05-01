import 'package:field_management_app/design_system/components/app_action_button.dart';
import 'package:field_management_app/design_system/components/app_dropdown_field.dart';
import 'package:field_management_app/design_system/components/app_field_loading.dart';
import 'package:field_management_app/design_system/components/app_text_field.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/farms/domain/entities/farm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InventoryLocationFormFields extends StatelessWidget {
  const InventoryLocationFormFields({
    required this.farmsAsync,
    required this.farmId,
    required this.onFarmChanged,
    required this.nameController,
    required this.descriptionController,
    required this.nameValidator,
    super.key,
  });

  final AsyncValue<List<Farm>> farmsAsync;
  final String? farmId;
  final ValueChanged<String?> onFarmChanged;
  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final String? Function(String?) nameValidator;

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
              items: farms
                  .map(
                    (Farm farm) => DropdownMenuItem<String>(
                      value: farm.metadata.id,
                      child: Text(farm.name),
                    ),
                  )
                  .toList(),
              onChanged: onFarmChanged,
              validator: (value) =>
                  value == null ? 'Selecione a fazenda.' : null,
            ),
            loading: () => const AppFieldLoading(),
            error: (_, __) => const Text('Falha ao carregar fazendas.'),
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          child: AppTextField(
            controller: nameController,
            label: 'Nome',
            hintText: 'Ex.: Armazém Central',
            validator: nameValidator,
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          child: AppTextField(
            controller: descriptionController,
            label: 'Descrição',
            hintText: 'Finalidade e observações do local',
            maxLines: 4,
          ),
        ),
      ],
    );
  }
}

class InventoryFormActionsRow extends StatelessWidget {
  const InventoryFormActionsRow({
    required this.cancelLabel,
    required this.submitLabel,
    required this.icon,
    required this.isLoading,
    required this.onCancel,
    required this.onSubmit,
    super.key,
  });

  final String cancelLabel;
  final String submitLabel;
  final Widget icon;
  final bool isLoading;
  final VoidCallback onCancel;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: isLoading ? null : onCancel,
          child: Text(cancelLabel),
        ),
        const SizedBox(width: AppSpacing.md),
        AppActionButton(
          label: submitLabel,
          icon: icon,
          isLoading: isLoading,
          onPressed: onSubmit,
        ),
      ],
    );
  }
}
