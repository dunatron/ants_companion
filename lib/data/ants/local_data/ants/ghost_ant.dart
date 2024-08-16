part of '../local_ants_list.dart';

const ghostAnt = Ant(
  id: 'ghost_ant',
  name: 'Ghost Ant',
  scientificName: 'Tapinoma melanocephalum',
  species: ScientificSpecies.tapinomaMelanocephalum,
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...ghostAntPveTags,
    ...ghostAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.tapinomaMelanocephalum,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.dolichoderinae,
    tribe: null,
    genus: ScientificGenus.tapinoma,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Tapinoma_melanocephalum',
    ),
  ],
);

const ghostAntPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
];

const ghostAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
];
