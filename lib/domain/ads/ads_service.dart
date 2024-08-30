import 'dart:async';

import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/domain/ads/ad_units.dart';
import 'package:ants_companion/domain/device_info/device_info.dart';
import 'package:flutter/foundation.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:rxdart/rxdart.dart';

// Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList("16D265166C7DAF515FA40F177BD4D2C3")) to get test ads on this device.
// You can also test with your own ad unit IDs by registering your device as a
// test device. Check the lRgs for your device's ID value.
const String heathAndroidPhoneId = '16D265166C7DAF515FA40F177BD4D2C3';

const String heathIOSPhoneId = '4151243ac11bbda74d48d0dfa0ec3fa9';
const String heathIOSPhoneReleaseId = 'a1744d10ccfe668b389a67b23971217b';

const String heathIPadId = '294b3bfcad8d794c558e08d5eabd1337';
const String heathIPadId2 = 'd8a5df37edce96ec9b116c8b6218934b';

const List<String> testDeviceIds = [
  heathAndroidPhoneId,
  heathIOSPhoneId,
  heathIOSPhoneReleaseId,
  heathIPadId,
  heathIPadId2,
];

const _enableAds = true;

const heathIOSDeviceId = '8E2F56FB-27E9-45FD-A91B-FA79D37FFC44';
const heathIPadDeviceId = 'EB1855A1-3F23-4580-AFCE-B0FE7946EB8C';
const heathAndroidDeviceId = 'TP1A.220624.014';
const ninaAndroidDeviceId = 'SP1A.210812.016';

const disableAdsWhiteList = [
  heathIOSDeviceId,
  heathIPadDeviceId,
  heathAndroidDeviceId,
  ninaAndroidDeviceId,
];

class AdsService {
  static List<String> carouselOneIds = AdUnits.carouselOneIds;

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

  static Future<bool> enabled() async {
    final deviceId = await DeviceInfo.getDeviceId();

    if (platformSupportsAds == false) return false;
    if (_enableAds == false) return false;

    if (disableAdsWhiteList.contains(deviceId)) {
      return false;
    }

    return true;
  }

  bool _initialized = false;

  // retry forever
  // final int maxRetryAttempts = double.maxFinite.toInt();
  final int maxRetryAttempts = 3;
  Duration retryDelay = const Duration(seconds: 20);

  Future<void> initialize() async {
    logger.d('Initializing Ad service');
    if (!platformSupportsAds) {
      logger.d('Platform does not support adds');
      return;
    }

    if (!await enabled()) {
      logger.d('Ads will not initialize as they are not enabled');
    }

    if (_initialized) {
      logger.d('Ads have already been initialized');
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
    if (!await enabled()) return;

    final deviceId = await DeviceInfo.getDeviceId();

    if (disableAdsWhiteList.contains(deviceId)) {
      logger.d('Ad will not load as it is whitelisted');
      return;
    }

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
        },
      ),
    );

    bannerAd.load();
  }

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
