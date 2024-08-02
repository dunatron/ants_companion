import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/ants/ants.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';
import 'package:ants_companion/ui/ads/ads_carousel.dart';
import 'package:ants_companion/ui/ants/ant_details/ant_details.dart';
import 'package:ants_companion/ui/ants/ants_carousel/ants_carousel.dart';
import 'package:ants_companion/ui/bottom_sheet_modal/bottom_sheet_modal.dart';
import 'package:ants_companion/ui/home/ants_tier_feaure_info.dart';
import 'package:ants_companion/ui/home/notifications_feature_info.dart';
import 'package:ants_companion/ui/home/scientific_classifications_feature_info.dart';
import 'package:ants_companion/ui/home/soldier_ants_comparison_feature_info.dart';
import 'package:ants_companion/ui/home/welcome_info.dart';
import 'package:ants_companion/ui/layouts/page_layout.dart';
import 'package:ants_companion/ui/notification_tapped_provider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  _launchAntDetails(final Ant ant, BuildContext context) =>
      buildBottomSheetModal(context, AntDetails(ant: ant));

  @override
  Widget build(BuildContext context) {
    final antsList = Ants.antsList();

    return NotificationTappedProvider(
      child: PageLayout(
        title: 'Ants Companion',
        slivers: [
          SliverPadding(
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
                        image: AssetImage(
                            'assets/banners/ants_eager_to_teach_1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: Spacing.l),
            sliver: SliverToBoxAdapter(child: WelcomeInfo()),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: Spacing.l),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'Special Ants',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
          SliverToBoxAdapter(
            child: AntsCarousel(
              id: 'all-ants-carousel',
              onCardImageTap: (ant) {
                _launchAntDetails(ant, context);
              },
              ants: antsList,
            ),
          ),
          // const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: Spacing.l,
            ),
            sliver: SliverToBoxAdapter(
              child: AntsTierFeatureInfo(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
          if (AdsService.enabled) ...[
            SliverToBoxAdapter(
              child: AdsCarousel(
                id: 'home-ads-carousel',
                adIds: AdsService.carouselOneIds,
                ads: AdsService(),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
          ],
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: Spacing.l,
            ),
            sliver: SliverToBoxAdapter(
              child: NotificationsFeatureInfo(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: Spacing.l,
            ),
            sliver: SliverToBoxAdapter(
              child: ScientificClassificationsFeatureInfo(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: Spacing.l),
            sliver: SliverToBoxAdapter(
              child: SoldierAntsComparisonFeatureInfo(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.l),
            sliver: SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  LocalNotifications.showSimpleNotification(
                    title: 'Colony Action',
                    body: 'Hatch Soldier Ants',
                    payload: '/ca-scheduler/1-12',
                  );
                },
                child: const Text('Test Notification'),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: Spacing.vl)),
        ],
      ),
    );
  }
}
