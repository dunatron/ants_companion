import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdCardSelfLoad {
  AdCardSelfLoad({
    required this.size,
  });

  final AdSize size;
}

class AdCard extends StatelessWidget {
  const AdCard({
    super.key,
    required this.adId,
    this.selfLoad,
  });

  final String adId;
  final AdCardSelfLoad? selfLoad;

  @override
  Widget build(BuildContext context) {
    final adService = AdsService();

    // ignore: no_leading_underscores_for_local_identifiers
    final _selfLoad = selfLoad;

    if (_selfLoad != null) {
      adService.loadBannerAd(adId, _selfLoad.size);
    }

    return StreamBuilder<BannerAd?>(
      stream: adService.adsStream(adId),
      builder: (context, snapshot) {
        final ad = snapshot.data;

        if (ad == null) {
          return const Card(
            child: Center(child: CircularProgressIndicator()),
          );
        }

        return SizedBox(
          width: ad.size.width.toDouble(),
          height: ad.size.height.toDouble(),
          child: AdWidget(ad: ad),
        );
      },
    );
  }
}
