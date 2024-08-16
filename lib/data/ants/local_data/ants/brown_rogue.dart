part of '../local_ants_list.dart';

const brownRogue = Ant(
  id: 'brown_rogue',
  name: 'Brown Rogue',
  scientificName: 'Myrmarachne plataleoides',
  species: ScientificSpecies.myrmarachnePlataleoides,
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...brownRoguePveTags,
    ...brownRoguePvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.myrmarachnePlataleoides,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null,
    classification: ScientificClassification.arachnida,
    order: ScientificOrder.araneae,
    infraorder: null,
    family: ScientificFamily.salticidae,
    subfamily: ScientificSubfamily.salticinae,
    tribe: null,
    genus: ScientificGenus.myrmaplata,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Myrmaplata_plataleoides',
    ),
  ],
);

const brownRoguePveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: terribleForPveF,
  ),
];
const brownRoguePvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: 'A really good ant for PVP which can easily '
        'take out the enemies back-line. Needs awakening for S tier',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
    reason: 'A really good ant for PvP which can easily '
        'take out the enemies back-line. Needs awakening for S tier',
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
    reason: 'Without awakening this ant falls into B tier',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.gss,
    rowPosition: RowPosition.middle,
    reason: 'A really good ant for PvP which can easily '
        'take out the enemies back-line. Needs awakening for S tier',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.gss,
    rowPosition: RowPosition.back,
    reason: 'A really good ant for PvP which can easily '
        'take out the enemies back-line. Needs awakening for S tier',
  ),
];
