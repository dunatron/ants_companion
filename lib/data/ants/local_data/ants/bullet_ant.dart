part of '../local_ants_list.dart';

const bulletAnt = Ant(
  id: 'bullet_ant',
  name: 'Bullet Ant',
  scientificName: 'Paraponera clavata',
  species: ScientificSpecies.paraponeraClavata,
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...bulletAntPveTags,
    ...bulletAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.paraponeraClavata,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null,
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.paraponerinae,
    tribe: null,
    genus: ScientificGenus.paraponera,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Paraponera_clavata',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Paraponera_clavata',
    ),
  ],
);

const bulletAntPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const bulletAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
];
