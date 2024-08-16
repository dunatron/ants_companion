import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AntTierTagDetails extends StatelessWidget {
  const AntTierTagDetails({
    super.key,
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
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
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
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: tag.rating.color,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      isPvpTag ? l10n.pvpAbbreviation : l10n.pveAbbreviation,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      tag.rowPosition.displayText(l10n),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      tag.antType.displayText(l10n),
                      style: Theme.of(context).textTheme.bodyMedium,
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
