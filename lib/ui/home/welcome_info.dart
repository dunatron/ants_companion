import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeInfo extends StatelessWidget {
  const WelcomeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Greetings',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Welcome to the ants companion. This app aims to be your one stop place for the ants underground kingdom',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
