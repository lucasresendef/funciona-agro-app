import 'package:field_management_app/app/app_destinations.dart';
import 'package:field_management_app/core/config/app_environment.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/core/theme/app_theme.dart';
import 'package:field_management_app/design_system/components/app_card.dart';
import 'package:field_management_app/design_system/components/app_confirm_dialog.dart';
import 'package:field_management_app/design_system/foundations/app_spacing.dart';
import 'package:field_management_app/features/auth/presentation/controllers/auth_controller.dart';
import 'package:field_management_app/features/field_operations/presentation/pages/field_operations_pages.dart';
import 'package:field_management_app/features/products/presentation/pages/products_pages.dart';
import 'package:field_management_app/shared/widgets/farm_context_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AppShell extends ConsumerWidget {
  const AppShell({required this.child, required this.location, super.key});

  final Widget child;
  final String location;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionManagerProvider).session;

    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth >= 1024;

        if (isDesktop) {
          return Scaffold(
            backgroundColor: AppColors.canvas,
            body: Row(
              children: [
                SizedBox(
                  width: 300,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.lg),
                      child: _Sidebar(
                        location: location,
                        userName: session?.profile?.user.name ?? 'Equipe',
                        userEmail:
                            session?.profile?.user.email ??
                            session?.profile?.authUser.email ??
                            '-',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            AppSpacing.lg,
                            AppSpacing.lg,
                            AppSpacing.sm,
                          ),
                          child: _DesktopTopBar(
                            userName: session?.profile?.user.name,
                          ),
                        ),
                        Expanded(
                          child: _AnimatedShellBody(
                            location: location,
                            child: child,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        final selectedSection = _mobileSectionForLocation(location);
        return Scaffold(
          backgroundColor: AppColors.canvas,
          appBar: AppBar(
            titleSpacing: AppSpacing.md,
            title: Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      'lib/assets/icon/icon.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                const Expanded(child: FarmContextSelector(compact: true)),
              ],
            ),
            actions: const [_SessionMenu()],
          ),
          body: SafeArea(
            top: false,
            child: _AnimatedShellBody(location: location, child: child),
          ),
          bottomNavigationBar: _MobileBottomBar(
            selectedSection: selectedSection,
            onProductsTap: () => context.go(ProductsPage.routePath),
            onOperationsTap: () => context.go(FieldOperationsPage.routePath),
            onMenuTap: () => _openMobileShortcuts(context),
          ),
        );
      },
    );
  }
}

void _openMobileShortcuts(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    useSafeArea: true,
    builder: (context) {
      return ListView(
        shrinkWrap: true,
        children: [
          for (final destination in appDestinations)
            ListTile(
              leading: Icon(destination.icon),
              title: Text(destination.label),
              onTap: () {
                Navigator.of(context).pop();
                context.go(destination.route);
              },
            ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.of(context).pop();
              context.go('/profile');
            },
          ),
        ],
      );
    },
  );
}

class _AnimatedShellBody extends StatelessWidget {
  const _AnimatedShellBody({required this.location, required this.child});

  final String location;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      key: ValueKey(location),
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      builder: (context, value, currentChild) {
        final opacity = value.clamp(0.0, 1.0).toDouble();
        final dx = (1 - value) * 0.03;
        return Opacity(
          opacity: opacity,
          child: Transform.translate(
            offset: Offset(dx * MediaQuery.sizeOf(context).width, 0),
            child: currentChild,
          ),
        );
      },
      child: child,
    );
  }
}

class _DesktopTopBar extends StatelessWidget {
  const _DesktopTopBar({this.userName});

  final String? userName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppCard(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppEnvironment.appName,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  userName == null
                      ? 'Operação em campo'
                      : 'Sessão ativa de $userName',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          const SizedBox(width: 220, child: FarmContextSelector()),
          const SizedBox(width: AppSpacing.md),
          const _SessionMenu(),
        ],
      ),
    );
  }
}

class _Sidebar extends StatelessWidget {
  const _Sidebar({
    required this.location,
    required this.userName,
    required this.userEmail,
  });

