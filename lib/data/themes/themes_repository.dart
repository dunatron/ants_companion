import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/data/themes/models/color_seed.dart';
import 'package:ants_companion/domain/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ThemesRepository implements ThemesProvider {
  final logger = appLogger(ThemesRepository);

  final BehaviorSubject<ColorSeed> subject = BehaviorSubject.seeded(
    ColorSeed(
      color: Colors.brown,
      dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot,
      brightness: Brightness.dark,
    ),
  );

  @override
  ColorSeed get currentSeed => subject.value;

  @override
  Stream<ColorSeed> currentThemeData() => subject.stream.asBroadcastStream();

  @override
  void addCustomUserColorScheme(ColorSeed colorScheme) {
    // TODO: implement addCustomUserColorScheme
  }

  @override
  void applyColorScheme(ColorSeed colorScheme) {
    logger.d('applying color scheme: $colorScheme');
    subject.add(colorScheme);
  }
}
