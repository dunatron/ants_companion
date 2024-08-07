import 'dart:ui';

import 'package:ants_companion/domain/locales/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rxdart/subjects.dart';

class LocalesRepository implements LocalesProvider {
  LocalesRepository() {
    _watchPlatformForLocaleChange();
  }

  final BehaviorSubject<Locale> _currentLocaleSubject =
      BehaviorSubject.seeded(_bestLocaleFitFromPlatform());

  @override
  Stream<Locale> currentLocale() {
    return _currentLocaleSubject.stream;
  }

  @override
  List<Locale> supportedLocales() {
    return AppLocalizations.supportedLocales;
  }

  @override
  void setLocale(Locale locale) {
    _currentLocaleSubject.add(locale);
  }

  static Locale _bestLocaleFitFromPlatform() {
    final platformLocale = PlatformDispatcher.instance.locale;
    const supported = AppLocalizations.supportedLocales;

    if (supported.contains(platformLocale)) {
      return platformLocale;
    } else if (supported
        .map((locale) => locale.languageCode)
        .contains(platformLocale.languageCode)) {
      return Locale(platformLocale.languageCode);
    } else {
      return const Locale('en');
    }
  }

  _watchPlatformForLocaleChange() =>
      WidgetsBinding.instance.platformDispatcher.onLocaleChanged =
          () => _setLocaleToPlatformLocale();

  _setLocaleToPlatformLocale() {
    final bestFit = _bestLocaleFitFromPlatform();

    _currentLocaleSubject.add(bestFit);
  }
}
