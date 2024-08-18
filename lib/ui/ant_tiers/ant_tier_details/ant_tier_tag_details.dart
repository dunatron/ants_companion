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

    final mainText = isPvpTag
        ? '${tag.rowPosition.displayText(l10n)} ${tag.antType.displayText(l10n)}'
        : tag.antType.displayText(l10n);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                onTagTap(tag);
              },
              child: Container(
                constraints: const BoxConstraints(maxWidth: 300),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: selected
                      ? Border.all(
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : Border.all(
                          color: Colors.transparent,
                        ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 56,
                      child: Text(
                        textAlign: TextAlign.right,
                        tag.rating.displayText,
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: tag.rating.color,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(mainText),
                        Text(
                          isPvpTag ? l10n.pvpFull : l10n.pveFull,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
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
