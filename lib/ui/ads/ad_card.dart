import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdCard extends StatelessWidget {
  AdCard({super.key, required this.adId});

  final AdsService adService = AdsService();

  final String adId;

  @override
  Widget build(BuildContext context) {
    // adService.loadTestAd(adId);
    return StreamBuilder(
      stream: adService.adsStream(adId),
      builder: (context, snapshot) {
        final data = snapshot.data;
        if (data == null || data.adUnitId != adId) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container(
          alignment: Alignment.center,
          // width: data.size.width.toDouble(),
          // height: data.size.height.toDouble(),
          width: 300,
          height: 250,
          child: AdWidget(ad: data),
        );
      },
    );
  }
}
