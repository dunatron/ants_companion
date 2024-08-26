import 'package:ants_companion/domain/colony_actions/models/colony_action.dart';
import 'package:ants_companion/ui/colony_action/scheduler/ca_info_extension.dart';
import 'package:ants_companion/ui/colony_action/scheduler/ca_name_extension.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class MonitoringColonyActionCard extends StatelessWidget {
  const MonitoringColonyActionCard({
    super.key,
    required this.ca,
    required this.onNotificationIconTap,
    required this.onFavouriteIconTap,
  });

  final ColonyAction ca;

  final Function() onNotificationIconTap;
  final Function() onFavouriteIconTap;

  @override
  Widget build(BuildContext context) {
    // ColonyActionName
    final l10n = AppLocalizations.of(context);
    final locale = Localizations.localeOf(context);

    // ColonyActionName

    final caKey = ca.key;

    // ToDo fix this
    final caWarzoneDay = caKey.colonyActionTypeFromKey().displayName(l10n);

    final caName = caKey.colonyActionTypeFromKey().displayName(l10n);
    // final numberFormat = NumberFormat('#,###', locale.toLanguageTag());
    final tasks = CATask.colonyActionTaskList(caKey, l10n);
    final theme = Theme.of(context);

    final localDateFormatter = DateFormat('h:mm a');

    // '${item.date.toUtc().hour} UTC - ${localDateFormatter.format(item.date.toLocal())}'

    return Card(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    caWarzoneDay,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
              // const Expanded(child: SizedBox()),
              IconButton(
                onPressed: onFavouriteIconTap,
                icon: Icon(
                  ca.favourite ? Icons.star : Icons.star_border_outlined,
                  color: ca.favourite ? theme.colorScheme.primary : null,
                ),
              ),
              IconButton(
                onPressed: onNotificationIconTap,
                icon: Icon(
                  ca.notificationEnabled
                      ? Icons.notifications_active
                      : Icons.notifications_off,
                  color:
                      ca.notificationEnabled ? theme.colorScheme.primary : null,
                ),
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 8, right: 16, bottom: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // GoRoute
                    context.go('/ca-scheduler/monitoring/details/${ca.key}');
                  },
                  child: Text('Details'),
                  // icon: const Icon(Icons.view_agenda),
                ),
                Wrap(
                  children: [
                    Text(localDateFormatter.format(ca.date.toLocal())),
                    const SizedBox(width: 12),
                    Text('${ca.date.toUtc().hour} UTC'),
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
