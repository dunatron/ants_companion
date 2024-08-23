import 'package:ants_companion/app/app_locale_provider.dart';
import 'package:ants_companion/bootstrap/bootstrap.dart';
import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';

import 'package:flutter/material.dart';

void main() async {
  bootstrap();

  // runApp(AppLocaleProvider((locale) => App(currentLocale: locale)));
}

// void main() async {
//   await bootstrap();

//   final adsService = AdsService();
//   await adsService.initialize();

//   await LocalNotifications.init();

//   runApp(const AppLocaleProvider());

//   // runApp(AppLocaleProvider((locale) => App(currentLocale: locale)));
// }
