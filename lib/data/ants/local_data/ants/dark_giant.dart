part of '../local_ants_list.dart';

const darkGiant = Ant(
  id: AntId.darkGiant,
  name: 'Dark Giant',
  species: ScientificSpecies.ecitonRapax,
  scientificName: 'Eciton rapax',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...darkGiantPveTags,
    ...darkGiantPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.ecitonRapax,
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
      subUrl: 'Eciton_rapax',
    ),
  ],
);

const darkGiantPveTags = [
  AntPveTierTag(
    rating: TierRating.c,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
  ),
];

const darkGiantPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];
