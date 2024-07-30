part of '../local_ants_list.dart';

const darkGiant = Ant(
  id: 'dark_giant',
  name: 'Dark Giant',
  description: '',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...darkGiantPveTags,
    ...darkGiantPvpTags,
  ],
);

const darkGiantPveTags = [
  AntPveTierTag(
    rating: TierRating.c,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: betterOptionsAvailableC,
  ),
];

const darkGiantPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: notTheWorstB,
  ),
];
