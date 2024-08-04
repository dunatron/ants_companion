part of '../local_ants_list.dart';

const predator = Ant(
  id: 'predator',
  name: 'Predator',
  description: '',
  scientificName: 'Psalidomyrmex reicenspergeri',
  type: AntType.shooter,
  role: AntRole.melee,
  tierTags: [
    ...predatorPveTags,
    ...predatorPvpTags,
  ],
);

const predatorPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const predatorPvpTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'Just a super bad ant especially for shooters.. of which it is...',
  ),
];
