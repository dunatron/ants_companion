import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/colony_actions/models/colony_action.dart';
import 'package:ants_companion/ui/colony_action/scheduler/ca_name_extension.dart';

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

  goToColonyActionDetailsScreen(
    final BuildContext context,
    final String caKey,
  ) =>
      context.go('/ca-scheduler/monitoring/details/$caKey');

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final caKey = ca.key;

    final caWarzoneDay = caKey.colonyActionTypeFromKey().displayName(l10n);

    final theme = Theme.of(context);

    return Card(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: Spacing.n),
                  child: Text(
                    caWarzoneDay,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
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
            padding: const EdgeInsets.only(
              top: 0,
              left: Spacing.s,
              right: Spacing.l,
              bottom: Spacing.s,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () =>
                      goToColonyActionDetailsScreen(context, ca.key),
                  child: Text(l10n.details),
                ),
                Wrap(
                  children: [
                    Text(l10n.shortTime(ca.date.toLocal())),
                    const SizedBox(width: Spacing.m),
                    Text(l10n.utcHour(ca.date.toUtc().hour)),
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
