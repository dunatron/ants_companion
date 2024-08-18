import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/ui/home/feature_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AntsTierFeatureInfo extends StatelessWidget {
  const AntsTierFeatureInfo({super.key});

  goToAntTiers(BuildContext context) => context.go('/ant-tiers');

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return FeatureCard(
      onTap: () => goToAntTiers(context),
      child: Column(
        children: [
          Text(
            l10n.antsTierFeatureInfoTitle,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: Spacing.l),
          Text(
            l10n.antsTierFeatureInfoDescription,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Spacing.vl),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...TierRating.values.map(
                (tierRating) => Container(
                  child: Text(
                    tierRating.displayText,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: tierRating.color),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 24),
          TextButton.icon(
            icon: const Icon(Icons.stacked_bar_chart_outlined),
            onPressed: () => goToAntTiers(context),
            label: Text(l10n.antsTierFeatureInfoButton),
          )
        ],
      ),
    );
  }
}
