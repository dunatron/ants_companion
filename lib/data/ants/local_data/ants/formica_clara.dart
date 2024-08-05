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
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'One of the better shooter ants for PVP in the front row. '
        'It is however better suited to the middle',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'One of the best shooter ants for the mid row',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'One of the better shooter ants for PVP.'
        'It is however better suited to the middle',
  ),
];
