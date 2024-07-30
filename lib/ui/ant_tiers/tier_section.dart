import 'package:ants_companion/common/models/row_position.dart';
import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:ants_companion/ui/ants/ant_details/ant_details_screen.dart';

import 'package:ants_companion/ui/ant_tiers/ant_tier_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TierSection extends StatelessWidget {
  const TierSection({
    super.key,
    required this.ants,
    required this.antType,
    required this.tierRating,
    required this.isPvp,
  });

  final TierRating tierRating;
  final AntType antType;

  final List<Ant> ants;

  final bool isPvp;

  _launchAntDetails(final Ant ant, BuildContext context) =>
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        enableDrag: true,
        showDragHandle: true,
        builder: (BuildContext _) {
          return DraggableScrollableSheet(
            maxChildSize: 0.8,
            initialChildSize: kIsWeb ? 0.8 : 0.5,
            expand: false,
            builder: (
              BuildContext context,
              ScrollController scrollController,
            ) =>
                AntDetailsScreen(
              scrollController: scrollController,
              ant: ant,
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    List<Ant> frontRow = [];
    List<Ant> middleRow = [];
    List<Ant> backRow = [];

    for (var ant in ants) {
      for (var tag in ant.tierTags) {
        final isPvpTag = tag is AntPvpTierTag;

        final isCorrectTagType = isPvpTag == isPvp;

        final valid = tag.rating == tierRating &&
            tag.antType == antType &&
            isCorrectTagType;
        // final valid = tag.rating == tierRating &&
        //     (tag.antType == antType || tag.antType == AntType.universal) &&
        //     isCorrectTagType;
        if (tag.rowPosition == RowPosition.front && valid) {
          frontRow.add(ant);
        } else if (tag.rowPosition == RowPosition.middle && valid) {
          middleRow.add(ant);
        } else if (tag.rowPosition == RowPosition.back && valid) {
          backRow.add(ant);
        }
      }
    }

    if (frontRow.isEmpty && middleRow.isEmpty && backRow.isEmpty) {
      return const SizedBox();
    }

    return Container(
      // color: tierRating.color,
      margin: const EdgeInsets.only(bottom: 64),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            tierRating.displayText,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: tierRating.color),
          ),
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Front'),
                    const SizedBox(height: 16),
                    // ...frontRow.map((ant) => Chip(label: Text(ant.name)))
                    ...frontRow.map((ant) => AntTierIndicator(
                          ant: ant,
                          onTap: () => _launchAntDetails(ant, context),
                          tierRating: tierRating,
                        ))
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Middle'),
                    const SizedBox(height: 16),
                    ...middleRow.map((ant) => AntTierIndicator(
                          ant: ant,
                          onTap: () => _launchAntDetails(ant, context),
                          tierRating: tierRating,
                        ))
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Back'),
                    const SizedBox(height: 16),
                    ...backRow.map((ant) => AntTierIndicator(
                          ant: ant,
                          onTap: () => _launchAntDetails(ant, context),
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
