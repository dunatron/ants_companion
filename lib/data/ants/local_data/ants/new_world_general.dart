part of '../local_ants_list.dart';

const newWorldGeneral = Ant(
  id: AntId.newWorldGeneral,
  name: 'New World General',
  scientificName: 'Echiton burchellii',
  species: ScientificSpecies.echitonBurchellii,
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...newWorldGeneralPveTags,
    ...newWorldGeneralPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.echitonBurchellii,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.dorylinae,
    tribe: null,
    genus: ScientificGenus.eciton,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Eciton_burchellii',
    ),
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Eciton_burchellii',
    ),
  ],
);

const newWorldGeneralPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];

const newWorldGeneralPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
  ),
];
