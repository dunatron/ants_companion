import 'package:ants_companion/domain/ants/ants.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_family.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_genus.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_subfamily.dart';
import 'package:ants_companion/domain/scientific_classifications/scientific_classifications.dart';
import 'package:ants_companion/ui/bottom_sheet_modal/bottom_sheet_modal.dart';
import 'package:ants_companion/ui/layouts/page_layout.dart';
import 'package:ants_companion/ui/scientific_classifications/scientific_family_extension.dart';
import 'package:ants_companion/ui/scientific_classifications/sliver_attribute_area.dart';

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
    final scientificClassifications =
        ScientificClassifications(ants: Ants.antsList());

    final descriptions = AttributeDescriptions();
    final l10n = AppLocalizations.of(context)!;
    return PageLayout(
      title: 'Classifications',
      slivers: [
        SliverAttributeArea(
          title: 'Family',
          description: descriptions.family,
          items: ScientificFamily.values,
          onPressed: (v) => _launchScientificAttributeDetails(
            scientificClassifications.antsForFamily(v),
            context,
            title: v.name,
            description: v.description(l10n),
          ),
          nameItemBuilder: (item, index) => item.name,
        ),
        SliverAttributeArea(
          title: 'Sub Family',
          description: descriptions.subfamily,
          items: ScientificSubfamily.values,
          onPressed: (v) => _launchScientificAttributeDetails(
            scientificClassifications.antsForSubfamily(v),
            context,
            title: v.name,
            description: 'Genus description',
          ),
          nameItemBuilder: (item, index) => item.name,
        ),
        SliverAttributeArea(
          title: 'Genus',
          description: descriptions.genus,
          items: ScientificGenus.values,
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
  String get species =>
      "The species name of the organism. This is the specific name used to "
      "identify individual organisms within a genus. For example, "
      "Formica rufa is the species name for the red wood ant.";

  String get domain =>
      'The highest taxonomic rank used to classify living organisms. '
      'All organisms are classified into one of the three domains: '
      'Bacteria, Archaea, or Eukaryota. For most of our organisms, this '
      'will be Eukaryota, which includes all complex life forms.';

  String get kingdom =>
      'The taxonomic rank below the domain and above the phylum. Organisms are grouped into one of several kingdoms based on fundamental differences in their biology. In our classifications, this is typically Animalia for animals, which includes ants, wasps, and spiders.';
  String get phylum =>
      'A major taxonomic rank below the kingdom and above the class. Organisms within a phylum share a basic structural framework. For example, arthropods, which include ants and spiders, belong to the phylum Arthropoda.';
  String get subphylum =>
      'A taxonomic rank below the phylum and above the class. Subphyla represent more specific groupings within a phylum. For instance, the subphylum Chelicerata includes spiders and wasps, distinguishing them from other arthropods.';
  String get classification =>
      'A broad taxonomic rank that includes multiple orders within a phylum. This field encompasses the general classification of the organism, such as Insecta for insects.';
  String get order =>
      'A taxonomic rank below the class and above the family. Orders group organisms that are more closely related to each other. For example, the order Hymenoptera includes ants and wasps.';
  String get infraorder =>
      'A taxonomic rank below the order and above the family. Infraorders represent subgroups within an order that share more specific characteristics. For instance, the infraorder Myrmecina includes ants.';
  String get family =>
      'A taxonomic rank below the order and above the subfamily. Families group organisms that are even more closely related. For example, the family Formicidae consists of all ants.';
  String get subfamily =>
      'A taxonomic rank below the family and above the tribe. Subfamilies represent more specialized groupings within a family. For example, the subfamily Myrmicinae includes various types of ants.';
  String get tribe =>
      'A taxonomic rank below the subfamily and above the genus. Tribes group closely related organisms within a subfamily. For example, the tribe Formicini includes ants within the genus Formica.';
  String get genus =>
      'A taxonomic rank below the family and above the species. Genera group species that are closely related and share a common ancestor. For example, the genus Camponotum includes various species of carpenter ants.';
}
