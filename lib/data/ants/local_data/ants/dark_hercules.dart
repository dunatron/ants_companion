part of '../local_ants_list.dart';

const darkHercules = Ant(
  id: 'dark_hercules',
  name: 'Dark Hercules',
  species: ScientificSpecies.myrmarachneGisti,
  scientificName: 'Myrmarachne Gisti',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...darkHerculesPveTags,
    ...darkHerculesPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.myrmarachneGisti,
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
  ],
);

const darkHerculesPveTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: terribleForPveF,
  ),
];

const darkHerculesPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
