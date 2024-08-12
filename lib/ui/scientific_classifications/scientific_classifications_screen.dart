import 'package:ants_companion/domain/ants/ants.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_family.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_genus.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_subfamily.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_tribe.dart';
import 'package:ants_companion/domain/scientific_classifications/scientific_classifications.dart';
import 'package:ants_companion/ui/bottom_sheet_modal/bottom_sheet_modal.dart';
import 'package:ants_companion/ui/layouts/page_layout.dart';
import 'package:ants_companion/ui/scientific_classifications/scientific_family_extension.dart';
import 'package:ants_companion/ui/scientific_classifications/scientific_subfamily_extension.dart';
import 'package:ants_companion/ui/scientific_classifications/attribute_area.dart';

import 'package:ants_companion/ui/scientific_classifications/scientific_attribute_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScientificClassificationsScreen extends StatelessWidget {
  const ScientificClassificationsScreen({super.key});

  void _launchScientificAttributeDetails(
    final List<Ant> ants,
    BuildContext context, {
    required String title,
    required String description,
  }) =>
      buildBottomSheetModal(
          context,
          ScientificAttributeDetails(
            title: title,
            description: description,
            ants: ants,
          ));

  @override
  Widget build(BuildContext context) {
    final antsList = Ants.antsList();
    final totalAnts = antsList.length;

    final scientificClassifications = ScientificClassifications(ants: antsList);

    final descriptions = AttributeDescriptions();
    final l10n = AppLocalizations.of(context);

    // ScientificSubfamilyTranslationExtensions
    return PageLayout(
      title: l10n.scientificClassificationsTitle,
      crossAxisAlignment: CrossAxisAlignment.start,
      constraints: const BoxConstraints(maxWidth: 800),
      widgets: [
        AttributeArea(
          title: l10n.scientificFamily,
          description: descriptions.family(l10n),
          antsWithAttribute: scientificClassifications.countAntsWithFamily(),
          totalAnts: totalAnts,
          items: ScientificFamily.values,
          onPressed: (v) => _launchScientificAttributeDetails(
            scientificClassifications.antsForFamily(v),
            context,
            title: v.name,
            description: v.description(l10n),
          ),
          nameItemBuilder: (item, index) => item.name,
        ),
        AttributeArea(
          title: l10n.scientificSubfamily,
          description: descriptions.subfamily(l10n),
          antsWithAttribute: scientificClassifications.countAntsWithSubfamily(),
          totalAnts: totalAnts,
          items: ScientificSubfamily.values,
          onPressed: (v) => _launchScientificAttributeDetails(
            scientificClassifications.antsForSubfamily(v),
            context,
            title: v.name,
            description: v.description(l10n),
          ),
          nameItemBuilder: (item, index) => item.name,
        ),
        AttributeArea(
          title: l10n.scientificTribe,
          description: descriptions.tribe(l10n),
          items: ScientificTribe.values,
          antsWithAttribute: scientificClassifications.countAntsWithTribe(),
          totalAnts: totalAnts,
          onPressed: (v) => _launchScientificAttributeDetails(
            scientificClassifications.antsForTribe(v),
            context,
            title: v.name,
            description: 'Tribe description',
          ),
          nameItemBuilder: (item, index) => item.name,
        ),
        AttributeArea(
          title: l10n.scientificGenus,
          description: descriptions.genus(l10n),
          items: ScientificGenus.values,
          antsWithAttribute: scientificClassifications.countAntsWithGenus(),
          totalAnts: totalAnts,
          onPressed: (v) => _launchScientificAttributeDetails(
            scientificClassifications.antsForGenus(v),
            context,
            title: v.name,
            description: 'Genus description',
          ),
          nameItemBuilder: (item, index) => item.name,
        ),
      ],
    );
  }
}

class AttributeDescriptions {
  String speciesDescription(AppLocalizations l10n) =>
      l10n.scientificSpeciesDescription;

  String domain(AppLocalizations l10n) => l10n.scientificDomainDescription;

  String kingdom(AppLocalizations l10n) => l10n.scientificKingdomDescription;
  String phylum(AppLocalizations l10n) => l10n.scientificPhylumDescription;
  String subphylum(AppLocalizations l10n) =>
      l10n.scientificSubphylumDescription;
  String classification(AppLocalizations l10n) =>
      l10n.scientificClassificationDescription;
  String order(AppLocalizations l10n) => l10n.scientificOrderDescription;
  String infraorder(AppLocalizations l10n) =>
      l10n.scientificInfraorderDescription;
  String family(AppLocalizations l10n) => l10n.scientificFamilyDescription;
  String subfamily(AppLocalizations l10n) =>
      l10n.scientificSubfamilyDescription;
  String tribe(AppLocalizations l10n) => l10n.scientificTribeDescription;
  String genus(AppLocalizations l10n) => l10n.scientificGenusDescription;
}
