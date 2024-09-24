import 'dart:async';

import 'package:ants_companion/config/config.dart';
import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/domain/ads/ad_units.dart';
import 'package:ants_companion/domain/device_info/device_info.dart';
import 'package:ants_companion/domain/user_consent/user_consent.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:rxdart/rxdart.dart';

// Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList("16D265166C7DAF515FA40F177BD4D2C3")) to get test ads on this device.
// You can also test with your own ad unit IDs by registering your device as a
// test device. Check the lRgs for your device's ID value.

class AdsService {
  static List<String> carouselOneIds = AdUnits.carouselOneIds;

  // Singleton pattern
  static final AdsService _instance = AdsService._internal();
  factory AdsService() => _instance;

  AdsService._internal();

  static final _config = GetIt.I<Config>();

  static final logger = appLogger(AdsService);

  static final BehaviorSubject<Map<String, BannerAd?>> _bannerSubject =
      BehaviorSubject.seeded({});

  static final _enabledSubject = BehaviorSubject<bool>.seeded(false);

  static Stream<bool> enabled() => _enabledSubject.stream;

  static List<String> get testDeviceIds => _config.testDeviceIds;

  static manuallyToggle() {
    final nextval = !_enabledSubject.value;
    if (nextval == false) {
      disposeAllAds();
    }

    _enabledSubject.add(nextval);
  }

  Stream<BannerAd?> adsStream(String addId) =>
      _bannerSubject.stream.map((it) => it[addId]);

  static bool get platformSupportsAds =>
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;

  static Future<bool> checkIsEnabled() async {
    if (_config.disableAds == false) return false;

    if (platformSupportsAds == false) return false;

    final deviceId = await DeviceInfo.getDeviceId();
    if (_config.disableAdsWhiteList.contains(deviceId)) {
      return false;
    }

    return true;
  }

  bool _initialized = false;

  // retry forever
  // final int maxRetryAttempts = double.maxFinite.toInt();
  final int maxRetryAttempts = 3;
  Duration retryDelay = const Duration(seconds: 20);

  static Future<void> preCheck() async {
    logger.d('Initialize user consent for ads');
    UserConsent.initialize();
  }

  Future<void> initialize() async {
    logger.d('Initializing Ad service');
    if (_initialized) {
      logger.d('Ads have already been initialized');
      return;
    }

    if (!platformSupportsAds) {
      logger.d('Platform does not support adds');
      return;
    }

    if (!await checkIsEnabled()) {
      logger.d('Ads will not initialize as they are not enabled');
    }

    final deviceId = await DeviceInfo.getDeviceId();

    if (_config.disableAdsWhiteList.contains(deviceId)) {
      logger.d('Ad will not load as it is whitelisted');
      _enabledSubject.add(false);
      return;
    }

    var canRequestAds = await ConsentInformation.instance.canRequestAds();

    if (canRequestAds) {
      await MobileAds.instance.initialize();
      logger.d('Ads service has been initialized');
      // Ad our device as a test device for ads
      MobileAds.instance.updateRequestConfiguration(
        RequestConfiguration(testDeviceIds: testDeviceIds),
      );
      logger.d('Ads request config has been configured');
      _initialized = true;
      _enabledSubject.add(true);
    } else {
      logger.d('Ads will not initialize as they require consent');
    }
  }

  static updateRequestConfiguration() =>
      MobileAds.instance.updateRequestConfiguration(
        RequestConfiguration(testDeviceIds: testDeviceIds),
      );

  Future<void> loadBannerAd(String adUnitId, AdSize size) async {
    logger.d('Loading banner ad');
    if (!await enabled().first) {
      logger.d('ads are not enabled exiting load banner ad');
      return;
    }
    // check if ad is already loaded
    if (_bannerSubject.value.containsKey(adUnitId)) {
      logger.d('Ad is already loaded: $adUnitId');
      return;
    }

    final canRequestAds = await ConsentInformation.instance.canRequestAds();
    if (canRequestAds == false) {
      logger.d('cannot request ads setting enabled subject to false');
      _enabledSubject.add(false);
      logger.d('disposing any ads');
      disposeAllAds();
      return;
    }

    final bannerAd = BannerAd(
      adUnitId: adUnitId,
      // request: const AdRequest(nonPersonalizedAds: true),
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

  static disposeAllAds() {
    logger.d('disposeAllAds');
    _bannerSubject.value.forEach((_, ad) => ad?.dispose());
    logger.d('set banner subject to empty');
    _bannerSubject.add({});
  }

  refreshAllAds() {
    logger.d('refreshing all ads');
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
