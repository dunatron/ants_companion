import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RouteNotFoundScreen extends StatelessWidget {
  const RouteNotFoundScreen({super.key, required this.routePath});

  final String routePath;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(l10n.routeNotFound),
            Text(routePath),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: Text(l10n.home),
            )
          ],
        ),
      ),
    );
  }
}
