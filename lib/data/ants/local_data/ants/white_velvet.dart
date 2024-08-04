part of '../local_ants_list.dart';

const whiteVelvet = Ant(
  id: 'white_velvet',
  name: 'White Velvet',
  description: '',
  scientificName: 'Dasymutilla gloriosa',
  type: AntType.universal,
  role: AntRole.support,
  tierTags: [
    ...whiteVelvetPveTags,
    ...whiteVelvetPvpTags,
  ],
);

const whiteVelvetPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason:
        'Atrocious ant. The fact this is a hard to get/paid ant is craaaazy',
  ),
];

const whiteVelvetPvpTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPvpF,
  ),
];
