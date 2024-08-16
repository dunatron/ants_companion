part of '../local_ants_list.dart';

const weaverAnt = Ant(
  id: 'weaver_ant',
  name: 'Weaver Ant',
  scientificName: 'Oecophylla longinoda',
  species: ScientificSpecies.oecophyllaLonginoda,
  type: AntType.shooter,
  role: AntRole.support,
  tierTags: [
    ...weaverAntPveTags,
    ...weaverAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.oecophyllaLonginoda,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.formicinae,
    tribe: ScientificTribe.oecophyllini,
    genus: ScientificGenus.oecophylla,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Oecophylla_longinoda',
    ),
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Oecophylla_longinoda',
    ),
  ],
);

const weaverAntPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: terribleForPveF,
  ),
];

const weaverAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.gss,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
];
