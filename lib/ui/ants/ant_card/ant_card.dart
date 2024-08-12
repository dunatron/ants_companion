import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AntCard extends StatelessWidget {
  const AntCard({
    super.key,
    required this.ant,
    this.actions,
  });

  final Ant ant;

  final Widget? actions;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: double.infinity,
                height: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ant.profilePath),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      margin: const EdgeInsets.all(8),
                      color: Theme.of(context).colorScheme.surfaceContainerLow,
                      child: Text(
                        ant.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    // TierRating
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _TierRatingCircle(
                          title: l10n.pveAbbreviation,
                          rating: ant.topPveRating(),
                        ),
                        _TierRatingCircle(
                          title: l10n.pvpAbbreviation,
                          rating: ant.topPvpRating(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TierRatingCircle extends StatelessWidget {
  const _TierRatingCircle({required this.title, required this.rating});

  final String title;

  final TierRating rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        shape: BoxShape.circle,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelSmall,
            textAlign: TextAlign.end,
          ),
          Text(
            rating.displayText,
            style: Theme.of(context).textTheme.labelLarge,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
