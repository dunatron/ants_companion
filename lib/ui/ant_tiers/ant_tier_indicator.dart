import 'package:flutter/material.dart';
import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/ui/ants/ant_profile_image.dart';

class AntTierIndicator extends StatelessWidget {
  const AntTierIndicator({
    super.key,
    required this.ant,
    required this.tierRating,
    required this.availableWidth,
    this.onTap,
  });

  final Ant ant;
  final TierRating tierRating;
  final double availableWidth;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final double diameter = availableWidth * 0.8;

    return Container(
      width: diameter,
      height: diameter,
      // padding: const EdgeInsets.all(1),
      margin: const EdgeInsets.only(bottom: 16),
      constraints: const BoxConstraints(maxHeight: 120, maxWidth: 120),
      decoration: BoxDecoration(
        // color: tierRating.color,
        border: Border.all(
          // color: Theme.of(context).colorScheme.primary,
          color: Colors.transparent,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(diameter / 2),
      ),
      child: Center(
        child: AntProfileImage(
          onTap: onTap,
          imagePath: ant.profilePath,
          radius: diameter / 2,
        ),
      ),
    );
  }
}
