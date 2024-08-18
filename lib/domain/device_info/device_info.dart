import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

class DeviceInfo {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  static Future<String?> getDeviceId() async {
    String? deviceId;

    if (defaultTargetPlatform == TargetPlatform.android) {
      final AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      deviceId = androidInfo.id; // Android ID
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      final IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      deviceId = iosInfo.identifierForVendor; // iOS Identifier for Vendor
    }

    return deviceId;
  }
}
