import 'package:flutter/material.dart';

class AppDestination {
  const AppDestination({
    required this.label,
    required this.route,
    required this.icon,
  });

  final String label;
  final String route;
  final IconData icon;
}

const appDestinations = <AppDestination>[
  AppDestination(
    label: 'Operações',
    route: '/field-operations',
    icon: Icons.precision_manufacturing_outlined,
  ),
  AppDestination(
    label: 'Relatórios',
    route: '/reports/operations',
    icon: Icons.summarize_outlined,
  ),
  AppDestination(
    label: 'Dashboard',
    route: '/dashboard',
    icon: Icons.dashboard_outlined,
  ),
  AppDestination(
    label: 'Fazendas',
    route: '/farms',
    icon: Icons.agriculture_outlined,
  ),
  AppDestination(
    label: 'Talhões',
    route: '/fields',
    icon: Icons.grid_view_rounded,
  ),
  AppDestination(
    label: 'Unidades',
    route: '/units',
    icon: Icons.straighten_outlined,
  ),
  AppDestination(
    label: 'Produtos',
    route: '/products',
    icon: Icons.inventory_2_outlined,
  ),
  AppDestination(
    label: 'Locais de Estoque',
    route: '/inventory/locations',
    icon: Icons.warehouse_outlined,
  ),
  AppDestination(
    label: 'Saldos de Estoque',
    route: '/inventory/balance',
    icon: Icons.pie_chart_outline_rounded,
  ),
];
