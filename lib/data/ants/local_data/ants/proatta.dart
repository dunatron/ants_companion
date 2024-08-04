part of '../local_ants_list.dart';

const proatta = Ant(
  id: 'proatta',
  name: 'Proatta',
  description: '',
  scientificName: 'Proatta butteli',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...proattaPveTags,
    ...proattaPvpTags,
  ],
);

const proattaPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: 'One of the best guardian ants in the game for damage',
  ),
];

const proattaPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: 'One of the best guardian ants. '
        'Better suited to the middle if possible',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian ants',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'One of the best guardian ants. '
        'Better suited to the middle if possible',
  ),
];
