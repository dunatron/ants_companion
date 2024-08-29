part of '../local_ants_list.dart';

const slimArched = Ant(
  id: AntId.slimArched,
  name: 'Slim Arched',
  scientificName: 'Camponotus mirabilis',
  species: ScientificSpecies.camponotusMirabilis,
  type: AntType.universal,
  role: AntRole.melee,
  tierTags: [
    ...slimArchedPveTags,
    ...slimArchedPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.camponotusMirabilis,
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
  ),
];

const slimArchedPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.gss,
    rowPosition: RowPosition.front,
  ),
];
