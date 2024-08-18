import 'dart:ui';

import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/data/locales/locales_local_datasource.dart';
import 'package:ants_companion/data/locales/mappers/locale.dart';
import 'package:ants_companion/domain/locales/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rxdart/subjects.dart';

class LocalesRepository implements LocalesProvider {
  final logger = appLogger(LocalesRepository);
  LocalesRepository(this._datasource) {
    _initLocale();
    _watchPlatformForLocaleChange();
  }

  final LocalesLocalDatasource _datasource;

  final BehaviorSubject<Locale> _currentLocaleSubject =
      BehaviorSubject<Locale>();

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
    logger.d('Setting locale: $locale');
    _datasource.putLocale(locale.toStoreModel());
    _currentLocaleSubject.add(locale);
  }

  void _initLocale() {
    logger.d('Init Locales repository');
    final storedLocale = _datasource.getLocale();
    logger.d('Stored locale: $storedLocale');
    // _currentLocaleSubject
    //     .add(storedLocale?.toDomain() ?? _bestLocaleFitFromPlatform());
    if (storedLocale != null) {
      logger.d('Adding stored locale to subject');
      _currentLocaleSubject.add(storedLocale.toDomain());
    } else {
      logger.d('Adding best locale fit from platform to subject');
      _currentLocaleSubject.add(_bestLocaleFitFromPlatform());
    }
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
    _datasource.putLocale(bestFit.toStoreModel());
    _currentLocaleSubject.add(bestFit);
  }
}
