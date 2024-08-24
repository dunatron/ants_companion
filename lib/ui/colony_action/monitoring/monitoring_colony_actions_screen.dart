import 'package:ants_companion/domain/colony_actions/colony_actions.dart';
import 'package:ants_companion/domain/colony_actions/models/colony_action.dart';
import 'package:ants_companion/ui/colony_action/monitoring/monitoring_colony_action_card.dart';
import 'package:ants_companion/ui/colony_action/scheduler/colony_action_scheduler_screen.dart';
import 'package:ants_companion/ui/layouts/sliver_page_layout.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MonitoringColonyActionsScreen extends StatelessWidget {
  const MonitoringColonyActionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColonyActions colonyActions = GetIt.I();
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return SliverPageLayout(
      title: 'Monitoring',
      slivers: [
        StreamBuilder(
          stream: colonyActions.weeklyList(),
          builder: (context, snapshot) {
            final data = snapshot.data;
            if (data == null) {
              return const SliverToBoxAdapter(
                child: CircularProgressIndicator(),
              );
            }
            final filteredList = List<ColonyAction>.from(
              data.where(
                (it) => it.notificationEnabled == true || it.favourite == true,
              ),
            );

            Map<int, List<ColonyAction>> warzoneDayColonyActions = {};

            for (final ca in filteredList) {
              if (warzoneDayColonyActions.containsKey(ca.day)) {
                final existing = warzoneDayColonyActions[ca.day];
                warzoneDayColonyActions.addAll({
                  ca.day: [...?existing, ca]
                });
              } else {
                warzoneDayColonyActions.addAll({
                  ca.day: [ca]
                });
              }
            }

            print('THE MAP');
            print(warzoneDayColonyActions);

            return SliverList(
              delegate: SliverChildListDelegate(
                warzoneDayColonyActions.entries.map((entry) {
                  final day = entry.key;
                  final actions = entry.value;

                  final name = (day - 1).warzoneDayName(l10n);

                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: theme.textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 8),
                        ...[
                          ...actions.map(
                            (it) => MonitoringColonyActionCard(
                              ca: it,
                              onFavouriteIconTap: () {
                                colonyActions.updateColonyAction(
                                  it.copyWith(
                                    favourite: !it.favourite,
                                  ),
                                  l10n,
                                );
                              },
                              onNotificationIconTap: () {
                                colonyActions.updateColonyAction(
                                  it.copyWith(
                                    notificationEnabled:
                                        !it.notificationEnabled,
                                  ),
                                  l10n,
                                );
                              },
                            ),
                          )
                        ],
                        // const SizedBox(height: 16),
                      ],
                    ),
                  );
                }).toList(),
              ),
            );

            // return SliverList.builder(
            //   itemCount: warzoneDayColonyActions.length,
            //   itemBuilder: (context, index) {
            //     final warpedIndex = index + 1;
            //     final name = index.warzoneDayName(l10n);
            //     final caList = warzoneDayColonyActions[index + 1];
            //     // WarzoneDayName
            //     return Padding(
            //       padding: const EdgeInsets.all(16),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             name,
            //             style: theme.textTheme.headlineMedium,
            //           ),
            //           const SizedBox(height: 8),
            //           if (caList != null) ...[
            //             ...caList.map(
            //               (it) => MonitoringColonyActionCard(
            //                 ca: it,
            //                 onFavouriteIconTap: () {
            //                   colonyActions.updateColonyAction(
            //                     it.copyWith(
            //                       favourite: !it.favourite,
            //                     ),
            //                     l10n,
            //                   );
            //                 },
            //                 onNotificationIconTap: () {
            //                   colonyActions.updateColonyAction(
            //                     it.copyWith(
            //                       notificationEnabled: !it.notificationEnabled,
            //                     ),
            //                     l10n,
            //                   );
            //                 },
            //               ),
            //             )
            //           ],
            //           const SizedBox(height: 24),
            //         ],
            //       ),
            //     );
            //   },
            // );
          },
        ),
      ],
    );
  }
}
