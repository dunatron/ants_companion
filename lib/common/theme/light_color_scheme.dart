import 'package:flutter/material.dart';

final lightColorScheme = LightThemes.brownTonalSpot();

// Top theme contenders
// 1. greyScale
// 2. brownTonalSpot
// 3. maroonFidelity

class LightThemes {
  static ColorScheme greyScale() => ColorScheme.fromSeed(
        seedColor: Colors.grey,
        // seedColor wont actually matter with monochrome
        dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
        brightness: Brightness.light,
      );

  static ColorScheme maroonFidelity() => ColorScheme.fromSeed(
        seedColor: const Color(0xFF96416A),
        dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
        brightness: Brightness.light,
      );

  static ColorScheme indigoTonalSpot() => ColorScheme.fromSeed(
        seedColor: Colors.indigo,
        dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot,
        brightness: Brightness.light,
      );

  static ColorScheme brownVibrant() => ColorScheme.fromSeed(
        seedColor: Colors.brown,
        dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
        brightness: Brightness.light,
      );

  static ColorScheme brownNeutral() => ColorScheme.fromSeed(
        seedColor: Colors.brown,
        dynamicSchemeVariant: DynamicSchemeVariant.neutral,
        brightness: Brightness.light,
      );

  static ColorScheme brownTonalSpot() => ColorScheme.fromSeed(
        seedColor: Colors.brown,
        dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot,
        brightness: Brightness.light,
      );
}
