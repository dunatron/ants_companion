import 'package:ants_companion/domain/themes/models/color_seed.dart';
import 'package:ants_companion/ui/theme/scheme_variant_picker.dart';
import 'package:flutter/material.dart';

class ThemeExamples extends StatelessWidget {
  const ThemeExamples({super.key, required this.seed});

  final ColorSeed seed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    seed.dynamicSchemeVariant.displayTitle(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(seed.dynamicSchemeVariant.description()),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Button',
                        ),
                      ),
                      Checkbox(value: true, onChanged: (v) {})
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
