import 'package:ants_companion/domain/app_feedback/app_feedback.dart';
import 'package:get_it/get_it.dart';

import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});

  final AppFeedback appFeedback = GetIt.I();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              image: const DecorationImage(
                image: AssetImage('assets/banners/ant_reading_menu_2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(),
          ),
          ListTile(
            leading: const Icon(Icons.stacked_bar_chart_outlined),
            title: Text(l10n.antTiersTitle),
            onTap: () {
              context.go('/ant-tiers');
            },
          ),
          ListTile(
            leading: const Icon(Icons.notification_add_outlined),
            title: Text(l10n.colonyActionSchedulerTitle),
            onTap: () {
              context.go('/ca-scheduler');
            },
          ),
          ListTile(
            leading: const Icon(Icons.groups_3),
            title: Text(l10n.scientificClassificationsTitle),
            onTap: () {
              context.go('/scientific-classifications');
              // Navigator.pop(context);
            },
          ),
          Divider(color: Theme.of(context).colorScheme.primary, thickness: 2),
          ListTile(
            leading: const Icon(Icons.bug_report_outlined),
            title: Text(l10n.feedbackMode),
            onTap: () {
              BetterFeedback.of(context).show(
                (feedback) async {
                  await appFeedback.submitFeedback(feedback);
                },
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.developer_mode),
            title: Text(l10n.settings),
            onTap: () {
              context.go('/settings');
            },
          ),
        ],
      ),
    );
  }
}
