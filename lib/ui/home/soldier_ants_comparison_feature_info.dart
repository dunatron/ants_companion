import 'package:ants_companion/ui/home/feature_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SoldierAntsComparisonFeatureInfo extends StatelessWidget {
  const SoldierAntsComparisonFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return FeatureCard(
      child: Column(
        children: [
          Text(
            l10n.soldierAntsComparisonFeatureInfoTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          Text(
            l10n.soldierAntsComparisonFeatureInfoDescription,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => context.go('/soldier-ants-comparison'),
            child: Text(l10n.soldierAntsComparisonFeatureInfoButton),
          )
        ],
      ),
    );
  }
}
