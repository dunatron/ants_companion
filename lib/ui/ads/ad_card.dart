import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdCard extends StatelessWidget {
  AdCard({
    super.key,
    required this.adId,
  });

  final AdsService adService = AdsService();

  final String adId;

  @override
  Widget build(BuildContext context) {
    // adService.loadTestAd(adId);
    return StreamBuilder(
      stream: adService.adsStream(adId),
      builder: (context, snapshot) {
        // return const Card(
        //   child: Center(
        //     child: CircularProgressIndicator(),
        //   ),
        // );
        final data = snapshot.data;
        if (data == null || data.adUnitId != adId) {
          return const Card(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        // final adWidget = AdWidget(ad: data);
        return Center(
          child: AdWidget(ad: data),
        );
        // return Card(
        //   child: Container(
        //     padding: EdgeInsets.all(8),
        //     alignment: Alignment.center,
        //     // width: data.size.width.toDouble(),
        //     // height: data.size.height.toDouble(),
        //     // width: 300,
        //     // height: 250,
        //     child: AdWidget(ad: data),
        //   ),
        // );
      },
    );
  }
}
