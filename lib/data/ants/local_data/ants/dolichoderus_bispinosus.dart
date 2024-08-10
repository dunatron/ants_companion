part of '../local_ants_list.dart';

const dolichoderusBispinosus = Ant(
  id: 'dolichoderus_bispinosus',
  name: 'Dolichoderus bispinosus',
  description: '',
  scientificName: 'Dolichoderus bispinosus',
  type: AntType.shooter,
  role: AntRole.melee,
  tierTags: [
    ...dolichoderusBispinosusPveTags,
    ...dolichoderusBispinosusPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Dolichoderus bispinosus',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.dolichoderinae,
    tribe: ScientificTribe.dolichoderini,
    genus: ScientificGenus.dolichoderus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Dolichoderus_bispinosus',
    ),
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Dolichoderus_bispinosus',
    ),
  ],
);

const dolichoderusBispinosusPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const dolichoderusBispinosusPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: '',
  ),
];
