part of '../local_ants_list.dart';

const rockBandit = Ant(
  id: 'rock_bandit',
  name: 'Rock Bandit',
  description: '',
  scientificName: '',
  type: AntType.guardian,
  role: AntRole.support,
  tierTags: [
    ...rockBanditPveTags,
    ...rockBanditPvpTags,
  ],
);

const rockBanditPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const rockBanditPvpTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPvpF,
  ),
];
