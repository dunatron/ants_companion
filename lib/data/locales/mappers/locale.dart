import 'package:ants_companion/data/locales/models/locale_store_model.dart';
import 'package:flutter/material.dart';

extension LocaleToStoreModel on Locale {
  LocaleStoreModel toStoreModel() {
    return LocaleStoreModel(
      languageCode: languageCode,
      countryCode: countryCode,
    );
  }
}

extension LocaleToDomain on LocaleStoreModel {
  Locale toDomain() {
    return Locale(languageCode, countryCode);
  }
}
