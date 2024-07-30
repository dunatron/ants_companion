import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AntsTierFeatureInfo extends StatelessWidget {
  const AntsTierFeatureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var filteredTiers = [...TierRating.values];
    filteredTiers.removeAt(0);
    filteredTiers.removeAt(0);
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Tier Rankings',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Get insights into the strongest Ants',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...filteredTiers.map(
                  (tierRating) => Container(
                    child: Text(
                      tierRating.displayText,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: tierRating.color),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                context.go('/ant-tiers');
              },
              child: Text('View Ant Tiers'),
            )
          ],
        ),
      ),
    );
  }
}
