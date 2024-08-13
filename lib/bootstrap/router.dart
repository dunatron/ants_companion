import 'package:ants_companion/ui/colony_action/details/colony_action_details_screen.dart';
import 'package:ants_companion/ui/colony_action/scheduler/colony_action_scheduler_screen.dart';
import 'package:ants_companion/ui/home/home_screen.dart';
import 'package:ants_companion/ui/route_not_found/route_not_found_screen.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tiers_screen.dart';
import 'package:ants_companion/ui/scientific_classifications/scientific_classifications_screen.dart';
import 'package:ants_companion/ui/soldier_ants/soldier_ants_comparison_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter routerConfig = GoRouter(
  initialLocation: '/',
  errorBuilder: (context, state) => RouteNotFoundScreen(
    routePath: state.fullPath ?? 'fff',
  ),
  routes: routes,
);

final routes = <RouteBase>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
    routes: [
      GoRoute(
        path: 'ant-tiers',
        builder: (BuildContext context, GoRouterState state) =>
            const AntTiersScreen(),
      ),
      GoRoute(
        path: 'ca-scheduler',
        builder: (BuildContext context, GoRouterState state) =>
            const ColonyActionSchedulerScreen(),
        routes: [
          GoRoute(
              path: ':caKey',
              builder: (BuildContext context, GoRouterState state) {
                final caKey = state.pathParameters['caKey']!;
                return ColonyActionDetailsScreen(
                  caKey: caKey,
                );
              }),
        ],
      ),
      GoRoute(
        path: 'scientific-classifications',
        builder: (BuildContext context, GoRouterState state) =>
            const ScientificClassificationsScreen(),
      ),
      GoRoute(
        path: 'soldier-ants-comparison',
        builder: (BuildContext context, GoRouterState state) =>
            const SoldierAntsComparisonScreen(),
      ),
    ],
  ),
];
