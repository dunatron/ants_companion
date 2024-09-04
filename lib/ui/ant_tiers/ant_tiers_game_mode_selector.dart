import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GameModeViewItem {
  const GameModeViewItem({required this.title, required this.isPvp});
  final String title;
  final bool isPvp;
}

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

    final items = [
      GameModeViewItem(
        title: l10n.pveFull,
        isPvp: false,
      ),
      GameModeViewItem(
        title: l10n.pvpFull,
        isPvp: true,
      ),
    ];

    final selectedItem = items.firstWhere(
      (it) => it.isPvp == pvpSelected,
    );

    return Padding(
      padding: const EdgeInsets.all(8),
      child: DropdownButton<GameModeViewItem>(
        value: selectedItem,
        items: List<DropdownMenuItem<GameModeViewItem>>.from(
          items.map(
            (it) => DropdownMenuItem<GameModeViewItem>(
              value: it,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  it.title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ),
        onChanged: (it) => it != null ? onChange(it.isPvp) : null,
      ),
    );
  }
}


// import 'package:ants_companion/common/spacing.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// class AntTiersGameModeSelector extends StatelessWidget {
//   const AntTiersGameModeSelector({
//     super.key,
//     required this.pvpSelected,
//     required this.onChange,
//   });

//   final bool pvpSelected;

//   final Function(bool isPvp) onChange;

//   @override
//   Widget build(BuildContext context) {
//     final l10n = AppLocalizations.of(context);
//     return Padding(
//       padding: const EdgeInsets.all(Spacing.l),
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               style: ButtonStyle(
//                   foregroundColor: !pvpSelected
//                       ? WidgetStateProperty.all<Color>(
//                           Theme.of(context).colorScheme.onPrimary,
//                         )
//                       : null,
//                   backgroundColor: !pvpSelected
//                       ? WidgetStateProperty.all<Color>(
//                           Theme.of(context).colorScheme.primary,
//                         )
//                       : null),
//               onPressed: () => onChange(false),
//               child: Text(l10n.pveFull),
//             ),
//             const SizedBox(width: Spacing.l),
//             ElevatedButton(
//               style: ButtonStyle(
//                   foregroundColor: pvpSelected
//                       ? WidgetStateProperty.all<Color>(
//                           Theme.of(context).colorScheme.onPrimary,
//                         )
//                       : null,
//                   backgroundColor: pvpSelected
//                       ? WidgetStateProperty.all<Color>(
//                           Theme.of(context).colorScheme.primary,
//                         )
//                       : null),
//               onPressed: () => onChange(true),
//               child: Text(l10n.pvpFull),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
