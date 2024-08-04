part of '../local_ants_list.dart';

const darkHercules = Ant(
    id: 'dark_hercules',
    name: 'Dark Hercules',
    description: '',
    scientificName: 'Myrmarachne Gisti',
    type: AntType.guardian,
    role: AntRole.ranged,
    tierTags: [
      ...darkHerculesPveTags,
      ...darkHerculesPvpTags,
    ],
    scientificClassification: AntScientificClassification(
      species: 'Myrmarachne Gisti',
      phylum: ScientificPhylum.arthropoda,
      subphylum: ScientificSubphylum.chelicerata, // missing
      classification: ScientificClassification.arachnida,
      order: ScientificOrder.araneae,
      infraorder: ScientificInfraorder.araneomorphae,
      family: ScientificFamily.salticidae,
      subfamily: ScientificSubfamily.salticinae,
      tribe: null,
      genus: ScientificGenus.myrmarachne,
    ),
    externalLinks: [
      AntExternalLink(
        type: AntExternalLinkType.wikipedia,
        subUrl: 'Myrmarachne#Species',
      ),
    ]);

const darkHerculesPveTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: terribleForPveF,
  ),
];

const darkHerculesPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'This ant is fairly average in general',
  ),
];
