import 'package:ants_companion/config/config.dart';

class DevelopmentConfig implements Config {
  @override
  Environment get environment => Environment.development;

  @override
  bool get disableAds => true;

  @override
  List<String> get disableAdsWhiteList => [];

  @override
  List<String> get testDeviceIds => [];
}
