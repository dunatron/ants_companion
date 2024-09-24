abstract class Config {
  Environment get environment;
  bool get disableAds;

  List<String> get disableAdsWhiteList;
  List<String> get testDeviceIds;
}

enum Environment { development, production }
