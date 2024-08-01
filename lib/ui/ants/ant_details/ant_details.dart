import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/ui/ants/ant_profile_image.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AntDetails extends StatelessWidget {
  AntDetails({super.key, required this.ant});

  final Ant ant;

  @override
  Widget build(BuildContext context) {
    final profilePictureUrl = ant.profilePath;

    final tags = ant.tierTags;

    final AdsService adsService = AdsService();
    adsService.loadBannerAd(AdsService.antDetailsAdUnitId, AdSize.largeBanner);

    final species = ant.species;
    return SelectionArea(
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
          _Section(
            child: Text(
              '${ant.role.name} - ${ant.type.name}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          if (species != null)
            _Section(
              child: Text(
                species.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          _Section(
            child: Text(
              ant.description,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          if (AdsService.enabled)
            _Section(
              child:
                  adsService.getBannerAdWidget(AdsService.antDetailsAdUnitId) ??
                      Container(),
            ),
          _Section(
              child: Divider(
            color: Theme.of(context).colorScheme.primary,
          )),
          _Section(
              child: Text(
            'Tier Ratings',
            style: Theme.of(context).textTheme.titleLarge,
          )),
          _Section(
              child: Column(
            children: [...tags.map((tag) => _TagDetails(tag: tag))],
          ))
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      child: child,
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
