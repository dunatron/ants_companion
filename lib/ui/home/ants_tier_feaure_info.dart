import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:haptic_feedback/haptic_feedback.dart';

class AntsTierFeatureInfo extends StatelessWidget {
  const AntsTierFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.l),
        child: Column(
          children: [
            Text(
              l10n.antsTierFeatureInfoTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            Text(
              l10n.antsTierFeatureInfoDescription,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...TierRating.values.map(
                  (tierRating) => Container(
                    child: Text(
                      tierRating.displayText,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: tierRating.color),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              // onPressed: () => context.go('/ant-tiers'),
              onPressed: () async {
                // Check if device is capable of haptic feedback
                final can = await Haptics.canVibrate();
                if (!context.mounted) return;
                final snackbarMessage = can
                    ? 'Can do haptic feedback'
                    : 'This device is not capable of haptic feedback.';
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(snackbarMessage, textAlign: TextAlign.center),
                    duration: const Duration(seconds: 1),
                  ),
                );

                // Vibrate only if device is capable of haptic feedback
                if (!can) return;
                await Haptics.vibrate(HapticsType.heavy);
                context.go('/ant-tiers');
              },
              child: Text(l10n.antsTierFeatureInfoButton),
            )
          ],
        ),
      ),
    );
  }
}
