part of '../local_ants_list.dart';

const blackCancer = Ant(
  id: 'black_cancer',
  name: 'Black Cancer',
  description: '',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...blackCancerPveTags,
    ...blackCancerPvpTags,
  ],
);

const blackCancerPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const blackCancerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: betterOptionsAvailableC,
  ),
];
