import 'package:ants_companion/domain/colony_actions/models/colony_action.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';
import 'package:ants_companion/domain/notifications/models/notification_payload.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'dart:async';

import 'package:ants_companion/domain/colony_actions/colony_actions.dart';
import 'package:ants_companion/domain/colony_actions/models/colony_action.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';
import 'package:ants_companion/ui/colony_action/scheduler/ca_info_extension.dart';
import 'package:ants_companion/ui/colony_action/scheduler/ca_name_extension.dart';
import 'package:ants_companion/ui/layouts/constrained_sliver_width.dart';
import 'package:ants_companion/ui/layouts/sliver_page_layout.dart';

import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:haptic_feedback/haptic_feedback.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class ColonyActions {
  const ColonyActions(this._provider);

  final ColonyActionsProvider _provider;

  Stream<List<ColonyAction>> weeklyList() => _provider.weeklyList();

  Stream<ColonyAction?> byKey(String key) => _provider.byKey(key);

  // Future<void> updateColonyAction(ColonyAction item) =>
  //     _provider.updateColonyAction(item);

  Future<void> updateColonyAction(
    ColonyAction item,
    AppLocalizations l10n,
  ) async {
    if (item.notificationEnabled) {
      await LocalNotifications.scheduleColonyActionNotification(
        id: item.order,
        title: l10n.colonyAction,
        body: item.key.colonyActionTypeFromKey().displayName(l10n),
        // payload: '/ca-scheduler/${item.key}',
        // payload:
        //     ColonyActionNotificationPayload(caKey: item.key).toJsonString(),
        caKey: item.key,
        date: item.date,
        // date: DateTime.now().add(Duration(seconds: 5)),
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
