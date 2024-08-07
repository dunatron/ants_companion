import 'package:ants_companion/bootstrap/di/register_datasources.dart';
import 'package:ants_companion/data/colony_actions/colony_actions_repository.dart';
import 'package:ants_companion/data/locales/locales_repository.dart';
import 'package:ants_companion/domain/colony_actions/colony_actions.dart';
import 'package:ants_companion/domain/locales/locales.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDI() async {
  await registerDataSources();

  GetIt.I.registerSingleton(Locales(LocalesRepository()));

  GetIt.I.registerLazySingleton(
    () => ColonyActions(ColonyActionsRepository(GetIt.I())),
  );
}
