import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScientificClassificationsFeatureInfo extends StatelessWidget {
  const ScientificClassificationsFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              l10n.scientificClassificationsFeatureInfoTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            Text(
              l10n.scientificClassificationsFeatureInfoDescription,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go('/scientific-classifications'),
              child: Text(l10n.scientificClassificationsFeatureInfoButton),
            )
          ],
        ),
      ),
    );
  }
}
