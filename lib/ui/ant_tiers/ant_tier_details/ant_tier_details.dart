import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/ui/ads/ad_card.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_details_reason.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_details_tags_list.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/ant_tier_tag_details.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tier_details/view_model/ant_tier_details_view_model.dart';

import 'package:ants_companion/ui/ants/ant_profile_image.dart';
import 'package:ants_companion/ui/section.dart';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AntTierDetails extends StatefulWidget {
  const AntTierDetails({super.key, required this.ant, required this.tierTag});

  final Ant ant;

  final AntTierTag tierTag;

  @override
  State<AntTierDetails> createState() => _AntTierDetailsState();
}

class _AntTierDetailsState extends State<AntTierDetails> {
  late final AntTierDetailsViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = AntTierDetailsViewModel(
      ant: widget.ant,
      tierTag: widget.tierTag,
    );
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profilePictureUrl = widget.ant.profilePath;

    final tags = widget.ant.tierTags;

    final l10n = AppLocalizations.of(context);

    return SelectionArea(
      child: Column(
        children: [
          Text(
            widget.ant.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          if (profilePictureUrl.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: AntProfileImage(
                  imagePath: widget.ant.profilePath, radius: 120),
            ),
          StreamBuilder(
            stream: viewModel.data(),
            builder: (context, snapshot) {
              final data = snapshot.data;
              if (data == null) {
                return const SizedBox();
              }
              return Section(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data.tierTag.rating.displayText,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      data.tierTag.rowPosition.displayText(l10n),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      data.tierTag.antType.displayText(l10n),
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                  ],
                ),
              );
            },
          ),
          AntTierDetailsReason(viewModel: viewModel),
          if (AdsService.enabled)
            Section(
              child: AdCard(
                adId: AdsService.antDetailsAdUnitId,
                selfLoad: AdCardSelfLoad(size: AdSize.banner),
              ),
            ),
          Section(
            child: Divider(color: Theme.of(context).colorScheme.primary),
          ),
          AntTierDetailsTagsList(viewModel: viewModel, tierTags: tags),
          Section(child: Text('widget.ant.scientificClassification.genus')),
        ],
      ),
    );
  }
}
