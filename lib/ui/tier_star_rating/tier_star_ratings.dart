import 'package:flutter/material.dart';

class TierStarRating extends StatelessWidget {
  const TierStarRating({super.key, required this.starCount});

  final int starCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          6,
          (index) => Icon(
            color: starCount > index
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primary.withOpacity(0.6),
            // color: starCount > index
            //     ? Colors.orange
            //     : Colors.orange.withOpacity(0.6),
            starCount > index ? Icons.star : Icons.star_border_outlined,
          ),
        )
      ],
    );
  }
}
