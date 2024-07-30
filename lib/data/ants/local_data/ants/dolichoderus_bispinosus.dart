part of '../local_ants_list.dart';

const dolichoderusBispinosus = Ant(
  id: 'dolichoderus_bispinosus',
  name: 'Dolichoderus bispinosus',
  description: '',
  scientificName: '',
  type: AntType.shooter,
  role: AntRole.melee,
  tierTags: [
    ...dolichoderusBispinosusPveTags,
    ...dolichoderusBispinosusPvpTags,
  ],
);

const dolichoderusBispinosusPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const dolichoderusBispinosusPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'One of the best shooter ants for PVP in the front row '
        'especially with wise berserker',
  ),
];
