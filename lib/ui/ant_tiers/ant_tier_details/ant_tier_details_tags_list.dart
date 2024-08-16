import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_tag_details.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/view_model/ant_tier_details_view_model.dart';
import 'package:ants_companion/ui/section.dart';
import 'package:flutter/material.dart';

class AntTierDetailsTagsList extends StatelessWidget {
  const AntTierDetailsTagsList({
    super.key,
    required this.viewModel,
    required this.tierTags,
  });

  final AntTierDetailsViewModel viewModel;

  final List<AntTierTag> tierTags;

  @override
  Widget build(BuildContext context) {
    return Section(
      child: StreamBuilder(
        stream: viewModel.data(),
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data == null) {
            return const SizedBox();
          }
          return Column(
            children: [
              ...tierTags.map((tag) => AntTierTagDetails(
                    tag: tag,
                    selected: data.tierTag == tag,
                    onTagTap: (tag) {
                      viewModel.changeSelectedTierTag(tag);
                    },
                  ))
            ],
          );
        },
      ),
    );
  }
}
