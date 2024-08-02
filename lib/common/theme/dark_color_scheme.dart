import 'package:flutter/material.dart';

final darkColorScheme = DarkThemes.indigoVibrant();

// Top theme contenders
// 1. greyScale
// 2. indigoVibrant
// 3. maroonFidelity

const lightPink = Color(0xFFFFB0D0);
const lightIndigo = Color(0xFFADC6FF);
const maroon = Color(0xFF96416A);

class DarkThemes {
  static ColorScheme greyScale() => ColorScheme.fromSeed(
        seedColor: Colors.grey,
        // seedColor wont actually matter with monochrome
        dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
        brightness: Brightness.dark,
      );

  static ColorScheme maroonFidelity() => ColorScheme.fromSeed(
        seedColor: maroon,
        dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
        brightness: Brightness.dark,
      );

  static ColorScheme indigoVibrant() => ColorScheme.fromSeed(
        seedColor: Colors.indigo,
        dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
        brightness: Brightness.dark,
      );

  static ColorScheme lightIndigoVibrant() => ColorScheme.fromSeed(
        seedColor: lightIndigo,
        dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
        brightness: Brightness.dark,
        // surface: DarkSurfaceColors.surface,
        // onSurface: DarkSurfaceColors.onSurface,
        // surfaceContainer: DarkSurfaceColors.surfaceContainer,
        // surfaceContainerHigh: DarkSurfaceColors.surfaceContainerHigh,
        // surfaceContainerHighest: DarkSurfaceColors.surfaceContainerHighest,
        // surfaceContainerLow: DarkSurfaceColors.surfaceContainerLow,
        // surfaceContainerLowest: DarkSurfaceColors.surfaceContainerLowest,
      );

  static ColorScheme test() => ColorScheme.fromSeed(
        seedColor: Colors.brown,
        dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot,
        brightness: Brightness.dark,
      );
}

class DarkSurfaceColors {
  static const Color surface = Color(0xFF111415);
  static const Color onSurface = Color(0xFFC5C7C8);
  static const Color surfaceContainerHighest = Color(0xFF323537);
  static const Color surfaceContainerHigh = Color(0xFF272A2C);
  static const Color surfaceContainer = Color(0xFF1D2022);
  static const Color surfaceContainerLow = Color(0xFF191C1E);
  static const Color surfaceContainerLowest = Color(0xFF0C0F10);
  static const Color surfaceBright = Color(0xFF373A3B);
  static const Color surfaceDim = Color(0xFF111415);
}
