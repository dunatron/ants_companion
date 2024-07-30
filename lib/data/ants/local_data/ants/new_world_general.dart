part of '../local_ants_list.dart';

const newWorldGeneral = Ant(
  id: 'new_world_general',
  name: 'New World General',
  description: '',
  scientificName: '',
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...newWorldGeneralPveTags,
    ...newWorldGeneralPvpTags,
  ],
);

const newWorldGeneralPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const newWorldGeneralPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: 'Not really the best option to run',
  ),
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: 'Not really the best option to run',
  ),
];
