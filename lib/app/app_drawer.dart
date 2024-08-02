import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              image: DecorationImage(
                image: AssetImage('assets/banners/ant_reading_menu_2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(),
            // child: Text(
            //   'Navigator',
            //   style: TextStyle(
            //     color: Theme.of(context).colorScheme.onPrimary,
            //     fontSize: 24,
            //   ),
            // ),
          ),

          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Ant Tier Rankings'),
            onTap: () {
              Navigator.pop(context);
              context.go('/ant-tiers');
            },
          ),

          // ListTile(
          //   leading: const Icon(Icons.message),
          //   title: const Text('Hatch Recorder'),
          //   onTap: () {
          //     context.go('/hatch-recorder');
          //     Navigator.pop(context);
          //   },
          // ),

          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Colony Action Scheduler'),
            onTap: () {
              context.go('/ca-scheduler');
              Navigator.pop(context);
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.message),
          //   title: const Text('Pending Notifications'),
          //   onTap: () {
          //     context.go('/pending-notifications');
          //     Navigator.pop(context);
          //   },
          // ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Scientific Classifications'),
            onTap: () {
              context.go('/scientific-classifications');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Soldier Comparison'),
            onTap: () {
              context.go('/soldier-ants-comparison');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
