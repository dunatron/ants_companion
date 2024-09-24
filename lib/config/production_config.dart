import 'package:ants_companion/config/config.dart';

const heathIOSDeviceId = '8E2F56FB-27E9-45FD-A91B-FA79D37FFC44';
const heathIPadDeviceId = 'EB1855A1-3F23-4580-AFCE-B0FE7946EB8C';
const heathAndroidDeviceId = 'TP1A.220624.014';
const ninaAndroidDeviceId = 'SP1A.210812.016';

// Ad Mob test ids
const String heathAndroidPhoneId = '16D265166C7DAF515FA40F177BD4D2C3';
const String heathIOSPhoneId = '9ecd06c7de6e973cc4b63d248c1bc27f';
const String heathIOSPhoneReleaseId = 'a1744d10ccfe668b389a67b23971217b';
const String heathIPadId = '8999193E-9430-4F36-92C9-5B64B6E06033';
const String heathIPadReleaseId = 'c670581de72f4d6db75660bf6c1f2f23';
const List<String> testDeviceIds = [
  heathAndroidPhoneId,
  heathIOSPhoneId,
  heathIOSPhoneReleaseId,
  heathIPadId,
  heathIPadReleaseId,
];

class ProductionConfig implements Config {
  @override
  Environment get environment => Environment.production;

  @override
  bool get disableAds => false;

  @override
  List<String> get disableAdsWhiteList =>
      [heathIOSDeviceId, heathIPadDeviceId, heathAndroidDeviceId];

  @override
  List<String> get testDeviceIds => throw UnimplementedError();
}
