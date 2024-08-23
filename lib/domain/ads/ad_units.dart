class AdUnits {
  static bool prod = false;

  // carousel#1item#2
  static const String _carousel1Item1 =
      'ca-app-pub-8577724747514488/1202643986';
  static const String _carousel1Item2 =
      'ca-app-pub-8577724747514488/6263398977';
  static const String _carousel1Item3 =
      'ca-app-pub-8577724747514488/6524217458';
  static const String _carousel1Item4 =
      'ca-app-pub-8577724747514488/4405320570';
  static const String _carousel1Item5 =
      'ca-app-pub-8577724747514488/4851079108';
  static const String _carousel1Item6 =
      'ca-app-pub-8577724747514488/5459381942';

  static const String _demoFixedSizeBanner =
      'ca-app-pub-3940256099942544/6300978111';

  static const String _demoAdaptiveBanner =
      'ca-app-pub-3940256099942544/9214589741';

  static final String homeAdUnitId =
      prod ? 'ca-app-pub-8577724747514488/4573507812' : _demoFixedSizeBanner;
  static final String _antDetailsAdUnitId =
      'ca-app-pub-8577724747514488/8321181130';

  static const String _colonyActionDetailsAdUnitId =
      'ca-app-pub-8577724747514488/2934785216';

  static String antDetailsAdUnitId =
      prod ? _antDetailsAdUnitId : _demoAdaptiveBanner;

  static String colonyActionDetailsAdUnitId =
      prod ? _colonyActionDetailsAdUnitId : _demoAdaptiveBanner;

  static List<String> carouselOneIds = prod
      ? [
          carousel1Item1,
          carousel1Item2,
          carousel1Item3,
          carousel1Item4,
          carousel1Item5,
          carousel1Item6
        ]
      : [_demoFixedSizeBanner];

  // carousel#1item#2
  static String carousel1Item1 = prod ? _carousel1Item1 : _demoFixedSizeBanner;
  static String carousel1Item2 = prod ? _carousel1Item2 : _demoFixedSizeBanner;
  static String carousel1Item3 = prod ? _carousel1Item3 : _demoFixedSizeBanner;
  static String carousel1Item4 = prod ? _carousel1Item4 : _demoFixedSizeBanner;
  static String carousel1Item5 = prod ? _carousel1Item5 : _demoFixedSizeBanner;
  static String carousel1Item6 = prod ? _carousel1Item6 : _demoFixedSizeBanner;
}
