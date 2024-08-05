import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TestAdCard extends StatefulWidget {
  const TestAdCard({super.key});

  @override
  State<TestAdCard> createState() => _TestAdCardState();
}

class _TestAdCardState extends State<TestAdCard> {
  final AdsService adsService = AdsService();
  BannerAd? bannerAd;

  @override
  void initState() {
    super.initState();
    _createBannerAd();
  }

  _createBannerAd() async {
    await adsService.initialize();
    BannerAd ad = BannerAd(
      adUnitId: AdsService.antDetailsAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            bannerAd = ad as BannerAd;
          });

          // _bannerSubject.add({
          //   ..._bannerSubject.value,
          //   adUnitId: ad as BannerAd,
          // });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('FAILED TO LOAD AD');
          // adLoadSubject.add(false);
          ad.dispose();
        },
      ),
    );

    // _bannerAds[adUnitId] = bannerAd;
    ad.load();
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    final _banerAd = bannerAd;
    if (_banerAd == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Container(
      alignment: Alignment.center,
      width: _banerAd.size.width.toDouble(),
      height: _banerAd.size.height.toDouble(),
      child: AdWidget(ad: _banerAd),
    );
  }
}
