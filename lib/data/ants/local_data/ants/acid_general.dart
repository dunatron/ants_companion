part of '../local_ants_list.dart';

const acidGeneral = Ant(
  id: 'acid_general',
  name: 'Acid General',
  description: '',
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...acidGeneralPveTags,
    ...acidGeneralPvpTags,
  ],
);

const acidGeneralPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'There are much better ants to use for shooter pve',
  ),
];
const acidGeneralPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'There are better shooter ants for pvp',
  ),
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'There are better shooter ants for pvp',
  ),
];
