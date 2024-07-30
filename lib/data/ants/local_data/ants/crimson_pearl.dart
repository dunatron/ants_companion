part of '../local_ants_list.dart';

const crimsonPearl = Ant(
  id: 'crimson_pearl',
  name: 'Crimson Pearl',
  description: 'A really great PVE ant',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...crimsonPearlPveTags,
    ...crimsonPearlPvpTags,
  ],
);

const crimsonPearlPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'Its just Super strong',
  ),
  AntPveTierTag(
    rating: TierRating.meta,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'Its just Super strong',
  ),
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'Its just Super strong',
  ),
  AntPveTierTag(
    rating: TierRating.meta,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: 'Its just Super strong',
  ),
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: 'Its just Super strong',
  ),
];

const crimsonPearlPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: 'One of the better universal ants in terms of raw damage',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
    reason: 'One of the better universal ants in terms of raw damage',
  )
];
