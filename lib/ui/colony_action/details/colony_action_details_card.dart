import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/ui/colony_action/edit_colony_action_time/edit_colony_action_time.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ColonyActionDetailsCard extends StatelessWidget {
  const ColonyActionDetailsCard({
    super.key,
    required this.warzoneName,
    required this.colonyActionName,
    required this.dateUTC,
    required this.notificationEnabled,
    required this.onNotificationIconTap,
  });

  final String warzoneName;
  final String colonyActionName;

  final DateTime dateUTC;

  final bool notificationEnabled;
  final Function() onNotificationIconTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final timeLabelUTC = '${dateUTC.hour} UTC';
    final localDateFormatter = DateFormat('h:mm a');

    final localStartTime = DateFormat('EEEE h:mm a').format(dateUTC.toLocal());

    final localEndTime = localDateFormatter
        .format(dateUTC.add(const Duration(minutes: 54)).toLocal());

    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.all(Spacing.n),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      colonyActionName,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Text(
                      '${l10n.warzoneLabel} $warzoneName',
                      style: theme.textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onNotificationIconTap,
                    icon: Icon(
                      notificationEnabled
                          ? Icons.notifications_active
                          : Icons.notifications_off,
                      color: notificationEnabled
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(Spacing.l),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  timeLabelUTC,
                  style: theme.textTheme.bodyMedium,
                ),
                EditColonyActionTime(),
                MinutePickerExample(),
                Wrap(
                  children: [
                    Text(
                      localStartTime,
                      style: theme.textTheme.labelSmall,
                    ),
                    Text(
                      ' - ',
                      style: theme.textTheme.labelSmall,
                    ),
                    Text(
                      localEndTime,
                      style: theme.textTheme.labelSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