  final String location;
  final String userName;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCard(
          padding: const EdgeInsets.all(AppSpacing.lg),
          color: AppColors.forestDark,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(
                        'lib/assets/icon/icon.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Text(
                      'Funciona Agro',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                'Produtividade com contexto, clareza e foco operacional.',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        Expanded(
          child: ListView.separated(
            itemCount: appDestinations.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.xs),
            itemBuilder: (context, index) {
              final destination = appDestinations[index];
              final isSelected = location.startsWith(destination.route);
              return AppCard(
                padding: EdgeInsets.zero,
                color: isSelected
                    ? Theme.of(context).colorScheme.primaryContainer
                    : Colors.white,
                child: ListTile(
                  leading: Icon(
                    destination.icon,
                    color: isSelected
                        ? Theme.of(context).colorScheme.onPrimaryContainer
                        : Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  title: Text(
                    destination.label,
                    style: TextStyle(
                      fontWeight: isSelected
                          ? FontWeight.w800
                          : FontWeight.w600,
                    ),
                  ),
                  onTap: () => context.go(destination.route),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        AppCard(
          padding: EdgeInsets.zero,
          child: InkWell(
            borderRadius: BorderRadius.circular(AppSpacing.radiusXl),
            onTap: () => context.go('/profile'),
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Text(
                      userName.isEmpty
                          ? 'U'
                          : userName.characters.first.toUpperCase(),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xs),
                        Text(
                          userEmail,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  const Icon(Icons.chevron_right_rounded),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

enum _MobileSection { products, operations, menu }

_MobileSection _mobileSectionForLocation(String location) {
  if (location.startsWith(ProductsPage.routePath)) {
    return _MobileSection.products;
  }
  if (location.startsWith(FieldOperationsPage.routePath)) {
    return _MobileSection.operations;
  }
  return _MobileSection.menu;
}

class _MobileBottomBar extends StatelessWidget {
  const _MobileBottomBar({
    required this.selectedSection,
    required this.onProductsTap,
    required this.onOperationsTap,
    required this.onMenuTap,
  });

  final _MobileSection selectedSection;
  final VoidCallback onProductsTap;
  final VoidCallback onOperationsTap;
  final VoidCallback onMenuTap;

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.paddingOf(context).bottom;
    final textScale = MediaQuery.textScalerOf(context).scale(1.0);
    final barHeight = textScale > 1.15 ? 70.0 : 62.0;

    return BottomAppBar(
      elevation: 12,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: bottomInset > 0 ? bottomInset : AppSpacing.xs,
        ),
        child: SizedBox(
          height: barHeight,
          child: Row(
            children: [
              Expanded(
                child: _BottomBarButton(
                  icon: Icons.inventory_2_outlined,
                  label: 'Produtos',
                  selected: selectedSection == _MobileSection.products,
                  onTap: onProductsTap,
                ),
              ),
              Expanded(
                child: _BottomBarButton(
                  icon: Icons.precision_manufacturing_outlined,
                  label: 'Operações',
                  selected: selectedSection == _MobileSection.operations,
                  onTap: onOperationsTap,
                ),
              ),
              Expanded(
                child: _BottomBarButton(
                  icon: Icons.grid_view_rounded,
                  label: 'Menu',
                  selected: selectedSection == _MobileSection.menu,
                  onTap: onMenuTap,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomBarButton extends StatelessWidget {
  const _BottomBarButton({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final color = selected ? scheme.primary : scheme.onSurfaceVariant;
    final textStyle = Theme.of(context).textTheme.labelSmall?.copyWith(
      color: color,
      fontWeight: selected ? FontWeight.w800 : FontWeight.w600,
    );

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        margin: const EdgeInsets.symmetric(
          horizontal: AppSpacing.xs,
          vertical: 2,
        ),
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: selected
              ? scheme.primaryContainer.withValues(alpha: 0.7)
              : null,
          borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final showLabel = constraints.maxHeight >= 44;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: color, size: showLabel ? 22 : 20),
                if (showLabel) ...[
                  const SizedBox(height: 1),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(label, maxLines: 1, style: textStyle),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class _SessionMenu extends ConsumerWidget {
  const _SessionMenu();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      tooltip: 'Sair',
      icon: const Icon(Icons.logout_rounded),
      onPressed: () async {
        final shouldLogout = await showAppConfirmationDialog(
          context,
          title: 'Sair da conta',
          message: 'Tem certeza que deseja sair do app?',
          confirmLabel: 'Sair',
        );
        if (!shouldLogout) {
          return;
        }
        await ref.read(authControllerProvider.notifier).logout();
      },
    );
  }
}
