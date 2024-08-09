import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/ui/ants/ant_profile_image.dart';

import 'package:flutter/material.dart';

class AntCard extends StatelessWidget {
  const AntCard({
    super.key,
    required this.ant,
    this.onImageTap,
    this.actions,
  });

  final Ant ant;

  final Widget? actions;

  final Function()? onImageTap;

  /// ToDo: extract to on the card
  void _showTierTagsModal(
    BuildContext context,
    Ant ant,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const Dialog(child: Card(child: Text('ToDo')));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _actions = actions;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    ant.name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                if (_actions != null) _actions,
              ],
            ),

            const SizedBox(height: 8),
            _buildProfileRow(context, ant),
            const SizedBox(height: 8),
            // Expanded(child: Container()),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                InkWell(
                  onTap: () => _showTierTagsModal(context, ant),
                  child: _tierRatingsRow(context, ant),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row _buildProfileRow(BuildContext context, Ant ant) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onImageTap,
          child: AntProfileImage(imagePath: ant.profilePath),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              ant.role.name,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Text(
              ant.type.name,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        )
      ],
    );
  }

  Row _tierRatingsRow(BuildContext context, Ant ant) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'PVE',
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.end,
            ),
            Text(
              // ant.topPveRating().displayText,
              'F',
              // style: Theme.of(context)
              //     .textTheme
              //     .headlineSmall
              //     ?.copyWith(color: ant.topPveRating().color),
              textAlign: TextAlign.center,
            )
          ],
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
