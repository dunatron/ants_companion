part of '../local_ants_list.dart';

const shikareeMaster = Ant(
  id: 'shikaree_master',
  name: 'Shikaree Master',
  description: '',
  scientificName: '',
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...shikareeMasterPveTags,
    ...shikareeMasterPvpTags,
  ],
);

const shikareeMasterPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: 'Deals a high amount of damage',
  ),
];

const shikareeMasterPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: 'Deals a high amount of damage to multiple targets',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: 'Deals a high amount of damage to multiple targets',
  ),
];
