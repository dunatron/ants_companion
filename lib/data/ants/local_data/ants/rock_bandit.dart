part of '../local_ants_list.dart';

const rockBandit = Ant(
  id: 'rock_bandit',
  name: 'Rock Bandit',
  description: '',
  scientificName: 'Cyphomyrmex flavidus',
  type: AntType.guardian,
  role: AntRole.support,
  tierTags: [
    ...rockBanditPveTags,
    ...rockBanditPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Cyphomyrmex flavidus',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.attini,
    genus: ScientificGenus.cyphomyrmex,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Cyphomyrmex_flavidus',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Cyphomyrmex_flavidus',
    ),
  ],
);

const rockBanditPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const rockBanditPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
];
