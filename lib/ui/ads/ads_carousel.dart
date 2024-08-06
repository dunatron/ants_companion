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
        const double gap = 64;
        // Width of each item with side padding
        final double itemWidth = _adWidth;

        // Calculate width needed for each item including the gap
        final double widthNeeded = itemWidth + gap;

        // Calculate viewport fraction based on the number of cards that fit
        final double viewportFraction = widthNeeded / constraints.maxWidth;

        return SizedBox(
          height: _adHeight,
          width: double.infinity,
          child: PageView.builder(
            controller: PageController(viewportFraction: viewportFraction),
            itemCount: adIds.length,
            padEnds: false,
            reverse: false,
            pageSnapping: true,
            itemBuilder: (context, index) {
              final adId = adIds[index];
              final isFirst = index == 0;
              final isLast = index == adIds.length - 1;

              // Define margin to adjust for gaps
              final EdgeInsetsGeometry margin = EdgeInsets.only(
                // left: isFirst ? gap : gap / 2,
                // right: isLast ? gap : gap / 2,
                // left: 16,
                // right: 16,
                left: gap / 2,
                right: gap / 2,
              );

              return Container(
                margin: margin,
                color: Colors.yellow,
                child: AdCard(adId: adId),
              );
            },
          ),
        );
      },
    );
  }
}
