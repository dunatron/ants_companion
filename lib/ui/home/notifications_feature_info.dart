import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationsFeatureInfo extends StatelessWidget {
  const NotificationsFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Colony Action Scheduler',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            const Text(
              'Never miss the most important colony actions by scheduling local notifications',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                context.go('/ca-scheduler');
              },
              child: const Text('Schedule Notifications'),
            )
          ],
        ),
      ),
    );
  }
}
