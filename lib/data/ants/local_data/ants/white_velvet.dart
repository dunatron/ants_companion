part of '../local_ants_list.dart';

const whiteVelvet = Ant(
  id: AntId.whiteVelvet,
  name: 'White Velvet',
  scientificName: 'Dasymutilla gloriosa',
  species: ScientificSpecies.dasymutillaGloriosa,
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
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
  ),
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
  ),
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
  ),
];

const whiteVelvetPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
  ),
];
