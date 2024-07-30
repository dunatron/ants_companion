part of '../local_ants_list.dart';

const bansheeVelvet = Ant(
  id: 'banshee_velvet',
  name: 'Banshee Velvet',
  description: '',
  scientificName: '',
  type: AntType.shooter,
  role: AntRole.melee,
  tierTags: [
    ...bansheeVelvetPveTags,
    ...bansheeVelvetPvpTags,
  ],
);

const bansheeVelvetPveTags = [
  AntPveTierTag(
    rating: TierRating.c,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const bansheeVelvetPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: betterOptionsAvailableC,
  ),
];
