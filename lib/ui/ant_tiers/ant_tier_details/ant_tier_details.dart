import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:ants_companion/domain/ads/ad_units.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/ui/ads/ad_card.dart';
import 'package:ants_companion/ui/ads/ad_widget_builder.dart';
import 'package:ants_companion/ui/ant_skills/ant_skills_viewer.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_details_reason.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_details_tags_list.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/view_model/ant_tier_details_view_model.dart';
import 'package:ants_companion/ui/ants/ant_profile_image.dart';
import 'package:ants_companion/ui/scientific_classifications/scientific_species_extension.dart';
import 'package:ants_companion/ui/section.dart';
import 'package:ants_companion/ui/tier_star_rating/tier_star_ratings.dart';

class AntTierDetails extends StatefulWidget {
  const AntTierDetails({super.key, required this.ant, required this.tierTag});

  final Ant ant;

  final AntTierTag tierTag;

  @override
  State<AntTierDetails> createState() => _AntTierDetailsState();
}

class _AntTierDetailsState extends State<AntTierDetails> {
  late final AntTierDetailsViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = AntTierDetailsViewModel(
      ant: widget.ant,
      tierTag: widget.tierTag,
    );
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profilePictureUrl = widget.ant.profilePath;

    final tags = widget.ant.tierTags;

    final l10n = AppLocalizations.of(context);

    return SelectionArea(
      child: Column(
        children: [
          Text(
            widget.ant.species.commonName(l10n),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          if (profilePictureUrl.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: AntProfileImage(
                  imagePath: widget.ant.profilePath, radius: 120),
            ),
          StreamBuilder(
            stream: viewModel.data(),
            builder: (context, snapshot) {
              final data = snapshot.data;
              if (data == null) {
                return const SizedBox();
              }

              final isPvpTag = data.tierTag is AntPvpTierTag;
              return Section(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (isPvpTag) ...[
                          Text(
                            data.tierTag.rowPosition.displayText(l10n),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(width: 8),
                        ],
                        Text(
                          data.tierTag.antType.displayText(l10n),
                          style: Theme.of(context).textTheme.titleLarge,
                        )
                      ],
                    ),
                    Text(
                      isPvpTag ? l10n.pvpFull : l10n.pveFull,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      data.tierTag.rating.displayText,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    TierStarRating(starCount: data.tierTag.rating.starCount),
                  ],
                ),
              );
            },
          ),
          AntTierDetailsReason(viewModel: viewModel),
          AdWidgetBuilder(
            child: Section(
              padding: const EdgeInsets.only(
                  top: 0, bottom: Spacing.l, left: 0, right: 0),
              child: AdCard(
                adId: AdUnits.antDetailsAdUnitId,
                selfLoad: AdCardSelfLoad(size: AdSize.banner),
              ),
            ),
          ),
          AntTierDetailsTagsList(viewModel: viewModel, tierTags: tags),
          Padding(
            padding:
                const EdgeInsetsDirectional.symmetric(horizontal: Spacing.l),
            child: AntSkillsViewer(antId: widget.ant.id),
          ),
          const SizedBox(height: Spacing.l),
          Section(
            child: Text(
              widget.ant.species.scientificName(l10n),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Section(
            child: Text(
              widget.ant.species.description(l10n),
            ),
          ),
        ],
      ),
    );
  }

  // String skillDescriptionLevel10(final AntSkill skill) {
  //   final description = switch (skill) {
  //     TertiaryDefense() => 'TertiaryDefense ${skill.percentage}',
  //     DominanceThree() => 'DominanceThree',
  //     TertiaryAttack() => 'TertiaryAttack ${skill.percentage}',
  //     BattleFeverSkill() => 'BattleFeverSkill',
  //   };
  //   return description;
  // }
}
