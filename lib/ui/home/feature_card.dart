import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.l),
          child: child,
        ),
      ),
    );
  }
}
