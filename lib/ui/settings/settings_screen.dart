import 'package:ants_companion/ui/layouts/page_layout.dart';
import 'package:ants_companion/ui/settings/privacy_settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NavItem {
  const NavItem({required this.title, required this.route, required this.icon});

  final String title;
  final String route;
  final IconData icon;
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final navItems = [
      NavItem(
        title: l10n.themePicker,
        route: '/settings/theme',
        icon: Icons.palette_outlined,
      ),
      NavItem(
        title: l10n.deviceInfo,
        route: '/settings/device-info',
        icon: Icons.developer_mode,
      ),
    ];

    return PageLayout(
      title: 'Settings',
      crossAxisAlignment: CrossAxisAlignment.start,
      widgets: [
        ...navItems.map(
          (navItem) => ListTile(
            leading: Icon(navItem.icon),
            title: Text(navItem.title),
            onTap: () => context.go(navItem.route),
          ),
        ),
        const SizedBox(height: 16),
        const PrivacySettings(),
      ],
    );
  }
}
