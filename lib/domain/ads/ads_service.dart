import 'dart:async';

import 'package:ants_companion/core/log/loggers.dart';
import 'package:flutter/foundation.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:rxdart/rxdart.dart';

// You can also test with your own ad unit IDs by registering your device as a
// test device. Check the lRgs for your device's ID value.
const String heathAndroidPhoneId = '16D265166C7DAF515FA40F177BD4D2C3';

const String heathIOSPhoneId = '4e13be65b27b1aac710235ad76129477';

const String heathIPadId = '294b3bfcad8d794c558e08d5eabd1337';
const String heathIPadId2 = 'd8a5df37edce96ec9b116c8b6218934b';

const List<String> testDeviceIds = [
  heathAndroidPhoneId,
  heathIOSPhoneId,
  heathIPadId,
  heathIPadId2
];

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

  // Singleton pattern
  static final AdsService _instance = AdsService._internal();
  factory AdsService() => _instance;

  AdsService._internal();

  final logger = appLogger(AdsService);

  final BehaviorSubject<Map<String, BannerAd?>> _bannerSubject =
      BehaviorSubject.seeded({});

  Stream<BannerAd?> adsStream(String addId) =>
      _bannerSubject.stream.map((it) => it[addId]);

  static bool get platformSupportsAds =>
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;

  static bool get enabled => platformSupportsAds && _enableAds;

  bool _initialized = false;

  // retry forever
  final int maxRetryAttempts = double.maxFinite.toInt();
  // final int maxRetryAttempts = 30;
  Duration retryDelay = const Duration(seconds: 10);

  // If retryDelay is less than 5 minutes, bump it by 10 seconds
  _increaseRetryDelay() {
    if (retryDelay < const Duration(minutes: 5)) {
      retryDelay += const Duration(seconds: 10);
    }
  }

  Future<void> initialize() async {
    logger.d('Initializing Ad service');
    if (_initialized) {
      logger.d('Ads have already been initialized');
    }
    if (!enabled) {
      logger.d('Ads will not initialize as they are not enabled');
    }
    await MobileAds.instance.initialize();
    logger.d('Ads service has been initialized');
    // Ad our device as a test device for ads
    MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: testDeviceIds),
    );
    logger.d('Ads request config has been configured');
    _initialized = true;
  }

  static updateRequestConfiguration() =>
      MobileAds.instance.updateRequestConfiguration(
        RequestConfiguration(testDeviceIds: testDeviceIds),
      );

  Future<void> loadBannerAd(String adUnitId, AdSize size) async {
    unawaited(loadBannerAdWithRetry(adUnitId, size));
  }

  Future<void> loadBannerAdWithRetry(
    String adUnitId,
    AdSize size, {
    int attempt = 0,
  }) async {
    if (!enabled) return;

    // check if ad is already loaded
    if (_bannerSubject.value.containsKey(adUnitId)) {
      logger.d('Ad is already loaded: $adUnitId');
      return;
    }

    final bannerAd = BannerAd(
      adUnitId: adUnitId,
      request: const AdRequest(),
      size: size,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          logger.d('Loaded Banner Ad: $ad');
          _bannerSubject.add({
            ..._bannerSubject.value,
            adUnitId: ad as BannerAd,
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          logger.d('Failed to load Banner Ad: ${ad.adUnitId}\n error: $error');
          ad.dispose();
          if (attempt < maxRetryAttempts) {
            Future.delayed(retryDelay, () {
              // _increaseRetryDelay();
              loadBannerAdWithRetry(adUnitId, size, attempt: attempt + 1);
            });
          } else {
            logger.e('Max retry attempts reached for ad unit: $adUnitId');
          }
        },
      ),
    );

    bannerAd.load();
  }

  // disposeAllAds() => _bannerSubject.value.forEach((_, ad) => ad.dispose());

  disposeAllAds() {
    _bannerSubject.value.forEach((_, ad) => ad?.dispose());
    _bannerSubject.add({});
  }

  refreshAllAds() {
    Map<String, BannerAd> ads = {};
    _bannerSubject.value.forEach((_, ad) {
      if (ad != null) {
        ads[ad.adUnitId] = ad;
        ad.dispose();
      }
    });
    _bannerSubject.add({});
    ads.forEach((_, ad) {
      loadBannerAd(ad.adUnitId, ad.size);
    });
  }

  void dispose() {
    _bannerSubject.value.forEach((_, ad) => ad?.dispose());
    _bannerSubject.close();
  }
}
