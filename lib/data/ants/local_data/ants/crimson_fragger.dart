part of '../local_ants_list.dart';

const crimsonFragger = Ant(
  id: 'crimson_fragger',
  name: 'Crimson Fragger',
  description: '',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...crimsonFraggerPveTags,
    ...crimsonFraggerPvpTags,
  ],
);

const crimsonFraggerPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'Deals a consistent amount of high damage',
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'Deals a consistent amount of high damage',
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: 'Deals a consistent amount of high damage',
  ),
];
const crimsonFraggerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: 'One of the best universal ants for PVP',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
    reason: 'One of the best universal ants for PVP',
  ),
];
