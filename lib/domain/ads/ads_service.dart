import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:rxdart/rxdart.dart';

// You can also test with your own ad unit IDs by registering your device as a
// test device. Check the logs for your device's ID value.
const String heathAndroidPhoneId = '16D265166C7DAF515FA40F177BD4D2C3';

const String heathIOSPhoneId = 'e08566bd9021336bb01d63a464319352';

const List<String> testDeviceIds = [heathAndroidPhoneId, heathIOSPhoneId];

const _enableAds = true;

class AdsService {
  static String homeAdUnitId = 'ca-app-pub-8577724747514488/4573507812';
  static String antDetailsAdUnitId = 'ca-app-pub-8577724747514488/8321181130';

  // carousel#1item#2
  static String carousel1Item1 = 'ca-app-pub-8577724747514488/1202643986';
  static String carousel1Item2 = 'ca-app-pub-8577724747514488/6263398977';
  static String carousel1Item3 = 'ca-app-pub-8577724747514488/6524217458';
  static String carousel1Item4 = 'ca-app-pub-8577724747514488/4405320570';
  static String carousel1Item5 = 'ca-app-pub-8577724747514488/4851079108';
  static String carousel1Item6 = 'ca-app-pub-8577724747514488/5459381942';

  static List<String> carouselOneIds = [
    carousel1Item1,
    carousel1Item2,
    carousel1Item3,
    carousel1Item4,
    carousel1Item5,
    carousel1Item6
  ];

  final Map<String, BannerAd> _bannerAds = {};
  final Map<String, BehaviorSubject<bool>> _adLoadStatus = {};

  // Singleton pattern
  static final AdsService _instance = AdsService._internal();
  factory AdsService() => _instance;

  AdsService._internal();

  static bool get platformSupportsAds => Platform.isAndroid || Platform.isIOS;

  static bool get enabled => platformSupportsAds && _enableAds;

  Future<void> initialize() async {
    if (!platformSupportsAds) return;
    await MobileAds.instance.initialize();
    // Ad our device as a test device for ads
    MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: testDeviceIds),
    );
  }

  Future<void> loadCarouselOne() async {
    for (var adId in carouselOneIds) {
      loadBannerAd(adId, AdSize.mediumRectangle);
    }
  }

  List<Widget> carouselOneWidgets() {
    return carouselOneIds.map((it) => getBannerAdWidget(it)).toList();
  }

  Future<void> loadBannerAd(String adUnitId, AdSize size) async {
    if (!enabled) return;
    if (_bannerAds.containsKey(adUnitId)) {
      return;
    }

    final adLoadSubject = BehaviorSubject<bool>.seeded(false);
    _adLoadStatus[adUnitId] = adLoadSubject;

    BannerAd bannerAd = BannerAd(
      adUnitId: adUnitId,
      request: const AdRequest(),
      size: size,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          adLoadSubject.add(true);
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          adLoadSubject.add(false);
          ad.dispose();
        },
      ),
    );

    _bannerAds[adUnitId] = bannerAd;
    bannerAd.load();
  }

  Stream<bool> getAdLoadStatus(String adUnitId) {
    return _adLoadStatus[adUnitId]?.stream ?? Stream.value(false);
  }

  Widget getBannerAdWidget(String adUnitId) {
    if (!enabled) return const SizedBox.shrink();
    final ad = _bannerAds[adUnitId];
    final adLoadStatusStream = getAdLoadStatus(adUnitId);

    return StreamBuilder<bool>(
      stream: adLoadStatusStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting ||
            !snapshot.hasData ||
            !snapshot.data!) {
          return const SizedBox.shrink();
        }
        return SizedBox(
          width: ad!.size.width.toDouble(),
          height: ad.size.height.toDouble(),
          child: AdWidget(ad: ad),
        );
      },
    );
  }

  void dispose() {
    for (var ad in _bannerAds.values) {
      ad.dispose();
    }
    _bannerAds.clear();
    for (var subject in _adLoadStatus.values) {
      subject.close();
    }
    _adLoadStatus.clear();
  }
}
