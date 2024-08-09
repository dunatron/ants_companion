import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/ants/ants.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/ui/ads/ads_carousel.dart';
import 'package:ants_companion/ui/ants/ant_details/ant_details.dart';
import 'package:ants_companion/ui/ants/ants_carousel/ants_carousel.dart';
import 'package:ants_companion/ui/bottom_sheet_modal/bottom_sheet_modal.dart';
import 'package:ants_companion/ui/home/ants_tier_feaure_info.dart';
import 'package:ants_companion/ui/home/feature_masonry_grid.dart';
import 'package:ants_companion/ui/home/notifications_feature_info.dart';
import 'package:ants_companion/ui/home/scientific_classifications_feature_info.dart';
import 'package:ants_companion/ui/home/soldier_ants_comparison_feature_info.dart';
import 'package:ants_companion/ui/home/welcome_info.dart';
import 'package:ants_companion/ui/layouts/constrained_sliver_width.dart';
import 'package:ants_companion/ui/layouts/sliver_page_layout.dart';
import 'package:ants_companion/ui/locale/locale_selector.dart';

import 'package:ants_companion/ui/notification_tapped_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  _launchAntDetails(final Ant ant, BuildContext context) =>
      buildBottomSheetModal(context, AntDetails(ant: ant));

  @override
  Widget build(BuildContext context) {
    final antsList = Ants.antsList();

    final l10n = AppLocalizations.of(context);

    return NotificationTappedProvider(
      child: SliverPageLayout(
        title: l10n.appTitle,
        slivers: [
          _buildBanner(context),
          _buildSpace(),
          _buildWelcome(),
          _buildSpace(),
          _buildSpecialAntsTitle(l10n, context),
          _buildSpace(),
          _buildCarousel(context, antsList),
          _buildAdsCarousel(),
          _buildAppFeatureTitle(context, l10n),
          _buildSpace(),
          _buildFeaturesMasonryGrid(),
          _buildSpace(),
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
  ) =>
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.l),
        sliver: SliverToBoxAdapter(
          child: Center(
            child: Text(
              l10n.specialAnts,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      );

  Widget _buildCarousel(BuildContext context, List<Ant> ants) =>
      SliverToBoxAdapter(
        child: AntsCarousel(
          id: 'all-ants-carousel',
          onCardImageTap: (ant) {
            _launchAntDetails(ant, context);
          },
          ants: ants,
        ),
      );

  ConstrainedSliverWidth _buildAntsTierFeatureInfo() {
    return const ConstrainedSliverWidth(
      maxWidth: 500,
      child: SliverPadding(
        padding: EdgeInsets.symmetric(
          horizontal: Spacing.l,
        ),
        sliver: SliverToBoxAdapter(
          child: AntsTierFeatureInfo(),
        ),
      ),
    );
  }

  // List<Widget> _buildAdsCarousel() {
  //   if (AdsService.enabled) {
  //     return [
  //       SliverToBoxAdapter(
  //         child: AdsCarousel(
  //           id: 'home-ads-carousel',
  //           adIds: AdsService.carouselOneIds,
  //           ads: AdsService(),
  //         ),
  //       ),
  //       const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
  //     ];
  //   }

  //   return [];
  // }

  Widget _buildAdsCarousel() {
    if (AdsService.enabled) {
      return SliverPadding(
        padding: EdgeInsets.only(bottom: Spacing.vl),
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
      BuildContext context, AppLocalizations l10n) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.l),
      sliver: SliverToBoxAdapter(
        child: Center(
          child: Text(
            'App Features',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }

  Widget _buildSpace({double spacing = Spacing.vl}) => SliverToBoxAdapter(
        child: SizedBox(height: spacing),
      );
}
