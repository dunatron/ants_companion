import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_indicator.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    final l10n = AppLocalizations.of(context);

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            tierRating.displayText,
            style: theme.textTheme.displaySmall
                ?.copyWith(color: theme.colorScheme.primary),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 8,
            alignment: WrapAlignment.center,
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
