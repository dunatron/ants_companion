import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/ui/ads/ad_card.dart';

import 'package:ants_companion/ui/ants/ant_details/ant_scientific_details.dart';
import 'package:ants_companion/ui/ants/ant_profile_image.dart';
import 'package:ants_companion/ui/section.dart';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AntDetails extends StatelessWidget {
  const AntDetails({super.key, required this.ant});

  final Ant ant;

  @override
  Widget build(BuildContext context) {
    final profilePictureUrl = ant.profilePath;

    final tags = ant.tierTags;

    final species = ant.species;

    final scientificClassification = ant.scientificClassification;
    return SelectionArea(
      child: Column(
        children: [
          Text(
            ant.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          if (profilePictureUrl.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: AntProfileImage(imagePath: ant.profilePath, radius: 120),
            ),
          Section(
            child: Text(
              '${ant.role.name} - ${ant.type.name}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          if (species != null)
            Section(
              child: Text(
                species.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          Section(
            child: Text(
              ant.description,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
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
          // Section(
          //     child: Text(
          //   'Tier Ratings',
          //   style: Theme.of(context).textTheme.titleLarge,
          // )),
          Section(
            child: Column(
              children: [...tags.map((tag) => _TagDetails(tag: tag))],
            ),
          ),
          Section(
            child: Divider(color: Theme.of(context).colorScheme.primary),
          ),
          if (scientificClassification != null)
            Section(
              child: Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 200),
                  child: AntScientificDetails(
                    details: scientificClassification,
                  ),
                ),
              ),
            )
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
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    tag.rating.displayText,
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: tag.rating.color,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${isPvpTag ? 'PVP' : 'PVE'}',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${tag.rowPosition.name}',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          ),
          // Text(tag.reason),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}
