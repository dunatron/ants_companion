part of '../local_ants_list.dart';

const slimArched = Ant(
  id: 'slim_arched',
  name: 'Slim Arched',
  description: '',
  scientificName: 'Camponotus mirabilis',
  type: AntType.universal,
  role: AntRole.melee,
  tierTags: [
    ...slimArchedPveTags,
    ...slimArchedPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Camponotus mirabilis',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.formicinae,
    tribe: ScientificTribe.camponotini,
    genus: ScientificGenus.camponotus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Camponotus_mirabilis',
    ),
  ],
);

const slimArchedPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: 'Deals an ok amount of damage',
  ),
];

const slimArchedPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.gss,
    rowPosition: RowPosition.front,
    reason: '',
  ),
];
