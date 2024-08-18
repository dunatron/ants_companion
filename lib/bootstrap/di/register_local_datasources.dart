import 'package:ants_companion/data/colony_actions/datasource/colony_actions_local_datasource.dart';
import 'package:ants_companion/data/colony_actions/models/colony_action.dart';
import 'package:ants_companion/data/locales/locales_local_datasource.dart';
import 'package:ants_companion/data/locales/models/locale_store_model.dart';
import 'package:ants_companion/data/themes/models/color_seed.dart';
import 'package:ants_companion/data/themes/themes_local_datasource.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> registerLocalDataSources() async {
  await Hive.initFlutter();
  // Colony Actions
  Hive.registerAdapter(ColonyActionAdapter());

  Hive.registerAdapter(ColorSeedAdapter());

  Hive.registerAdapter(LocaleStoreModelAdapter());

  final colonyActionsDatasourceBox =
      await Hive.openBox<ColonyAction>('colony_actions_datasource_box');

  GetIt.I.registerLazySingleton(
    () => ColonyActionsLocalDatasource(colonyActionsDatasourceBox),
  );

  final colorSeedDatasourceBox =
      await Hive.openBox<ColorSeed>('color_seed_datasource_box');

  GetIt.I.registerLazySingleton(
    () => ThemesLocalDatasource(colorSeedDatasourceBox),
  );

  final localeDatasourceBox =
      await Hive.openBox<LocaleStoreModel>('locale_datasource_box');

  GetIt.I.registerLazySingleton(
    () => LocalesLocalDatasource(localeDatasourceBox),
  );
}
