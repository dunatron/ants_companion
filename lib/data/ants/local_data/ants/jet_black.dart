part of '../local_ants_list.dart';

const jetBlack = Ant(
  id: 'jet_black',
  name: 'Jet Black',
  scientificName: 'Plectroctena cristata',
  species: ScientificSpecies.plectroctenaCristata,
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...jetBlackPveTags,
    ...jetBlackPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.plectroctenaCristata,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.ponerinae,
    tribe: ScientificTribe.ponerini,
    genus: ScientificGenus.plectroctena,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Plectroctena_cristata',
    ),
  ],
);

const jetBlackPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];

const jetBlackPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];
