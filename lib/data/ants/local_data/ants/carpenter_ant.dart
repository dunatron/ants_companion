part of '../local_ants_list.dart';

const carpenterAnt = Ant(
  id: 'carpenter_ant',
  name: 'Carpenter Ant',
  description: '',
  scientificName: 'Camponotus coloratus',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...carpenterAntPveTags,
    ...carpenterAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Camponotus coloratus',
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
      subUrl: 'Camponotus_coloratus',
    ),
  ],
);

const carpenterAntPveTags = [];

const carpenterAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
];
