import 'package:flutter/material.dart';

import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_details.dart';

import 'package:ants_companion/ui/ant_tiers/tier_section/pve_tier_section.dart';
import 'package:ants_companion/ui/ant_tiers/tier_section/pvp_tier_section.dart';
import 'package:ants_companion/ui/bottom_sheet_modal/bottom_sheet_modal.dart';

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

  _launchAntDetails(final Ant ant, AntTierTag tierTag, BuildContext context) =>
      buildBottomSheetModal(
          context, AntTierDetails(ant: ant, tierTag: tierTag));

  @override
  Widget build(BuildContext context) {
    return isPvp
        ? PvpTierSection(
            ants: ants,
            antType: antType,
            tierRating: tierRating,
            isPvp: isPvp,
            availableWidth: availableWidth)
        : PveTierSection(
            ants: ants,
            antType: antType,
            tierRating: tierRating,
            availableWidth: availableWidth,
            onTagTap: (tag, ant) => _launchAntDetails(ant, tag, context),
          );
  }
}
