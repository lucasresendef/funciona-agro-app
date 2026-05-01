import 'package:field_management_app/app/app_shell.dart';
import 'package:field_management_app/core/storage/session_manager.dart';
import 'package:field_management_app/features/auth/presentation/pages/auth_pages.dart';
import 'package:field_management_app/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:field_management_app/features/farms/presentation/pages/farms_pages.dart';
import 'package:field_management_app/features/field_operations/presentation/pages/field_operations_pages.dart';
import 'package:field_management_app/features/fields/presentation/pages/fields_pages.dart';
import 'package:field_management_app/features/inventory/presentation/pages/inventory_pages.dart';
import 'package:field_management_app/features/permissions/presentation/pages/permissions_pages.dart';
import 'package:field_management_app/features/products/presentation/pages/products_pages.dart';
import 'package:field_management_app/features/reports/presentation/pages/reports_pages.dart';
import 'package:field_management_app/features/settings/presentation/pages/settings_page.dart';
import 'package:field_management_app/features/units/presentation/pages/units_pages.dart';
import 'package:field_management_app/features/users/presentation/pages/users_pages.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final sessionManager = ref.watch(sessionManagerProvider);

  return GoRouter(
    initialLocation: SplashPage.routePath,
    refreshListenable: sessionManager,
    redirect: (context, state) {
      final location = state.matchedLocation;
      final isAuthenticated = sessionManager.isAuthenticated;
      final bootstrapped = sessionManager.isBootstrapped;

      if (!bootstrapped) {
        return location == SplashPage.routePath ? null : SplashPage.routePath;
      }

      if (!isAuthenticated) {
        return location == LoginPage.routePath ? null : LoginPage.routePath;
      }

      if (location == SplashPage.routePath ||
          location == LoginPage.routePath ||
          location == '/') {
        return FieldOperationsPage.routePath;
      }

      return null;
    },
    routes: [
      GoRoute(path: '/', redirect: (_, __) => FieldOperationsPage.routePath),
      GoRoute(
        path: SplashPage.routePath,
        builder: (_, __) => const SplashPage(),
      ),
      GoRoute(path: LoginPage.routePath, builder: (_, __) => const LoginPage()),
      ShellRoute(
        builder: (context, state, child) {
          return AppShell(location: state.matchedLocation, child: child);
        },
        routes: [
          GoRoute(
            path: DashboardPage.routePath,
            builder: (_, __) => const DashboardPage(),
          ),
          GoRoute(
            path: SettingsPage.routePath,
            builder: (_, __) => const SettingsPage(),
          ),
          GoRoute(
            path: ProfilePage.routePath,
            builder: (_, __) => const ProfilePage(),
          ),
          GoRoute(
            path: FarmsPage.routePath,
            builder: (_, __) => const FarmsPage(),
          ),
          GoRoute(
            path: CreateFarmPage.routePath,
            builder: (_, __) => const CreateFarmPage(),
          ),
          GoRoute(
            path: FieldsPage.routePath,
            builder: (_, __) => const FieldsPage(),
          ),
          GoRoute(
            path: CreateFieldPage.routePath,
            builder: (_, __) => const CreateFieldPage(),
          ),
          GoRoute(
            path: UnitsPage.routePath,
            builder: (_, __) => const UnitsPage(),
          ),
          GoRoute(
            path: CreateUnitPage.routePath,
            builder: (_, __) => const CreateUnitPage(),
          ),
          GoRoute(
            path: ProductsPage.routePath,
            builder: (_, __) => const ProductsPage(),
          ),
          GoRoute(
            path: CreateProductPage.routePath,
            builder: (_, __) => const CreateProductPage(),
          ),
          GoRoute(
            path: InventoryLocationsPage.routePath,
            builder: (_, __) => const InventoryLocationsPage(),
          ),
          GoRoute(
            path: CreateInventoryLocationPage.routePath,
            builder: (_, __) => const CreateInventoryLocationPage(),
          ),
          GoRoute(
            path: InventoryBalancePage.routePath,
            builder: (_, __) => const InventoryBalancePage(),
          ),
          GoRoute(
            path: CreateInventoryBalancePage.routePath,
            builder: (_, __) => const CreateInventoryBalancePage(),
          ),
          GoRoute(
            path: FieldOperationsPage.routePath,
            builder: (_, __) => const FieldOperationsPage(),
          ),

          GoRoute(
            path: OperationsReportPage.routePath,
            builder: (_, __) => const OperationsReportPage(),
          ),
          GoRoute(
            path: CreateFieldOperationPage.routePath,
            builder: (_, __) => const CreateFieldOperationPage(),
          ),
          GoRoute(
            path: UsersPage.routePath,
            builder: (_, __) => const UsersPage(),
          ),
          GoRoute(
            path: CreateUserPage.routePath,
            builder: (_, __) => const CreateUserPage(),
          ),
          GoRoute(
            path: PermissionsPage.routePath,
            builder: (_, __) => const PermissionsPage(),
          ),
          GoRoute(
            path: CreatePermissionPage.routePath,
            builder: (_, __) => const CreatePermissionPage(),
          ),
        ],
      ),
    ],
  );
});
