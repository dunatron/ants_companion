import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/ui/ants/ant_card/ant_card_tier_ratings.dart';
import 'package:ants_companion/ui/scientific_classifications/scientific_species_extension.dart';

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AntCard extends StatelessWidget {
  const AntCard({
    super.key,
    required this.ant,
    this.actions,
  });

  final Ant ant;

  final Widget? actions;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: double.infinity,
                height: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ant.profilePath),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color:
                            Theme.of(context).colorScheme.surfaceContainerLow,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        ant.species.commonName(l10n),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    AntCardTierRatings(
                      ant: ant,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
