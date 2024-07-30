part of '../local_ants_list.dart';

const shikareeMaster = Ant(
  id: 'shikaree_master',
  name: 'Shikaree Master',
  description: '',
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...shikareeMasterPveTags,
    ...shikareeMasterPvpTags,
  ],
);

const shikareeMasterPveTags = [
  AntPveTierTag(
    rating: TierRating.f2pMeta,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: 'The second best f2p damage dealer in the game for carrier',
  ),
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
