part of '../local_ants_list.dart';

const leafDevourer = Ant(
  id: 'leaf_devourer',
  name: 'Leaf Devourer',
  description: '',
  scientificName: 'Atta laevigata',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...leafDevourerPveTags,
    ...leafDevourerPvpTags,
  ],
);

const leafDevourerPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian damage dealers',
  ),
];

const leafDevourerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian damage dealers. '
        'Does ramping damage',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'One of the best guardian damage dealers. '
        'Does ramping damage',
  ),
];
