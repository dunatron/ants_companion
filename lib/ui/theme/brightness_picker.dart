import 'package:flutter/material.dart';

class BrightnessPicker extends StatelessWidget {
  const BrightnessPicker({
    super.key,
    required this.brightness,
    required this.onTap,
  });

  final Brightness brightness;

  final Function(Brightness color) onTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...Brightness.values.map(
            (it) => Padding(
              padding: EdgeInsets.all(4),
              child: ElevatedButton.icon(
                label: Text(it.name),
                icon: it == Brightness.dark
                    ? const Icon(Icons.dark_mode_outlined)
                    : const Icon(Icons.light_mode_outlined),
                onPressed: () => onTap(it),
                style: ButtonStyle(
                  foregroundColor: it == brightness
                      ? WidgetStateProperty.all<Color>(
                          Theme.of(context).colorScheme.onPrimary,
                        )
                      : null,
                  backgroundColor: it == brightness
                      ? WidgetStateProperty.all<Color>(
                          Theme.of(context).colorScheme.primary,
                        )
                      : null,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
