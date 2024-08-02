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
    return Column(
      children: [
        Section(
          child: Text(title, style: Theme.of(context).textTheme.headlineMedium),
        ),
        Section(
          child: Text(description),
        ),
        Wrap(
          children: [
            ...ants.map(
              (it) => Container(
                child: Column(
                  children: [
                    AntProfileImage(imagePath: it.profilePath),
                    Text(it.role.name),
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
