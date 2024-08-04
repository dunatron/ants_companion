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
    rating: TierRating.f,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: terribleForPvpF,
  ),
];
