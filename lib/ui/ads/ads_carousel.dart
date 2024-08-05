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
        const double sidePadding = 8;

        final widthNeeded = _adWidth + (sidePadding * 2);
        final cardsThatFit = constraints.maxWidth / widthNeeded;

        final viewportFraction = 1 / cardsThatFit;

        return SizedBox(
          height: _adHeight,
          width: double.infinity,
          child: Container(
            color: Colors.pink,
            child: PageView.builder(
              controller: PageController(viewportFraction: viewportFraction),
              itemCount: adIds.length,
              itemBuilder: (context, index) {
                final adId = adIds[index];
                return AdCard(adId: adId);
                // final widget = ads.getBannerAdWidget(adIds[index]);
                // return Container(
                //   margin: const EdgeInsets.symmetric(horizontal: sidePadding),
                //   child: Center(child: widget),
                // );
              },
            ),
          ),
        );
      },
    );
  }
}
