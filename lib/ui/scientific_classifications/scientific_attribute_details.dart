import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/ui/ants/ant_profile_image.dart';
import 'package:ants_companion/ui/section.dart';
import 'package:flutter/material.dart';

class ScientificAttributeDetails extends StatelessWidget {
  const ScientificAttributeDetails({
    super.key,
    required this.title,
    required this.description,
    required this.ants,
  });

  final String title;
  final String description;

  final List<Ant> ants;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Section(
          child: Text(title, style: textTheme.headlineMedium),
        ),
        Section(
          child: Text(description),
        ),
        Wrap(
          children: [
            ...ants.map(
              (it) => Container(
                padding: const EdgeInsets.all(Spacing.n),
                child: Column(
                  children: [
                    AntProfileImage(imagePath: it.profilePath),
                    const SizedBox(
                      height: Spacing.n,
                    ),
                    Text(
                      it.name,
                      style: textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
