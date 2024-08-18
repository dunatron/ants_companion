import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key, required this.child, required this.onTap});

  final Widget child;

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Card(
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(Spacing.l),
            child: child,
          ),
        ),
      ),
    );
  }
}
