part of '../local_ants_list.dart';

const bansheeVelvet = Ant(
  id: 'banshee_velvet',
  name: 'Banshee Velvet',
  scientificName: 'Dasymutilla occidentalis',
  species: ScientificSpecies.dasymutillaOccidentalis,
  type: AntType.shooter,
  role: AntRole.melee,
  tierTags: [
    ...bansheeVelvetPveTags,
    ...bansheeVelvetPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.dasymutillaOccidentalis,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null,
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
      subUrl: 'Dasymutilla_occidentalis',
    ),
  ],
);

const bansheeVelvetPveTags = [
  AntPveTierTag(
    rating: TierRating.c,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
  ),
];

const bansheeVelvetPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
  ),
];
