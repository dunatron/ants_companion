part of '../local_ants_list.dart';

const duskyLurker = Ant(
  id: 'dusky_lurker',
  name: 'Dusky Lurker',
  description: '',
  scientificName: '',
  type: AntType.universal,
  role: AntRole.support,
  tierTags: [
    ...duskyLurkerPveTags,
    ...duskyLurkerPvpTags,
  ],
);

const duskyLurkerPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
];

const duskyLurkerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: 'Is a viable support ant for PVP especially if your '
        'back line deals high/extremely high damage',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: 'Is a viable support ant for PVP especially if your '
        'back line deals high/extremely high damage',
  ),
];
