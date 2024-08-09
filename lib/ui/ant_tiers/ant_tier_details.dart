import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/ui/ads/ad_card.dart';

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
  late AntTierTag selectedTag = widget.tierTag;

  @override
  Widget build(BuildContext context) {
    final profilePictureUrl = widget.ant.profilePath;

    final tags = widget.ant.tierTags;

    final isPvpTag = selectedTag is AntPvpTierTag;

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
          Section(
            child: Text(
              '${isPvpTag ? 'PVP' : 'PVE'} ${selectedTag.antType.displayText(l10n)}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Section(
            child: Text(
              '${selectedTag.rating.displayText} - ${selectedTag.rowPosition.displayText(l10n)} ',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Section(
            child: Text(
              selectedTag.reason,
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
          Section(
            child: Column(
              children: [
                ...tags.map((tag) => _TagDetails(
                      tag: tag,
                      selected: selectedTag == tag,
                      onTagTap: (tag) {
                        setState(() {
                          selectedTag = tag;
                        });
                      },
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TagDetails extends StatelessWidget {
  const _TagDetails({
    required this.tag,
    required this.selected,
    required this.onTagTap,
  });

  final AntTierTag tag;

  final bool selected;

  final Function(AntTierTag tag) onTagTap;

  @override
  Widget build(BuildContext context) {
    final isPvpTag = tag is AntPvpTierTag;
    final l10n = AppLocalizations.of(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                onTagTap(tag);
              },
              child: Container(
                constraints: const BoxConstraints(maxWidth: 300),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  // color: selected ? Theme.of(context) : null,
                  border: selected
                      ? Border.all(
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : null,
                ),
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
                      isPvpTag ? 'PVP' : 'PVE',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      tag.rowPosition.displayText(l10n),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
