import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AntsTierFeatureInfo extends StatelessWidget {
  const AntsTierFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.l),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              children: [
                Text(
                  l10n.antsTierFeatureInfoTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                Text(
                  l10n.antsTierFeatureInfoDescription,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
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
                ElevatedButton(
                  onPressed: () => context.go('/ant-tiers'),
                  child: Text(l10n.antsTierFeatureInfoButton),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
