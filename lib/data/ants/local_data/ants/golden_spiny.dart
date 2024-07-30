part of '../local_ants_list.dart';

const goldenSpiny = Ant(
  id: 'golden_spiny',
  name: 'Golden Spiny',
  description: '',
  scientificName: '',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...goldenSpinyPveTags,
    ...goldenSpinyPvpTags,
  ],
);

const goldenSpinyPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: terribleForPveF,
  ),
];

const goldenSpinyPvpTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: terribleForPvpF,
  ),
];
