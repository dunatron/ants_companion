import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_details_header.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/ads/ad_units.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/ui/ads/ad_card.dart';
import 'package:ants_companion/ui/ads/ad_widget_builder.dart';
import 'package:ants_companion/ui/section.dart';
import 'package:ants_companion/ui/ant_skills/ant_skills_viewer.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_details_reason.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_details_tags_list.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/view_model/ant_tier_details_view_model.dart';
import 'package:ants_companion/ui/scientific_classifications/scientific_species_extension.dart';
import 'package:ants_companion/ui/tier_star_rating/tier_star_ratings.dart';

class AntTierDetailsSliverView extends StatefulWidget {
  const AntTierDetailsSliverView({
    super.key,
    required this.scrollController,
    required this.ant,
    required this.tierTag,
  });

  final ScrollController scrollController;

  final Ant ant;

  final AntTierTag tierTag;

  @override
  State<AntTierDetailsSliverView> createState() => _AntTierDetailsState();
}

class _AntTierDetailsState extends State<AntTierDetailsSliverView> {
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

    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: CustomScrollView(
        controller: widget.scrollController,
        // physics: const ClampingScrollPhysics(),
        slivers: [
          AntTierDetailsHeader(
            title: widget.ant.species.commonName(l10n),
            assetPath: profilePictureUrl,
          ),
          StreamBuilder(
            stream: viewModel.data(),
            builder: (context, snapshot) {
              final data = snapshot.data;
              if (data == null) {
                return const SliverToBoxAdapter(
                  child: SizedBox(),
                );
              }

              final isPvpTag = data.tierTag is AntPvpTierTag;
              return SliverToBoxAdapter(
                child: Section(
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
                ),
              );
            },
          ),
          SliverToBoxAdapter(
            child: AntTierDetailsReason(viewModel: viewModel),
          ),
          AdWidgetBuilder(
            isSliver: true,
            child: PinnedHeaderSliver(
              child: Container(
                padding: const EdgeInsets.only(
                    right: Spacing.n, left: Spacing.n, bottom: Spacing.l),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainerLow,
                    borderRadius: BorderRadius.circular(Spacing.l),
                  ),
                  padding: const EdgeInsets.only(top: Spacing.n),
                  child: AdCard(
                    adId: AdUnits.antDetailsAdUnitId,
                    selfLoad: AdCardSelfLoad(size: AdSize.banner),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: AntTierDetailsTagsList(viewModel: viewModel, tierTags: tags),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: Spacing.l,
              ),
              child: AntSkillsViewer(antId: widget.ant.id),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: Spacing.l)),
          // constraints: const BoxConstraints(maxWidth: 400),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  // color: theme.colorScheme.surfaceContainerHighest,
                  color: theme.colorScheme.surfaceContainerHigh,
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    margin: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          widget.ant.species.scientificName(l10n),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: Spacing.n),
                        Text(
                          widget.ant.species.description(l10n),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: Spacing.xxl))
        ],
      ),
    );
  }
}
