part of '../local_ants_list.dart';

const driverAnt = Ant(
  id: 'driver_ant',
  name: 'Driver Ant',
  description: '',
  type: AntType.universal,
  role: AntRole.support,
  tierTags: [
    ...driverAntPveTags,
    ...driverAntPvpTags,
  ],
);

const driverAntPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const driverAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: terribleForPvpF,
  ),
];
