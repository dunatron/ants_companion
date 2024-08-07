import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/ui/ads/ad_card.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsCarousel extends StatelessWidget {
  const AdsCarousel({
    super.key,
    required this.id,
    required this.adIds,
    required this.ads,
  });

  final String id;
  final List<String> adIds;

  final AdsService ads;

  final double _adHeight = 250;
  final double _adWidth = 300;

  @override
  Widget build(BuildContext context) {
    if (!AdsService.enabled) return const SizedBox();
    for (var adId in adIds) {
      ads.loadBannerAd(
        adId,
        AdSize.mediumRectangle, // 300x250
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        // final double sidePadding = constraints.maxWidth > 400 ? 16 : 0;
        const double gap = 8;
        // Width of each item with side padding
        final double itemWidth = _adWidth;

        // Calculate width needed for each item including the gap
        final double widthNeeded = itemWidth + (gap * 2);

        final int cardsThatFit = (constraints.maxWidth / widthNeeded).floor();

        // Calculate viewport fraction based on the number of cards that fit
        final double viewportFraction = widthNeeded / constraints.maxWidth;

        return SizedBox(
          height: _adHeight,
          width: double.infinity,
          child: PageView.builder(
            controller: PageController(viewportFraction: viewportFraction),
            itemCount: adIds.length,
            padEnds: true,
            reverse: false,
            pageSnapping: true,
            itemBuilder: (context, index) {
              final adId = adIds[index];
              final isFirst = index == 0;
              final isLast = index == adIds.length - 1;

              const EdgeInsetsGeometry margin = EdgeInsets.only(
                left: gap,
                right: gap,
              );

              return Container(
                margin: margin,
                color: Colors.transparent,
                child: AdCard(adId: adId),
              );
            },
          ),
        );
      },
    );
  }
}
