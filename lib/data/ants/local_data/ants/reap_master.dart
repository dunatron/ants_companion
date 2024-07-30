part of '../local_ants_list.dart';

const reapMaster = Ant(
  id: 'reap_master',
  name: 'Reap Master',
  description: '',
  scientificName: '',
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...reapMasterPveTags,
    ...reapMasterPvpTags,
  ],
);

const reapMasterPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'Can deal a good amount of high damage when its not sleeping',
  ),
];

const reapMasterPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'Not the best option for the front row, but better than some',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'A solid choice fora shooter PVP ant.',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'A solid choice fora shooter PVP ant.',
  ),
];
