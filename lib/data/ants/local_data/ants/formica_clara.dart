part of '../local_ants_list.dart';

const formicaClara = Ant(
  id: 'formica_clara',
  name: 'Formica Clara',
  scientificName: 'Formica Clara',
  species: ScientificSpecies.formicaClara,
  type: AntType.shooter,
  role: AntRole.support,
  tierTags: [
    ...formicaClaraPveTags,
    ...formicaClaraPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.formicaClara,
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
  ),
];
const formicaClaraPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.gss,
    rowPosition: RowPosition.middle,
  ),
];
