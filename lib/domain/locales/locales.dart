import 'package:flutter/material.dart';

class Locales {
  const Locales(this._provider);

  final LocalesProvider _provider;

  Stream<Locale> currentLocale() => _provider.currentLocale();

  List<Locale> supportedLocales() => _provider.supportedLocales();

  void setLocale(Locale locale) => _provider.setLocale(locale);
}

abstract class LocalesProvider {
  Stream<Locale> currentLocale();

  List<Locale> supportedLocales();

  void setLocale(Locale locale);
}
