import 'package:ants_companion/data/colony_actions/models/colony_action.dart'
    as store;
import 'package:ants_companion/domain/colony_actions/models/colony_action.dart';

extension ColonyActionToStoreModel on ColonyAction {
  store.ColonyAction toStoreModel() {
    return store.ColonyAction(
      key: key,
      notificationEnabled: notificationEnabled,
      favourite: favourite,
    );
  }
}

extension ColonyActionToDomainModel on store.ColonyAction {
  ColonyAction toDomain({
    required String key,
    required int order,
    required DateTime date,
    required int day,
    required int hour,
  }) {
    return ColonyAction(
      key: key,
      order: order,
      date: date,
      day: day,
      hour: hour,
      notificationEnabled: notificationEnabled,
      favourite: favourite ?? false,
    );
  }
}
