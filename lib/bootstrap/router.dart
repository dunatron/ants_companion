import 'package:ants_companion/ui/colony_action/scheduler/colony_action_scheduler_screen.dart';
import 'package:ants_companion/ui/home/home_screen.dart';
import 'package:ants_companion/ui/route_not_found/route_not_found_screen.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tiers_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter routerConfig() => GoRouter(
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
      ),
    ],
  ),
];
