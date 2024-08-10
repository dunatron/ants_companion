part of '../local_ants_list.dart';

const guardGeneral = Ant(
  id: 'guard_general',
  name: 'Guard General',
  description: '',
  scientificName: 'Harpegnathos venator',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...guardGeneralPveTags,
    ...guardGeneralPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Harpegnathos venator',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.ponerinae,
    tribe: ScientificTribe.ponerini,
    genus: ScientificGenus.harpegnathos,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Harpegnathos_venator',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Harpegnathos_venator',
    ),
  ],
);

const guardGeneralPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const guardGeneralPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: '',
  ),
];
