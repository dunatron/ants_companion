import 'package:ants_companion/ui/home/feature_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScientificClassificationsFeatureInfo extends StatelessWidget {
  const ScientificClassificationsFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return FeatureCard(
      onTap: () => context.go('/scientific-classifications'),
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
          TextButton.icon(
            icon: const Icon(Icons.groups_3),
            onPressed: () => context.go('/scientific-classifications'),
            label: Text(l10n.scientificClassificationsFeatureInfoButton),
          )
        ],
      ),
    );
  }
}
