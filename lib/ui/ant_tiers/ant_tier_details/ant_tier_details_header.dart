import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';

class AntTierDetailsHeader extends StatelessWidget {
  const AntTierDetailsHeader({
    super.key,
    required this.title,
    required this.assetPath,
  });

  final String title;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 0),
        child: AspectRatio(
          aspectRatio: 1.4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(assetPath),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(Spacing.n),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: Spacing.l, vertical: Spacing.n),
                  margin: const EdgeInsets.all(Spacing.n),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
