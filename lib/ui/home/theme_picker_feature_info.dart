import 'package:ants_companion/ui/home/feature_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemePickerFeatureInfo extends StatelessWidget {
  const ThemePickerFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return FeatureCard(
      onTap: () => context.go('/settings/theme'),
      child: Column(
        children: [
          Text(
            l10n.themePickerFeatureInfoTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          Text(
            l10n.themePickerFeatureInfoDescription,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          const Icon(
            Icons.palette_outlined,
            size: 42,
          )
        ],
      ),
    );
  }
}
