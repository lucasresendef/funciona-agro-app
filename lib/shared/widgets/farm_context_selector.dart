import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/design_system/components/app_skeleton.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/farms/domain/entities/farm.dart';
import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FarmContextSelector extends ConsumerWidget {
  const FarmContextSelector({super.key, this.compact = false});

  final bool compact;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;

    return farmsAsync.when(
      data: (farms) {
        Farm? selectedFarm;
        for (final farm in farms) {
          if (farm.metadata.id == selectedFarmId) {
            selectedFarm = farm;
            break;
          }
        }
        final selectedName = selectedFarm?.name;

        if (compact) {
          return _CompactFarmSelector(
            selectedFarmName: selectedName,
            farms: farms,
            onSelect: (value) =>
                ref.read(sessionManagerProvider).selectFarm(value),
          );
        }

        return DropdownButtonFormField<String?>(
          value: farms.any((farm) => farm.metadata.id == selectedFarmId)
              ? selectedFarmId
              : null,
          isExpanded: true,
          decoration: const InputDecoration(labelText: 'Contexto da fazenda'),
          items: [
            const DropdownMenuItem<String?>(value: null, child: Text('Todas')),
            ...farms.map(
              (farm) => DropdownMenuItem<String?>(
                value: farm.metadata.id,
                child: Text(
                  farm.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
          selectedItemBuilder: (context) => [
            const Text('Todas', maxLines: 1, overflow: TextOverflow.ellipsis),
            ...farms.map(
              (farm) =>
                  Text(farm.name, maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
          ],
          onChanged: (value) =>
              ref.read(sessionManagerProvider).selectFarm(value),
        );
      },
      loading: () => const AppSkeleton(height: 40),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}

class _CompactFarmSelector extends StatelessWidget {
  const _CompactFarmSelector({
    required this.selectedFarmName,
    required this.farms,
    required this.onSelect,
  });

  final String? selectedFarmName;
  final List<Farm> farms;
  final ValueChanged<String?> onSelect;

  @override
  Widget build(BuildContext context) {
    final label = selectedFarmName == null
        ? 'Todas as fazendas'
        : selectedFarmName!;

    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 40),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
      ),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          showDragHandle: true,
          useSafeArea: true,
          builder: (context) {
            return ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: AppSpacing.md),
              children: [
                ListTile(
                  leading: const Icon(Icons.filter_alt_off_outlined),
                  title: const Text('Todas as fazendas'),
                  onTap: () {
                    onSelect(null);
                    Navigator.of(context).pop();
                  },
                ),
                ...farms.map(
                  (farm) => ListTile(
                    leading: const Icon(Icons.agriculture_outlined),
                    title: Text(
                      farm.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      onSelect(farm.metadata.id);
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
      icon: const Icon(Icons.agriculture_outlined, size: 18),
      label: Text(label, maxLines: 1, overflow: TextOverflow.ellipsis),
    );
  }
}
