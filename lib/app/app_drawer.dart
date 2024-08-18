import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

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
              // Navigator.pop(context);
              context.go('/ant-tiers');
            },
          ),
          ListTile(
            leading: const Icon(Icons.notification_add_outlined),
            title: Text(l10n.colonyActionSchedulerTitle),
            onTap: () {
              context.go('/ca-scheduler');
              // Navigator.pop(context);
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
          // ListTile(
          //   leading: const Icon(Icons.message),
          //   title: Text(l10n.soldierStatsTitle),
          //   onTap: () {
          //     context.go('/soldier-ants-comparison');
          //     // Navigator.pop(context);
          //   },
          // ),
          ListTile(
            leading: const Icon(Icons.palette_outlined),
            title: Text('Theme Picker'),
            onTap: () {
              // Navigator.pop(context);
              context.go('/theme-picker');
            },
          ),
          ListTile(
            leading: const Icon(Icons.developer_mode),
            title: Text('Device Info'),
            onTap: () {
              // Navigator.pop(context);
              context.go('/device-info');
            },
          ),
        ],
      ),
    );
  }
}
