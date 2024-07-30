part of '../local_ants_list.dart';

const mimicryMaster = Ant(
  id: 'mimicry_master',
  name: 'Mimicry Master',
  description: '',
  scientificName: '',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...mimicryMasterPveTags,
    ...mimicryMasterPvpTags,
  ],
);

const mimicryMasterPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'Deals a good amount of damage',
  ),
];

const mimicryMasterPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'Is a solid choice for any guardian player',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'Is a solid choice for any guardian player',
  ),
];
