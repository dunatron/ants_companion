import 'dart:math';

import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/ui/tier_star_rating/tier_star_ratings.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AntCardTierRatings extends StatelessWidget {
  const AntCardTierRatings({super.key, required this.ant});

  final Ant ant;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color:
            Theme.of(context).colorScheme.surfaceContainerLow.withOpacity(0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TierRatingSection(
            title: l10n.pveFull,
            tierRating: ant.topPveRating(),
          ),
          TierRatingSection(
            title: l10n.pvpFull,
            tierRating: ant.topPvpRating(),
          ),
        ],
      ),
    );
  }
}

class TierRatingSection extends StatelessWidget {
  const TierRatingSection({
    super.key,
    required this.title,
    required this.tierRating,
  });

  final String title;

  final TierRating tierRating;

  @override
  Widget build(BuildContext context) {
    // List<Widget> starWidgets = [];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TierStarRating(starCount: tierRating.starCount),
          ],
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
