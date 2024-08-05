import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/ui/home/feature_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotificationsFeatureInfo extends StatelessWidget {
  const NotificationsFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return FeatureCard(
      child: Column(
        children: [
          Text(
            l10n.notificationsFeatureInfoTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          Text(
            l10n.notificationsFeatureInfoDescription,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => context.go('/ca-scheduler'),
            child: Text(l10n.notificationsFeatureInfoButton),
          )
        ],
      ),
    );
  }
}
