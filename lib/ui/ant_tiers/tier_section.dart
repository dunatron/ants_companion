import 'package:ants_companion/common/models/row_position.dart';
import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details.dart';
import 'package:ants_companion/ui/ants/ant_details/ant_details_screen.dart';

import 'package:ants_companion/ui/ant_tiers/ant_tier_indicator.dart';
import 'package:ants_companion/ui/bottom_sheet_modal/bottom_sheet_modal.dart';
import 'package:ants_companion/ui/modal_single_page_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TierSection extends StatelessWidget {
  const TierSection({
    super.key,
    required this.ants,
    required this.antType,
    required this.tierRating,
    required this.isPvp,
    required this.availableWidth,
  });

  final TierRating tierRating;
  final AntType antType;

  final List<Ant> ants;

  final bool isPvp;

  final double availableWidth;

  _launchAntDetails(
    final Ant ant,
    AntTierTag tierTag,
    BuildContext context,
  ) =>
      buildBottomSheetModal(
          context,
          AntTierDetails(
            ant: ant,
            tierTag: tierTag,
          ));

  // _launchAntDetails(
  //   final Ant ant,
  //   AntTierTag tierTag,
  //   BuildContext context,
  // ) =>
  //     showModalBottomSheet(
  //       context: context,
  //       isScrollControlled: true,
  //       enableDrag: true,
  //       showDragHandle: true,
  //       builder: (BuildContext _) {
  //         return DraggableScrollableSheet(
  //           maxChildSize: 1,
  //           initialChildSize: kIsWeb ? 0.8 : 0.5,
  //           expand: false,
  //           builder: (
  //             BuildContext context,
  //             ScrollController scrollController,
  //           ) =>
  //               ModalSinglePageView(
  //             controller: scrollController,
  //             child: AntTierDetails(
  //               ant: ant,
  //               tierTag: tierTag,
  //             ),
  //           ),
  //         );
  //       },
  //     );

  @override
  Widget build(BuildContext context) {
    // List<Ant> frontRow = [];
    // List<Ant> middleRow = [];
    // List<Ant> backRow = [];

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
        // final valid = tag.rating == tierRating &&
        //     (tag.antType == antType || tag.antType == AntType.universal) &&
        //     isCorrectTagType;
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
                    ...frontRow.map(
                      (antTagMap) => AntTierIndicator(
                        availableWidth: availableWidth / 3,
                        ant: antTagMap.values.toList()[0],
                        onTap: () => _launchAntDetails(
                          antTagMap.values.toList()[0],
                          antTagMap.keys.toList()[0],
                          context,
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
                    const Text('Middle'),
                    const SizedBox(height: 16),
                    ...middleRow.map((antTagMap) => AntTierIndicator(
                          availableWidth: availableWidth / 3,
                          ant: antTagMap.values.toList()[0],
                          onTap: () => _launchAntDetails(
                            antTagMap.values.toList()[0],
                            antTagMap.keys.toList()[0],
                            context,
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
                    const Text('Back'),
                    const SizedBox(height: 16),
                    ...backRow.map((antTagMap) => AntTierIndicator(
                          availableWidth: availableWidth / 3,
                          ant: antTagMap.values.toList()[0],
                          onTap: () => _launchAntDetails(
                            antTagMap.values.toList()[0],
                            antTagMap.keys.toList()[0],
                            context,
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
