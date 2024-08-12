import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AntTiersGameModeSelector extends StatelessWidget {
  const AntTiersGameModeSelector({
    super.key,
    required this.pvpSelected,
    required this.onChange,
  });

  final bool pvpSelected;

  final Function(bool isPvp) onChange;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.all(Spacing.l),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
                foregroundColor: !pvpSelected
                    ? WidgetStateProperty.all<Color>(
                        Theme.of(context).colorScheme.onPrimary,
                      )
                    : null,
                backgroundColor: !pvpSelected
                    ? WidgetStateProperty.all<Color>(
                        Theme.of(context).colorScheme.primary,
                      )
                    : null),
            onPressed: () => onChange(false),
            child: Text(l10n.pveAbbreviation),
          ),
          const SizedBox(width: Spacing.l),
          ElevatedButton(
            style: ButtonStyle(
                foregroundColor: pvpSelected
                    ? WidgetStateProperty.all<Color>(
                        Theme.of(context).colorScheme.onPrimary,
                      )
                    : null,
                backgroundColor: pvpSelected
                    ? WidgetStateProperty.all<Color>(
                        Theme.of(context).colorScheme.primary,
                      )
                    : null),
            onPressed: () => onChange(true),
            child: Text(l10n.pvpAbbreviation),
          ),
        ],
      ),
    );
  }
}
