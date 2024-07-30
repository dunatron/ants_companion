import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/ui/ants/ant_profile_image.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AntDetails extends StatelessWidget {
  AntDetails({super.key, required this.ant});

  final Ant ant;

  @override
  Widget build(BuildContext context) {
    final profilePictureUrl = ant.profilePath;
    return Column(
      children: [
        Text(
          ant.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        if (profilePictureUrl != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: AntProfileImage(imagePath: ant.profilePath, radius: 120),
          ),
        Text(
          ant.type.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 24),
        Text(ant.description),
        // const AdCard(),
        // StreamBuilder(
        //   stream: _tierTags.tierTagsForAnt(ant.id),
        //   builder: (context, snapshot) {
        //     return AntPositionOptions(tags: snapshot.data ?? []);
        //   },
        // ),
      ],
    );
  }
}
