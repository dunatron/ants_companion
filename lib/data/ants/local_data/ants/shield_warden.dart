part of '../local_ants_list.dart';

const shieldWarden = Ant(
  id: 'shield_warden',
  name: 'Shield Warden',
  description: '',
  scientificName: 'Cataulacus huberi',
  type: AntType.guardian,
  role: AntRole.support,
  tierTags: [
    ...shieldWardenPveTags,
    ...shieldWardenPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Cataulacus huberi',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.crematogastrini,
    genus: ScientificGenus.cataulacus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Cataulacus_huberi',
    ),
  ],
);

const shieldWardenPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: terribleForPveF,
  ),
];

const shieldWardenPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: 'A decent option for the guardian front line',
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: 'A decent option for the middle line especially for duel of queens',
  ),
];
