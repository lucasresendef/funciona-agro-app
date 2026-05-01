import 'package:field_management_app/core/utils/validators.dart';
import 'package:field_management_app/design_system/components/app_text_field.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';

class FarmFormFields extends StatelessWidget {
  const FarmFormFields({
    required this.nameController,
    required this.descriptionController,
    required this.nameHint,
    required this.descriptionHint,
    this.descriptionMaxLines = 4,
    super.key,
  });

  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final String nameHint;
  final String descriptionHint;
  final int descriptionMaxLines;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSpacing.md,
      runSpacing: AppSpacing.md,
      children: [
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
