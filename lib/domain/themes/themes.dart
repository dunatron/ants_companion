import 'package:ants_companion/domain/themes/models/color_seed.dart';

class Themes {
  const Themes(this._provider);

  final ThemesProvider _provider;

  Stream<ColorSeed> currentColorScheme() => _provider.currentThemeData();

  ColorSeed get currentSeed => _provider.currentSeed;

  void applyColorScheme(ColorSeed colorScheme) =>
      _provider.applyColorScheme(colorScheme);
}

abstract class ThemesProvider {
  Stream<ColorSeed> currentThemeData();

  ColorSeed get currentSeed;

  void applyColorScheme(ColorSeed colorScheme);
}
