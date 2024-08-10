part of '../local_ants_list.dart';

const duskyLurker = Ant(
  id: 'dusky_lurker',
  name: 'Dusky Lurker',
  description: 'This special ant is very mysterious, and no more information '
      'has been disclosed so far',
  scientificName: 'ahhhm mysterious Ant',
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
    rating: TierRating.c,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: '',
  ),
];
