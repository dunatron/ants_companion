import 'package:ants_companion/domain/themes/models/color_seed.dart';
import 'package:ants_companion/data/themes/models/color_seed.dart' as store;
import 'package:flutter/material.dart';

extension ColorSeedToStoreModel on ColorSeed {
  store.ColorSeed toStoreModel() {
    return store.ColorSeed(
      brightness: brightness.name,
      colorValue: color.value,
      dynamicSchemeVariant: dynamicSchemeVariant.name,
    );
  }
}

extension ColorSeedToDomain on store.ColorSeed {
  ColorSeed toDomain() {
    return ColorSeed(
      brightness: brightness.brightnessFromString(),
      color: Color(colorValue),
      dynamicSchemeVariant:
          dynamicSchemeVariant.dynamicSchemeVariantFromString(),
    );
  }
}

extension StoreValueStringExtensions on String {
  DynamicSchemeVariant dynamicSchemeVariantFromString() {
    for (final variant in DynamicSchemeVariant.values) {
      if (variant.name == this) {
        return variant;
      }
    }

    return DynamicSchemeVariant.tonalSpot;
  }

  Brightness brightnessFromString() => switch (this) {
        'dark' => Brightness.dark,
        'light' => Brightness.light,
        _ => Brightness.dark,
      };
}
