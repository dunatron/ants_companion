import 'package:ants_companion/domain/ads/ad_units.dart';
import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/colony_actions/colony_actions.dart';
import 'package:ants_companion/ui/ads/ad_card.dart';
import 'package:ants_companion/ui/ads/ad_widget_builder.dart';
import 'package:ants_companion/ui/colony_action/scheduler/ca_info_extension.dart';
import 'package:ants_companion/ui/colony_action/scheduler/ca_name_extension.dart';
import 'package:ants_companion/ui/layouts/constrained_sliver_width.dart';
import 'package:ants_companion/ui/layouts/sliver_page_layout.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:intl/intl.dart';

class ColonyActionDetailsScreen extends StatelessWidget {
  const ColonyActionDetailsScreen({super.key, required this.caKey});

  final String caKey;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final locale = Localizations.localeOf(context);

    final caWarzoneDay = caKey.colonyActionTypeFromKey().displayName(l10n);
    final caName = caKey.colonyActionTypeFromKey().displayName(l10n);
    final numberFormat = NumberFormat('#,###', locale.toLanguageTag());
    final tasks = CATask.colonyActionTaskList(caKey, l10n);

    return SliverPageLayout(
      title: caName,
      slivers: [
        SliverToBoxAdapter(
          child: ColonyActionNotificationDetails(caKey: caKey),
        ),
        AdWidgetBuilder(
          isSliver: true,
          child: SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            sliver: SliverToBoxAdapter(
              child: AdCard(
                adId: AdUnits.colonyActionDetailsAdUnitId,
                selfLoad: AdCardSelfLoad(size: AdSize.banner),
              ),
            ),
          ),
        ),
        ConstrainedSliverWidth(
          maxWidth: 560,
          child: SliverList.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];

              return ListTile(
                title: Text(task.title),
                subtitle: Text(numberFormat.format(task.points)),
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
    final l10n = AppLocalizations.of(context);

    final localDateFormatter = DateFormat('h:mm a');

    return StreamBuilder(
      stream: _colonyActions.byKey(caKey),
      builder: (context, snapshot) {
        final colonyAction = snapshot.data;

        if (colonyAction == null) {
          return Container();
        }
        final warzoneDayName = colonyAction.day.warzoneNameFromCa(l10n);
        return Column(
          children: [
            Text(warzoneDayName),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${colonyAction.hour} UTC'),
                IconButton(
                  onPressed: () {
                    // ToDo: must schedule a notification
                    _colonyActions.updateColonyAction(
                      colonyAction.copyWith(
                        notificationEnabled: !colonyAction.notificationEnabled,
                      ),
                      l10n,
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
            ),
            Wrap(
              children: [
                Text(
                    '${localDateFormatter.format(colonyAction.date.toLocal())}'),
                Text(' - '),
                Text(
                    '${localDateFormatter.format(colonyAction.date.add(Duration(minutes: 54)).toLocal())}'),
              ],
            )
          ],
        );
      },
    );
  }
}

extension on int {
  String warzoneNameFromCa(AppLocalizations l10n) {
    final val = switch (this) {
      1 => l10n.warzoneAnthillDevelopment,
      2 => l10n.warzoneGatherResources,
      3 => l10n.warzoneEvolution,
      4 => l10n.warzoneSpecialAnts,
      5 => l10n.warzoneHatchSoldierAnts,
      6 => l10n.warzoneFreeChoice,
      7 => l10n.warzoneInsectHatching,
      int() => throw UnimplementedError(),
    };
    return val;
  }
}
