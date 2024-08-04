part of '../local_ants_list.dart';

const predator = Ant(
  id: 'predator',
  name: 'Predator',
  description: '',
  scientificName: 'Psalidomyrmex reicenspergeri',
  type: AntType.shooter,
  role: AntRole.melee,
  tierTags: [
    ...predatorPveTags,
    ...predatorPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Psalidomyrmex reicenspergeri',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.ponerinae,
    tribe: ScientificTribe.ponerini,
    genus: ScientificGenus.psalidomyrmex,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Psalidomyrmex_reichenspergeri',
    ),
  ],
);

const predatorPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const predatorPvpTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'Just a super bad ant especially for shooters.. of which it is...',
  ),
];
