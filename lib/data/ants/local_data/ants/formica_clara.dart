part of '../local_ants_list.dart';

const formicaClara = Ant(
  id: 'formica_clara',
  name: 'Formica Clara',
  description: '',
  scientificName: 'Formica Clara',
  type: AntType.shooter,
  role: AntRole.support,
  tierTags: [
    ...formicaClaraPveTags,
    ...formicaClaraPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: '',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.formicinae,
    tribe: null,
    genus: ScientificGenus.formica,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Formica_clara',
    ),
  ],
);

const formicaClaraPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: notTheWorstB,
  ),
];
const formicaClaraPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.gss,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
];
