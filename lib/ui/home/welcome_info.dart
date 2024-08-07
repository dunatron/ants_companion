import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/ui/locale/locale_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WelcomeInfo extends StatelessWidget {
  const WelcomeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.l),
        child: Column(
          children: [
            Text(
              l10n.welcomeInfoTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: Spacing.l),
            Text(
              l10n.welcomeInfoDescription,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Spacing.vl),
            const LocaleSelector(),
          ],
        ),
      ),
    );
  }
}
