import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/foundation.dart';

class ExternalAppLauncher {
  static bool get platformCanOpenApps =>
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;

  /// returns 1 if the app is installed and can launch
  /// return 0 if the app isn't installed and launching the store instead
  static Future<int> launchAntsUndergroundKingdom() async {
    var openAppResult = await LaunchApp.openApp(
      androidPackageName: 'com.star.union.planetant',
      iosUrlScheme: 'line3rdp.com.allstarunion.ta.ios://',
      appStoreLink: 'itms-apps://itunes.apple.com/app/id1568415097',
    );
    return openAppResult;
  }
}
