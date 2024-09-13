import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/data/themes/mappers/color_seed_mapper.dart';
import 'package:ants_companion/data/themes/themes_local_datasource.dart';
import 'package:ants_companion/domain/themes/models/color_seed.dart';
import 'package:ants_companion/domain/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ThemesRepository implements ThemesProvider {
  ThemesRepository(this._datasource) {
    _init();
  }

  final logger = appLogger(
    ThemesRepository,
  );

  final ThemesLocalDatasource _datasource;

  final BehaviorSubject<ColorSeed> subject = BehaviorSubject();

  _init() {
    final cachedColorSeed = _datasource.getColorSeed();
    if (cachedColorSeed == null) {
      subject.add(
        const ColorSeed(
          color: Colors.blue,
          dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot,
          brightness: Brightness.dark,
        ),
      );
    } else {
      subject.add(cachedColorSeed.toDomain());
    }
  }

  @override
  ColorSeed get currentSeed => subject.value;

  @override
  Stream<ColorSeed> currentThemeData() => subject.stream.asBroadcastStream();

  @override
  void applyColorScheme(ColorSeed colorSeed) {
    logger.d('applying color seed: $colorSeed');
    _datasource.putColorSeed(colorSeed.toStoreModel());
    subject.add(colorSeed);
  }
}
