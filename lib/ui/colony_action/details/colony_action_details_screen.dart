import 'package:ants_companion/domain/colony_actions/colony_actions.dart';
import 'package:ants_companion/ui/colony_action/scheduler/ca_info_extension.dart';
import 'package:ants_companion/ui/colony_action/scheduler/ca_name_extension.dart';
import 'package:ants_companion/ui/layouts/constrained_sliver_width.dart';
import 'package:ants_companion/ui/layouts/sliver_page_layout.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class ColonyActionDetailsScreen extends StatelessWidget {
  const ColonyActionDetailsScreen({super.key, required this.caKey});

  final String caKey;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final locale = Localizations.localeOf(context);

    final caName = caKey.colonyActionTypeFromKey().displayName(l10n);
    final numberFormat = NumberFormat('#,###', locale.toLanguageTag());
    final tasks = CATask.colonyActionTaskList(caKey, l10n);

    return SliverPageLayout(
      title: caName,
      slivers: [
        SliverToBoxAdapter(
          child: ColonyActionNotificationDetails(caKey: caKey),
        ),
        ConstrainedSliverWidth(
          maxWidth: 560,
          child: SliverList.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];

              return ListTile(
                title: Text(task.title),
                subtitle: Text(task.points.toString()),
              );
            },
          ),
        )
      ],
    );
  }
}

class ColonyActionNotificationDetails extends StatelessWidget {
  ColonyActionNotificationDetails({super.key, required this.caKey});

  final String caKey;

  final ColonyActions _colonyActions = GetIt.I();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _colonyActions.byKey(caKey),
      builder: (context, snapshot) {
        final colonyAction = snapshot.data;

        if (colonyAction == null) {
          return Container();
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${colonyAction.hour} UTC'),
            IconButton(
              onPressed: () {
                _colonyActions.updateColonyAction(
                  colonyAction.copyWith(
                    notificationEnabled: !colonyAction.notificationEnabled,
                  ),
                );
              },
              icon: Icon(
                colonyAction.notificationEnabled
                    ? Icons.notifications_active
                    : Icons.notifications_off,
                color: colonyAction.notificationEnabled
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
            ),
          ],
        );
      },
    );
  }
}
