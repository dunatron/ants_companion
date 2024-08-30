import 'dart:async';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ants_companion/domain/colony_actions/models/colony_action.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';
import 'package:ants_companion/ui/colony_action/scheduler/ca_name_extension.dart';

class ColonyActions {
  const ColonyActions(this._provider);

  final ColonyActionsProvider _provider;

  Stream<List<ColonyAction>> weeklyList() => _provider.weeklyList();

  Stream<ColonyAction?> byKey(String key) => _provider.byKey(key);

  Future<void> updateColonyAction(
    ColonyAction item,
    AppLocalizations l10n,
  ) async {
    if (item.notificationEnabled) {
      await LocalNotifications.scheduleColonyActionNotification(
        id: item.order,
        title: l10n.colonyAction,
        body: item.key.colonyActionTypeFromKey().displayName(l10n),
        caKey: item.key,
        date: item.date,
      );
      _provider.updateColonyAction(item);
    } else {
      await LocalNotifications.cancelNotificationChannel(
        item.order,
      );
      _provider.updateColonyAction(item);
    }
  }
}

abstract class ColonyActionsProvider {
  Stream<List<ColonyAction>> weeklyList();

  Stream<ColonyAction?> byKey(String key);
  Future<void> updateColonyAction(ColonyAction item);
}
