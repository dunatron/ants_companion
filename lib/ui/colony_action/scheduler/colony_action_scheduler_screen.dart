import 'dart:async';

import 'package:ants_companion/domain/colony_actions/colony_actions.dart';
import 'package:ants_companion/domain/colony_actions/models/colony_action.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';
import 'package:ants_companion/domain/notifications/models/notification_payload.dart';
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

class ColonyActionSchedulerScreen extends StatefulWidget {
  const ColonyActionSchedulerScreen({super.key});

  @override
  State<ColonyActionSchedulerScreen> createState() =>
      _ColonyActionSchedulerScreenState();
}

class _ColonyActionSchedulerScreenState
    extends State<ColonyActionSchedulerScreen> {
  List<ColonyAction> weeklySchedule = [];

  final ColonyActions _colonyActions = GetIt.I();

  StreamSubscription<List<ColonyAction>>? _sub;

  @override
  void initState() {
    super.initState();
    _sub = _colonyActions.weeklyList().listen(
      (event) {
        setState(() {
          weeklySchedule = event;
        });
      },
    );
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  viewColonyActionTasks(ColonyAction colonyAction, AppLocalizations l10n,
      NumberFormat numberFormat) {
    final taskList = CATask.colonyActionTaskList(
      colonyAction.key,
      l10n,
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: ListView.builder(
            itemCount: taskList.length,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            itemBuilder: (context, index) {
              final item = taskList[index];

              final pointsText = '+${numberFormat.format(item.points)}';

              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        pointsText,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final locale = Localizations.localeOf(context);
    final numberFormat = NumberFormat('#,###', 'ar');
    final localDateFormatter = DateFormat('h:mm a');

    var checkedCount = 0;

    for (final ca in weeklySchedule) {
      if (ca.notificationEnabled) {
        checkedCount++;
      }
    }

    return SliverPageLayout(
      title: l10n.colonyActionSchedulerTitle,
      slivers: [
        ConstrainedSliverWidth(
          maxWidth: 280,
          child: SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () async {
                await LocalNotifications.requestPermissions();
                LocalNotifications.showSimpleNotification(
                  title: l10n.notificationTestTitle,
                  body: l10n.notificationTestBody,
                  // payload: '/ca-scheduler/details/1-12',
                  payload: ColonyActionNotificationPayload(
                    caKey: '1-12',
                    scheduledAt: DateTime.now(),
                    scheduledFor: DateTime.now(),
                  ).toJsonString(),
                );
              },
              child: Text(l10n.notificationTestButtonLabel),
            ),
          ),
        ),
        ConstrainedSliverWidth(
          maxWidth: 280,
          child: SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () async {
                await LocalNotifications.requestPermissions();
                LocalNotifications.scheduleNotification(
                  title: 'scheduleNotification',
                  body: 'scheduleNotification',
                  // payload: '/ca-scheduler/details/1-12',
                  payload: ColonyActionNotificationPayload(
                    caKey: '1-12',
                    scheduledAt: DateTime.now(),
                    scheduledFor: DateTime.now(),
                  ).toJsonString(),
                );
              },
              child: Text('Schedule test'),
            ),
          ),
        ),
        ConstrainedSliverWidth(
          maxWidth: 280,
          child: SliverToBoxAdapter(
            child: Text(l10n.colonyActionSchedulerDescription),
          ),
        ),
        ConstrainedSliverWidth(
          maxWidth: 280,
          child: SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 8),
            sliver: SliverToBoxAdapter(
              child: ElevatedButton(
                  onPressed: () {
                    context.go('/ca-scheduler/pending');
                  },
                  child: Text('Monitoring: $checkedCount')),
            ),
          ),
        ),
        ConstrainedSliverWidth(
          maxWidth: 420,
          child: SliverList.builder(
            itemCount: 7,
            itemBuilder: (context, dayIndex) {
              final warzoneName = dayIndex.warzoneDayName(l10n);
              return ExpansionTile(
                title: Text(warzoneName),
                children: List.generate(
                  24,
                  (hourIndex) {
                    final key =
                        ColonyAction.makeKey(day: dayIndex, hour: hourIndex);
                    final item = weeklySchedule.firstWhere(
                      (it) => it.key == key,
                    );

                    final caName =
                        key.colonyActionTypeFromKey().displayName(l10n);

                    return ListTile(
                      onTap: () {
                        context.go('/ca-scheduler/details/${item.key}');
                      },
                      leading: IconButton(
                        onPressed: () {
                          viewColonyActionTasks(item, l10n, numberFormat);
                        },
                        icon: const Icon(Icons.info_outlined),
                      ),
                      subtitle: RichText(
                        text: TextSpan(
                          text: '$caName\n',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              // text:
                              //     '${item.date.toUtc().hour} UTC - ${localDateFormatter.format(item.date)}',
                              text:
                                  '${item.date.toUtc().hour} UTC - ${localDateFormatter.format(item.date.toLocal())}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      trailing: Checkbox(
                        value: item.notificationEnabled,
                        onChanged: (final v) async {
                          await _colonyActions.updateColonyAction(
                            item.copyWith(notificationEnabled: v),
                            l10n,
                          );
                          final canVibrate = await Haptics.canVibrate();
                          // Vibrate only if device is capable of haptic feedback
                          if (canVibrate) {
                            await Haptics.vibrate(HapticsType.success);
                          }
                        },
                      ),
                    );
                  },
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

extension on int {
  String warzoneDayName(AppLocalizations l10n) {
    final val = switch (this) {
      0 => l10n.warzoneAnthillDevelopment,
      1 => l10n.warzoneGatherResources,
      2 => l10n.warzoneEvolution,
      3 => l10n.warzoneSpecialAnts,
      4 => l10n.warzoneHatchSoldierAnts,
      5 => l10n.warzoneFreeChoice,
      6 => l10n.warzoneInsectHatching,
      int() => throw UnimplementedError(),
    };
    return val;
  }
}
