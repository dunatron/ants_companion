part of '../local_ants_list.dart';

const whiteVelvet = Ant(
  id: 'white_velvet',
  name: 'White Velvet',
  description: '',
  scientificName: 'Dasymutilla gloriosa',
  type: AntType.universal,
  role: AntRole.support,
  tierTags: [
    ...whiteVelvetPveTags,
    ...whiteVelvetPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.dasymutillaGloriosa,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.mutillidae,
    subfamily: null,
    tribe: null,
    genus: ScientificGenus.dasymutilla,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Dasymutilla_gloriosa',
    ),
  ],
);

const whiteVelvetPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
];

const whiteVelvetPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPvpF,
  ),
];
