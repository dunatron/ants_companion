import 'package:ants_companion/common/theme/light_color_scheme.dart';
import 'package:flutter/material.dart';

class LoadingAppLocale extends StatelessWidget {
  const LoadingAppLocale({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = lightColorScheme;

    final theme = ThemeData(colorScheme: colorScheme);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: theme.colorScheme.primary,
              ),
              const SizedBox(height: 40),
              const Text('Setting your Language'),
            ],
          ),
        ),
      ),
    );
  }
}
