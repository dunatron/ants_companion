import 'package:ants_companion/ui/ads/ad_card.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_details.dart';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/ants/ants.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/ui/ads/ads_carousel.dart';

import 'package:ants_companion/ui/ants/ants_carousel/ants_carousel.dart';
import 'package:ants_companion/ui/bottom_sheet_modal/bottom_sheet_modal.dart';
import 'package:ants_companion/ui/home/ants_tier_feature_info.dart';
import 'package:ants_companion/ui/home/feature_masonry_grid.dart';
import 'package:ants_companion/ui/home/notifications_feature_info.dart';
import 'package:ants_companion/ui/home/scientific_classifications_feature_info.dart';
import 'package:ants_companion/ui/home/soldier_ants_comparison_feature_info.dart';
import 'package:ants_companion/ui/home/welcome_info.dart';
import 'package:ants_companion/ui/layouts/sliver_page_layout.dart';

import 'package:ants_companion/ui/notification_tapped_provider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  _launchAntDetails(final Ant ant, BuildContext context) =>
      buildBottomSheetModal(
        context,
        AntTierDetails(
          ant: ant,
          tierTag: ant.pvpTierTags.first,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final antsList = Ants.antsList();

    final l10n = AppLocalizations.of(context);

    return NotificationTappedProvider(
      child: SliverPageLayout(
        forceAsHome: true,
        controller: scrollController,
        title: l10n.appTitle,
        slivers: [
          _buildBanner(context),
          _buildSpace(),
          _buildWelcome(),
          _buildSpace(),
          _buildSpecialAntsTitle(l10n, context),
          _buildSpace(),
          _buildCarousel(context, antsList),
          _buildSingleAdCard(context),
          // _buildAdsCarousel(),
          _buildAppFeatureTitle(context, l10n),
          _buildSpace(),
          _buildFeaturesMasonryGrid(),
          _buildSpace(),
          // _buildAdsCarousel(),
        ],
      ),
    );
  }

  SliverPadding _buildFeaturesMasonryGrid() {
    return const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: Spacing.l),
      sliver: FeatureMasonryGrid(
        items: [
          AntsTierFeatureInfo(),
          NotificationsFeatureInfo(),
          ScientificClassificationsFeatureInfo(),
          SoldierAntsComparisonFeatureInfo(),
        ],
      ),
    );
  }

  SliverPadding _buildBanner(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.l),
      sliver: SliverToBoxAdapter(
        child: Card(
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(12), // Adjust the radius as needed
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                image: const DecorationImage(
                  image: AssetImage('assets/banners/ants_eager_to_teach_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SliverPadding _buildWelcome() {
    return const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: Spacing.l),
      sliver: SliverToBoxAdapter(child: WelcomeInfo()),
    );
  }

  SliverPadding _buildSpecialAntsTitle(
    AppLocalizations l10n,
    BuildContext context,
  ) {
    final theme = Theme.of(context);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.l),
      sliver: SliverToBoxAdapter(
        child: Center(
          child: Text(l10n.specialAnts, style: theme.textTheme.headlineMedium),
        ),
      ),
    );
  }

  Widget _buildCarousel(BuildContext context, List<Ant> ants) =>
      SliverToBoxAdapter(
        // key: antsCarouselKey,
        child: AntsCarousel(
          id: 'all-ants-carousel',
          onCardImageTap: (ant) {
            _launchAntDetails(ant, context);
          },
          ants: ants,
        ),
      );

  Widget _buildSingleAdCard(BuildContext context) {
    if (AdsService.enabled) {
      return SliverPadding(
        padding: const EdgeInsets.only(bottom: Spacing.vl),
        sliver: SliverToBoxAdapter(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
              maxHeight: 250,
            ),
            child: Container(
              // color: Theme.of(context).colorScheme.surfaceContainerHigh,
              child: Center(
                child: AdCard(
                  adId: AdsService.homeAdUnitId,
                  selfLoad: AdCardSelfLoad(size: AdSize.mediumRectangle),
                ),
              ),
            ),
          ),
        ),
      );
      // Container(
      //           color: Theme.of(context).colorScheme.surfaceContainerHigh,
      //           child: Center(
      //             child: AdCard(adId: adIds[index]),
      //           ),
      //         )
    }

    return const SliverToBoxAdapter(child: SizedBox());
  }

  Widget _buildAdsCarousel() {
    if (AdsService.enabled) {
      return SliverPadding(
        padding: const EdgeInsets.only(bottom: Spacing.vl),
        sliver: SliverToBoxAdapter(
          child: AdsCarousel(
            id: 'home-ads-carousel',
            adIds: AdsService.carouselOneIds,
            ads: AdsService(),
          ),
        ),
      );
    }

    return const SliverToBoxAdapter(child: SizedBox());
  }

  SliverPadding _buildAppFeatureTitle(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    final theme = Theme.of(context);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.l),
      sliver: SliverToBoxAdapter(
        child: Center(
          child: Text(
            l10n.appFeaturesLabel,
            style: theme.textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }

  Widget _buildSpace({double spacing = Spacing.vl}) => SliverToBoxAdapter(
        child: SizedBox(height: spacing),
      );
}
