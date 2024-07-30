part of '../local_ants_list.dart';

const attaSexdens = Ant(
  id: 'atta_sexdens',
  name: 'Atta Sexdens',
  description: '',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...attaSexdensPveTags,
    ...attaSexdensPvpTags,
  ],
);

const attaSexdensPveTags = [
  AntPveTierTag(
    rating: TierRating.meta,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian ants for PVE',
  ),
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian ants for PVE',
  ),
];
const attaSexdensPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian ants for PVP',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'One of the best guardian ants for PVP',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: 'One of the best guardian ants for PVP',
  ),
];
