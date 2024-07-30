import 'package:ants_companion/data/colony_actions/datasource/colony_actions_local_datasource.dart';
import 'package:ants_companion/data/colony_actions/models/colony_action.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> registerLocalDataSources() async {
  await Hive.initFlutter();
  // Colony Actions
  Hive.registerAdapter(ColonyActionAdapter());

  final colonyActionsDatasourceBox =
      await Hive.openBox<ColonyAction>('colony_actions_datasource_box');

  GetIt.I.registerLazySingleton(
    () => ColonyActionsLocalDatasource(colonyActionsDatasourceBox),
  );
}
