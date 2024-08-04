part of '../local_ants_list.dart';

const guardGeneral = Ant(
  id: 'guard_general',
  name: 'Guard General',
  description: '',
  scientificName: 'Harpegnathos venator',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...guardGeneralPveTags,
    ...guardGeneralPvpTags,
  ],
);

const guardGeneralPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const guardGeneralPvpTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPvpF,
  ),
];
