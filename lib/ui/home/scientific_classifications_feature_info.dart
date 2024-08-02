import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScientificClassificationsFeatureInfo extends StatelessWidget {
  const ScientificClassificationsFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Scientific Classifications',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            const Text(
              'Scientific information concerning the special ants in '
              'The Ants Underground Kingdom',
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
