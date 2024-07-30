part of '../local_ants_list.dart';

const giantTooth = Ant(
  id: 'giant_tooth',
  name: 'Giant Tooth',
  description: '',
  scientificName: '',
  type: AntType.universal,
  role: AntRole.support,
  tierTags: [
    ...giantToothPveTags,
    ...giantToothPvpTags,
  ],
);

const giantToothPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
];
const giantToothPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: 'With its awakening it is one of the best ants in the game '
        'for crowd control',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: 'With its awakening it is one of the best ants in the game '
        'for crowd control. Its weakness is its range',
  ),
];
