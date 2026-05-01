import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_page.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static const routePath = '/settings';

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: '',
      showHeader: false,
      child: ListView(
        padding: const EdgeInsets.only(bottom: AppSpacing.xl),
        children: [
          _SettingsSection(
            title: 'Cadastros',
            items: const [
              _SettingsItem(
                title: 'Fazendas',
                subtitle: 'Estrutura principal da operação',
                icon: Icons.agriculture_outlined,
                route: '/farms',
              ),
              _SettingsItem(
                title: 'Talhões',
                subtitle: 'Organização das áreas produtivas',
                icon: Icons.grid_view_rounded,
                route: '/fields',
              ),
              _SettingsItem(
                title: 'Unidades',
                subtitle: 'Unidades de medida e padronização',
                icon: Icons.straighten_outlined,
                route: '/units',
              ),
              _SettingsItem(
                title: 'Usuários',
                subtitle: 'Gestão de contas da equipe',
                icon: Icons.group_outlined,
                route: '/users',
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          _SettingsSection(
            title: 'Estoque',
            items: const [
              _SettingsItem(
                title: 'Locais de estoque',
                subtitle: 'Depósitos e pontos de armazenagem',
                icon: Icons.warehouse_outlined,
                route: '/inventory/locations',
              ),
              _SettingsItem(
                title: 'Saldos de estoque',
                subtitle: 'Visão consolidada de quantidades',
                icon: Icons.pie_chart_outline_rounded,
                route: '/inventory/balance',
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          _SettingsSection(
            title: 'Conta e governança',
            items: const [
              _SettingsItem(
                title: 'Permissões',
                subtitle: 'Acesso por fazenda e função',
                icon: Icons.verified_user_outlined,
                route: '/permissions',
              ),
              _SettingsItem(
                title: 'Perfil',
                subtitle: 'Dados da sessão autenticada',
                icon: Icons.account_circle_outlined,
                route: '/profile',
              ),
              _SettingsItem(
                title: 'Dashboard',
                subtitle: 'Métricas e atalhos gerais',
                icon: Icons.dashboard_outlined,
                route: '/dashboard',
              ),
              _SettingsItem(
                title: 'Relatórios',
                subtitle: 'Geração e download de CSV operacional',
                icon: Icons.summarize_outlined,
                route: '/reports/operations',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SettingsSection extends StatelessWidget {
  const _SettingsSection({required this.title, required this.items});

  final String title;
  final List<_SettingsItem> items;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        ...List.generate(items.length, (index) {
          final item = items[index];
          return TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 1),
            duration: Duration(milliseconds: 180 + (index * 70)),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, (1 - value) * 12),
                  child: child,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.sm),
              child: AppCard(
                padding: EdgeInsets.zero,
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.md,
                    vertical: AppSpacing.xs,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: theme.colorScheme.primaryContainer,
                    foregroundColor: theme.colorScheme.onPrimaryContainer,
                    child: Icon(item.icon),
                  ),
                  title: Text(
                    item.title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  subtitle: Text(
                    item.subtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: () => context.go(item.route),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}

class _SettingsItem {
  const _SettingsItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.route,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final String route;
}
