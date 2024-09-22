import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/ui/ads/ad_card.dart';
import 'package:ants_companion/ui/custom_carousel_view.dart';
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

  static const double _adHeight = 250;
  static const double _adWidth = 300;

  static const double _borderThickness = 2;
  static const double _itemPadding = 8;

  static const double _carouselItemWidth =
      _adWidth + (_borderThickness * 2) + (_itemPadding * 2);

  static const double _carouselContainerHeight =
      _adHeight + (_borderThickness * 2) + (_itemPadding * 2);

  @override
  Widget build(BuildContext context) {
    // ToDo: maybe handle this in a less blasty approach
    // ads.disposeAllAds();
    AdsService.disposeAllAds();

    // adds a delay to not immediately load the ads, for performance
    Future.delayed(const Duration(seconds: 3), () {
      for (var adId in adIds) {
        ads.loadBannerAd(adId, AdSize.mediumRectangle);
      }
    });
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: _carouselContainerHeight),
        child: CustomCarouselView(
          itemSnapping: true,
          itemExtent: _carouselItemWidth,
          shrinkExtent: _carouselItemWidth,
          shape: Border.all(width: _borderThickness, color: Colors.transparent),
          padding: const EdgeInsets.all(_itemPadding),
          children: List<Widget>.generate(
            adIds.length,
            (int index) {
              return Container(
                color: Theme.of(context).colorScheme.surfaceContainerHigh,
                child: Center(child: AdCard(adId: adIds[index])),
              );
            },
          ),
        ),
      ),
    );
  }
}
