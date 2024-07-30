part of '../local_ants_list.dart';

const myrmecotypusRettenmeyeri = Ant(
  id: 'myrmecotypus_rettenmeyeri',
  name: 'Myrmecotypus Rettenmeyeri',
  description: '',
  type: AntType.shooter,
  role: AntRole.melee,
  tierTags: [
    ...myrmecotypusRettenmeyeriPveTags,
    ...myrmecotypusRettenmeyeriPvpTags,
  ],
);

const myrmecotypusRettenmeyeriPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const myrmecotypusRettenmeyeriPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'Really solid choice for a shooter PVP front line',
  ),
];
