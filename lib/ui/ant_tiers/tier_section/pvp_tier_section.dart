import 'package:ants_companion/common/models/row_position.dart';
import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';

import 'package:ants_companion/ui/ant_tiers/ant_tier_indicator.dart';
import 'package:ants_companion/ui/tier_star_rating/tier_star_ratings.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PvpTierSection extends StatelessWidget {
  const PvpTierSection(
      {super.key,
      required this.ants,
      required this.antType,
      required this.tierRating,
      required this.isPvp,
      required this.availableWidth,
      required this.onTagTap});

  final TierRating tierRating;
  final AntType antType;

  final List<Ant> ants;

  final bool isPvp;

  final double availableWidth;

  final Function(AntTierTag tag, Ant ant) onTagTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final theme = Theme.of(context);

    List<Map<AntTierTag, Ant>> frontRow = [];
    List<Map<AntTierTag, Ant>> middleRow = [];
    List<Map<AntTierTag, Ant>> backRow = [];

    for (var ant in ants) {
      for (var tag in ant.tierTags) {
        final isPvpTag = tag is AntPvpTierTag;

        final isCorrectTagType = isPvpTag == isPvp;

        final valid = tag.rating == tierRating &&
            tag.antType == antType &&
            isCorrectTagType;

        if (tag.rowPosition == RowPosition.front && valid) {
          frontRow.add({tag: ant});
        } else if (tag.rowPosition == RowPosition.middle && valid) {
          middleRow.add({tag: ant});
        } else if (tag.rowPosition == RowPosition.back && valid) {
          backRow.add({tag: ant});
        }
      }
    }

    if (frontRow.isEmpty && middleRow.isEmpty && backRow.isEmpty) {
      return const SizedBox();
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            tierRating.displayText,
            style: theme.textTheme.displaySmall,
          ),
          TierStarRating(starCount: tierRating.starCount),
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(l10n.rowPositionFront),
                    const SizedBox(height: 16),
                    ...frontRow.map(
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
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(l10n.rowPositionMiddle),
                    const SizedBox(height: 16),
                    ...middleRow.map((antTagMap) => AntTierIndicator(
                          availableWidth: availableWidth / 3,
                          ant: antTagMap.values.toList()[0],
                          onTap: () => onTagTap(
                            antTagMap.keys.toList()[0],
                            antTagMap.values.toList()[0],
                          ),
                          tierRating: tierRating,
                        ))
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(l10n.rowPositionBack),
                    const SizedBox(height: 16),
                    ...backRow.map((antTagMap) => AntTierIndicator(
                          availableWidth: availableWidth / 3,
                          ant: antTagMap.values.toList()[0],
                          onTap: () => onTagTap(
                            antTagMap.keys.toList()[0],
                            antTagMap.values.toList()[0],
                          ),
                          tierRating: tierRating,
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
