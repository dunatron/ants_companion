part of '../local_ants_list.dart';

const enigmaticTaylor = Ant(
  id: 'enigmatic_taylor',
  name: 'Enigmatic Taylor',
  description: '',
  scientificName: 'Tetramorium pulcherrimum',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...enigmaticTaylorPveTags,
    ...enigmaticTaylorPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: '',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: null,
    genus: ScientificGenus.tetramorium,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Tetramorium_pulcherrimum',
    ),
  ],
);

const enigmaticTaylorPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const enigmaticTaylorPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: '',
  ),
];
