import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/themes/models/color_seed.dart';
import 'package:ants_companion/ui/theme/checkbox_example.dart';
import 'package:ants_companion/ui/theme/scheme_variant_picker.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeExamples extends StatelessWidget {
  const ThemeExamples({super.key, required this.seed});

  final ColorSeed seed;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.all(Spacing.l),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(Spacing.l),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    seed.dynamicSchemeVariant.displayTitle(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(seed.dynamicSchemeVariant.description()),
                  const SizedBox(height: Spacing.n),
                  // ToDo: probably missed something here, drunk as f
                  CheckboxExample(label: l10n.button)
                  // Row(
                  //   children: [
                  //     ElevatedButton(
                  //       onPressed: () {
                  //         // AlertDialog()

                  //       },
                  //       child: Text(l10n.button),
                  //     ),
                  //     Checkbox(value: true, onChanged: (v) {})
                  //   ],
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
