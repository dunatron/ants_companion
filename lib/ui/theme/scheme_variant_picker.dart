import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';

class SchemeVariantPicker extends StatelessWidget {
  const SchemeVariantPicker({
    super.key,
    required this.schemeVariants,
    required this.selectedSchemeVariant,
    required this.onTap,
  });

  final List<DynamicSchemeVariant> schemeVariants;

  final DynamicSchemeVariant selectedSchemeVariant;

  final Function(DynamicSchemeVariant color) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Spacing.l),
      child: DropdownButton<DynamicSchemeVariant>(
        value: selectedSchemeVariant,
        items: List<DropdownMenuItem<DynamicSchemeVariant>>.from(
          schemeVariants.map(
            (it) => DropdownMenuItem<DynamicSchemeVariant>(
              value: it,
              child: Text(it.displayTitle()),
            ),
          ),
        ),
        onChanged: (value) => value != null ? onTap(value) : null,
      ),
    );
  }
}

extension DynamicSchemeVariantDescription on DynamicSchemeVariant {
  String displayTitle() => switch (this) {
        DynamicSchemeVariant.tonalSpot => "Tonal Spot",
        DynamicSchemeVariant.fidelity => 'Fidelity',
        DynamicSchemeVariant.monochrome => 'Monochrome',
        DynamicSchemeVariant.neutral => 'Neutral',
        DynamicSchemeVariant.vibrant => 'Vibrant',
        DynamicSchemeVariant.expressive => 'Expressive',
        DynamicSchemeVariant.content => 'Content',
        DynamicSchemeVariant.rainbow => 'Rainbow',
        DynamicSchemeVariant.fruitSalad => 'Fruit Salad',
      };

  String description() => switch (this) {
        DynamicSchemeVariant.tonalSpot =>
          'Default for Material theme colors. Builds pastel palettes with a low chroma.',
        DynamicSchemeVariant.fidelity =>
          'The resulting color palettes match seed color, even if the seed color is very bright (high chroma).',
        DynamicSchemeVariant.monochrome =>
          'All colors are grayscale, no chroma.',
        DynamicSchemeVariant.neutral => 'Close to grayscale, a hint of chroma.',
        DynamicSchemeVariant.vibrant =>
          "Pastel colors, high chroma palettes. The primary palette's chroma is at maximum. Use fidelity instead if tokens should alter their tone to match the palette vibrancy.",
        DynamicSchemeVariant.expressive =>
          "Pastel colors, medium chroma palettes. The primary palette's hue is different from the seed color, for variety.",
        DynamicSchemeVariant.content =>
          "Almost identical to fidelity. Tokens and palettes match the seed color. [ColorScheme.primaryContainer] is the seed color, adjusted to ensure contrast with surfaces. The tertiary palette is analogue of the seed color.",
        DynamicSchemeVariant.rainbow =>
          "A playful theme - the seed color's hue does not appear in the theme.",
        DynamicSchemeVariant.fruitSalad =>
          "A playful theme - the seed color's hue does not appear in the theme.",
      };
}


// import 'package:flutter/material.dart';

// class SchemeVariantPicker extends StatelessWidget {
//   const SchemeVariantPicker({
//     super.key,
//     required this.schemeVariants,
//     required this.selectedSchemeVariant,
//     required this.onTap,
//   });

//   final List<DynamicSchemeVariant> schemeVariants;

//   final DynamicSchemeVariant selectedSchemeVariant;

//   final Function(DynamicSchemeVariant color) onTap;

//   showDialogInfo(
//     BuildContext context, {
//     required final String title,
//     required final String description,
//     required final String actionText,
//   }) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(title),
//           content: Text(
//             description,
//             style: Theme.of(context).textTheme.bodyLarge,
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text(actionText),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding: EdgeInsets.all(16),
//         child: Row(
//           children: [
//             ...schemeVariants.asMap().entries.map((entry) {
//               final dynamicSchemeVariant = entry.value;
//               final key = entry.key;

//               final isSelected = dynamicSchemeVariant == selectedSchemeVariant;

//               final isLast = key == DynamicSchemeVariant.values.length - 1;
//               return Padding(
//                 padding: EdgeInsets.only(right: isLast ? 16 : 0, left: 16),
//                 child: Column(
//                   children: [
//                     IconButton.outlined(
//                       onPressed: () {
//                         showDialogInfo(
//                           context,
//                           title: dynamicSchemeVariant.name,
//                           description: dynamicSchemeVariant.description(),
//                           actionText: 'OK',
//                         );
//                         // dynamicSchemeVariant.description()
//                       },
//                       icon: Icon(
//                         Icons.question_mark_rounded,
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         onTap(dynamicSchemeVariant);
//                       },
//                       child: Text(dynamicSchemeVariant.name),
//                       style: ButtonStyle(
//                         foregroundColor: isSelected
//                             ? WidgetStateProperty.all<Color>(
//                                 Theme.of(context).colorScheme.onPrimary,
//                               )
//                             : null,
//                         backgroundColor: isSelected
//                             ? WidgetStateProperty.all<Color>(
//                                 Theme.of(context).colorScheme.primary,
//                               )
//                             : null,
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }

// extension DynamicSchemeVariantDescription on DynamicSchemeVariant {
//   String description() => switch (this) {
//         DynamicSchemeVariant.tonalSpot =>
//           'Default for Material theme colors. Builds pastel palettes with a low chroma.',
//         DynamicSchemeVariant.fidelity =>
//           'The resulting color palettes match seed color, even if the seed color is very bright (high chroma).',
//         DynamicSchemeVariant.monochrome =>
//           'All colors are grayscale, no chroma.',
//         DynamicSchemeVariant.neutral => 'Close to grayscale, a hint of chroma.',
//         DynamicSchemeVariant.vibrant =>
//           "Pastel colors, high chroma palettes. The primary palette's chroma is at maximum. Use fidelity instead if tokens should alter their tone to match the palette vibrancy.",
//         DynamicSchemeVariant.expressive =>
//           "Pastel colors, medium chroma palettes. The primary palette's hue is different from the seed color, for variety.",
//         DynamicSchemeVariant.content =>
//           "Almost identical to fidelity. Tokens and palettes match the seed color. [ColorScheme.primaryContainer] is the seed color, adjusted to ensure contrast with surfaces. The tertiary palette is analogue of the seed color.",
//         DynamicSchemeVariant.rainbow =>
//           "A playful theme - the seed color's hue does not appear in the theme.",
//         DynamicSchemeVariant.fruitSalad =>
//           "A playful theme - the seed color's hue does not appear in the theme.",
//       };
// }
