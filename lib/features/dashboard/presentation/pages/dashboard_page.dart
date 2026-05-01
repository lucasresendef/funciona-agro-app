import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/field_operations/presentation/controllers/field_operations_controller.dart';
import 'package:field_management_app/features/farms/presentation/controllers/farms_controller.dart';
import 'package:field_management_app/features/products/presentation/controllers/products_controller.dart';
import 'package:field_management_app/features/users/presentation/controllers/users_controller.dart';
import 'package:field_management_app/shared/widgets/metric_card.dart';
import 'package:field_management_app/shared/widgets/module_card.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  static const routePath = '/dashboard';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedFarmId = ref.watch(sessionManagerProvider).selectedFarmId;
    final farmsAsync = ref.watch(allActiveFarmsProvider);
    final productsAsync = ref.watch(allActiveProductsProvider);
    final usersAsync = ref.watch(allActiveUsersProvider);
    final operationsAsync = ref.watch(fieldOperationsProvider);

    final selectedFarmName = farmsAsync.maybeWhen(
      data: (items) => items
          .where((farm) => farm.metadata.id == selectedFarmId)
          .map((farm) => farm.name)
          .firstOrNull,
      orElse: () => null,
    );

    return AppPage(
      title: 'Operação do dia',
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isTablet = constraints.maxWidth > 900;
          final isDesktopWidth = constraints.maxWidth > 600;
          final crossAxisCount = isTablet
              ? 4
              : isDesktopWidth
              ? 3
              : 1;
          final metricCardHeight = isDesktopWidth ? 180.0 : 200.0;
          final availableWidth = constraints.maxWidth - (AppSpacing.md * 2);
          final moduleCardWidth = isTablet
              ? 320.0
              : (availableWidth - AppSpacing.md * 2) / (isDesktopWidth ? 2 : 1);

          return ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              Text(
                'Métricas',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: AppSpacing.md,
                  mainAxisSpacing: AppSpacing.md,
                  mainAxisExtent: metricCardHeight,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  final metrics = [
                    {
                      'label': 'Fazendas ativas',
                      'value': farmsAsync.maybeWhen(
                        data: (items) => '${items.length}',
                        orElse: () => '...',
                      ),
                      'icon': Icons.agriculture_outlined,
                      'helper': selectedFarmName == null
                          ? 'Sem contexto específico'
                          : 'Contexto atual: $selectedFarmName',
                    },
                    {
                      'label': 'Produtos cadastrados',
                      'value': productsAsync.maybeWhen(
                        data: (items) => '${items.length}',
                        orElse: () => '...',
                      ),
                      'icon': Icons.inventory_2_outlined,
                      'helper': 'Base ativa para estoque e operações',
                    },
                    {
                      'label': 'Usuários ativos',
                      'value': usersAsync.maybeWhen(
                        data: (items) => '${items.length}',
                        orElse: () => '...',
                      ),
                      'icon': Icons.group_outlined,
                      'helper': 'Equipe disponível no ecossistema',
                    },
                    {
                      'label': 'Operações visíveis',
                      'value': operationsAsync.maybeWhen(
                        data: (items) => '${items.length}',
                        orElse: () => '...',
                      ),
                      'icon': Icons.precision_manufacturing_outlined,
                      'helper': 'Filtradas pelo contexto atual',
                    },
                  ];
                  final metric = metrics[index];
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: MetricCard(
                      label: metric['label'] as String,
                      value: metric['value'] as String,
                      icon: metric['icon'] as IconData,
                      helper: metric['helper'] as String?,
                    ),
                  );
                },
              ),
              const SizedBox(height: AppSpacing.lg),
              Text(
                'Módulos',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Wrap(
                spacing: AppSpacing.md,
                runSpacing: AppSpacing.md,
                children: [
                  SizedBox(
                    width: moduleCardWidth,
                    child: ModuleCard(
                      title: 'Fazendas e talhões',
                      description:
                          'Navegue entre estruturas produtivas, cadastre novas áreas e mantenha o contexto selecionado.',
                      icon: Icons.agriculture_outlined,
                      onTap: () => context.go('/farms'),
                    ),
                  ),
                  SizedBox(
                    width: moduleCardWidth,
                    child: ModuleCard(
                      title: 'Estoque',
                      description:
                          'Gerencie locais, saldos e ajustes com leitura simples para operação de campo.',
                      icon: Icons.warehouse_outlined,
                      onTap: () => context.go('/inventory/locations'),
                    ),
                  ),
                  SizedBox(
                    width: moduleCardWidth,
                    child: ModuleCard(
                      title: 'Operações de campo',
                      description:
                          'Lance saídas, consumos e retornos ligados aos talhões.',
                      icon: Icons.precision_manufacturing_outlined,
                      onTap: () => context.go('/field-operations'),
                    ),
                  ),
                  SizedBox(
                    width: moduleCardWidth,
                    child: ModuleCard(
                      title: 'Usuários e permissões',
                      description:
                          'Controle acesso por fazenda e mantenha a governança operacional.',
                      icon: Icons.verified_user_outlined,
                      onTap: () => context.go('/permissions'),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
