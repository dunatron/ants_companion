import 'package:flutter/material.dart';

import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_indicator.dart';
import 'package:ants_companion/ui/tier_star_rating/tier_star_ratings.dart';

class PveTierSection extends StatelessWidget {
  const PveTierSection({
    super.key,
    required this.ants,
    required this.antType,
    required this.tierRating,
    required this.onTagTap,
    required this.availableWidth,
  });

  final List<Ant> ants;
  final TierRating tierRating;
  final AntType antType;
  final double availableWidth;

  final Function(AntTierTag tag, Ant ant) onTagTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    List<Map<AntTierTag, Ant>> validAnts = [];
    for (var ant in ants) {
      for (var tag in ant.tierTags) {
        final valid = tag.rating == tierRating &&
            tag.antType == antType &&
            tag is AntPveTierTag;

        if (valid) {
          validAnts.add({tag: ant});
        }
      }
    }

    if (validAnts.isEmpty) {
      return const SizedBox();
    }
    return Container(
      margin: const EdgeInsets.only(bottom: Spacing.xl),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tierRating.displayText,
            style: theme.textTheme.displaySmall,
          ),
          TierStarRating(starCount: tierRating.starCount),
          const SizedBox(height: 24),
          Wrap(
            spacing: 8,
            alignment: WrapAlignment.spaceAround,
            children: [
              ...validAnts.map(
                (antTagMap) => AntTierIndicator(
                  availableWidth: availableWidth / 3,
                  ant: antTagMap.values.toList()[0],
                  onTap: () => onTagTap(
                    antTagMap.keys.toList()[0],
                    antTagMap.values.toList()[0],
                  ),
                  tierRating: tierRating,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
