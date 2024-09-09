import 'package:ants_companion/data/colony_actions/colony_actions_generator.dart';
import 'package:ants_companion/data/colony_actions/datasource/colony_actions_local_datasource.dart';
import 'package:ants_companion/data/colony_actions/mappers/colony_action_mapper.dart';
import 'package:ants_companion/domain/colony_actions/models/colony_action.dart';
import 'package:ants_companion/data/colony_actions/models/colony_action.dart'
    as d;

class ColonyActionsDatasource {
  ColonyActionsDatasource(this._local);
  final ColonyActionsLocalDatasource _local;

  List<ColonyAction> allColonyActions() {
    // final items = _local.getAll();

    // Map<String, bool> mapped = {};
    // for (var ca in items) {
    //   mapped[ca.key] = ca.notificationEnabled;
    // }

    // final newList = ColonyActionsGenerator.generateList();

    // final mergedList = newList
    //     .map((it) => it.copyWith(notificationEnabled: mapped[it.key]))
    //     .toList();

    // return mergedList;

    final items = _local.getAll();

    Map<String, d.ColonyAction> mapped = {};
    for (var ca in items) {
      mapped[ca.key] = ca;
    }

    final newList = ColonyActionsGenerator.generateList();

    final mergedList = newList
        .map(
          (it) => it.copyWith(
            notificationEnabled: mapped[it.key]?.notificationEnabled,
            favourite: mapped[it.key]?.favourite,
            date: mapped[it.key]?.date,
          ),
        )
        .toList();

    return mergedList;
  }

  Future<void> addColonyActions(List<ColonyAction> items) async {
    await _local.putAll(items.map((it) => it.toStoreModel()).toList());
    // await _local.putAll(items);
  }

  Future<void> updateColonyAction(ColonyAction item) async {
    await _local.update(item.toStoreModel());
  }
}
