part of '../local_ants_list.dart';

const graveDigger = Ant(
  id: 'grave_digger',
  name: 'Grave Digger',
  scientificName: 'Prionopelta humicola',
  species: ScientificSpecies.prionopeltaHumicola,
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...graveDiggerPveTags,
    ...graveDiggerPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.prionopeltaHumicola,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.amblyoponinae,
    tribe: ScientificTribe.amblyoponini,
    genus: ScientificGenus.prionopelta,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Prionopelta_humicola',
    ),
  ],
);

const graveDiggerPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
  ),
];

const graveDiggerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  )
];
