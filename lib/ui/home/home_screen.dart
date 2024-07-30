import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/ants/ants.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/ui/ants/ant_details/ant_details_screen.dart';
import 'package:ants_companion/ui/ants/ants_carousel/ants_carousel.dart';
import 'package:ants_companion/ui/home/ants_tier_feaure_info.dart';
import 'package:ants_companion/ui/home/notifications_feature_info.dart';
import 'package:ants_companion/ui/home/welcome_info.dart';
import 'package:ants_companion/ui/layouts/page_layout.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tiers_display.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
    final antsList = Ants.antsList();
    return PageLayout(
      title: 'Ants Companion',
      slivers: [
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: Spacing.l,
          ),
          sliver: SliverToBoxAdapter(
            child: WelcomeInfo(),
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
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: Spacing.l,
          ),
          sliver: SliverToBoxAdapter(
            child: NotificationsFeatureInfo(),
          ),
        )
        // SliverToBoxAdapter(
        //   child: AntTiersDisplay(ants: antsList),
        // )
      ],
    );
  }
}
