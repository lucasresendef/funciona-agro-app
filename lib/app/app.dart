import 'package:field_management_app/core/config/app_environment.dart';
import 'package:field_management_app/core/router/app_router.dart';
import 'package:field_management_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FieldManagementApp extends ConsumerWidget {
  const FieldManagementApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: AppEnvironment.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      routerConfig: router,
    );
  }
}
