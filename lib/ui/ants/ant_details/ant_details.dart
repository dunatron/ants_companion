import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/ui/ants/ant_profile_image.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AntDetails extends StatelessWidget {
  AntDetails({super.key, required this.ant});

  final Ant ant;

  @override
  Widget build(BuildContext context) {
    final profilePictureUrl = ant.profilePath;

    final tags = ant.tierTags;
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 24),
      child: Column(
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
            '${ant.role.name} - ${ant.type.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 24),
          Text(
            ant.description,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 24),
          Divider(
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 24),
          Text(
            'Tier Ratings',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 24),
          ...tags.map((tag) => _TagDetails(tag: tag))
        ],
      ),
    );
  }
}

class _TagDetails extends StatelessWidget {
  const _TagDetails({super.key, required this.tag});

  final AntTierTag tag;

  @override
  Widget build(BuildContext context) {
    final isPvpTag = tag is AntPvpTierTag;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${isPvpTag ? 'PVP' : 'PVE'} - '
            '${tag.rating.name} - ${tag.rowPosition.name}',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(tag.reason),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}
