import 'package:ants_companion/app/app_locale_provider.dart';
import 'package:ants_companion/bootstrap/bootstrap.dart';
import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  await bootstrap();

  final adsService = AdsService();
  await adsService.initialize();

  await LocalNotifications.init();

  // Preload this guy AdsService.antDetailsAdUnitId

  // preloading this as quick as we can in the event that a colony action
  // notification opens the app as it will launch the game in 5 seconds
  // when it reaches the colony action details screen
  if (AdsService.enabled) {
    adsService.loadBannerAd(AdsService.antDetailsAdUnitId, AdSize.banner);
  }

  runApp(const AppLocaleProvider());

  // runApp(AppLocaleProvider((locale) => App(currentLocale: locale)));
}
