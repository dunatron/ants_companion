part of '../local_ants_list.dart';

const brownRogue = Ant(
  id: 'brown_rogue',
  name: 'Brown Rogue',
  scientificName: 'Myrmarachne plataleoides',
  species: Species.spider,
  description: 'It is a jumping spider belonging to the genus Arachnididae, '
      'which is distributed in many regions of india, Sri Lanka, China and '
      'Southeast Asia.\n'
      'They imitate the Oecophylla smaragdina in shape, but unlike their '
      'aggressive nature, Myrmarachne plataleoides are more cautious in nature '
      'and even appear a little timid. They will weave a thin net on the '
      'leaves and hide in the net. Ambush the prey underneath',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...brownRoguePveTags,
    ...brownRoguePvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Myrmarachne plataleoides',
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
    rating: TierRating.f,
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
