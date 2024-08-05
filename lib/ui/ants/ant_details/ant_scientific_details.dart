import 'package:ants_companion/domain/ants/models/ant_scientific_classification.dart';
import 'package:ants_companion/ui/scientific_classifications/scientific_subfamily_extension.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AntScientificDetails extends StatelessWidget {
  const AntScientificDetails({super.key, required this.details});

  final AntScientificClassification details;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Attribute(
            attribute: l10n.scientificPhylum,
            value: details.phylum.name,
          ),
          _Attribute(
            attribute: l10n.scientificSubphylum,
            value: details.subphylum?.name,
          ),
          _Attribute(
            attribute: l10n.scientificClassification,
            value: details.classification.name,
          ),
          _Attribute(
            attribute: l10n.scientificOrder,
            value: details.order.name,
          ),
          _Attribute(
            attribute: l10n.scientificInfraorder,
            value: details.infraorder?.name,
          ),
          _Attribute(
            attribute: l10n.scientificFamily,
            value: details.family.name,
          ),
          _Attribute(
            attribute: l10n.scientificSubfamily,
            value: details.subfamily?.name,
          ),
          _Attribute(
            attribute: l10n.scientificTribe,
            value: details.tribe?.name,
          ),
          _Attribute(
            attribute: l10n.scientificGenus,
            value: details.genus.name,
          ),
          _Attribute(attribute: l10n.scientificSpecies, value: details.species),
        ],
      ),
    );
  }
}

class _Attribute extends StatelessWidget {
  const _Attribute({
    required this.attribute,
    required this.value,
  });

  final String attribute;
  final String? value;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          '$attribute: ',
          style: textTheme.labelMedium,
        ),
        Text(
          value ?? '',
          style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
    return Column(
      children: [
        Text(attribute),
        Text(value.toString()),
      ],
    );
  }
}
