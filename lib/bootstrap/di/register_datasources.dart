import 'package:ants_companion/bootstrap/di/register_local_datasources.dart';
import 'package:ants_companion/data/colony_actions/datasource/colony_actions_datasource.dart';
import 'package:get_it/get_it.dart';

Future<void> registerDataSources() async {
  await Future.wait([
    registerLocalDataSources(),
  ]);

  GetIt.I.registerLazySingleton(() => ColonyActionsDatasource(GetIt.I()));
}
