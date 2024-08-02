import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SoldierAntsComparisonFeatureInfo extends StatelessWidget {
  const SoldierAntsComparisonFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Soldier Ants Comparison',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            const Text(
              'Interested in the base stats for soldier ants? \n'
              'This feature is for you.\n'
              'A side by side comparison of the base soldier stats',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                context.go('/scientific-classifications');
              },
              child: const Text('View Classifications'),
            )
          ],
        ),
      ),
    );
  }
}
