part of '../local_ants_list.dart';

const goldenSugar = Ant(
  id: 'golden_sugar',
  name: 'Golden Sugar',
  description: '',
  scientificName: 'Camponotus sericeiventris',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...goldenSugarPveTags,
    ...goldenSugarPvpTags,
  ],
);

const goldenSugarPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: notTheWorstB,
  ),
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: notTheWorstB,
  ),
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: notTheWorstB,
  ),
];

const goldenSugarPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
    reason: notTheWorstB,
  ),
];
