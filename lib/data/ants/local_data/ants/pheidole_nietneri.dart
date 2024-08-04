part of '../local_ants_list.dart';

const pheidoleNietneri = Ant(
  id: 'pheidole_nietneri',
  name: 'Pheidole Nietneri',
  description: 'Pheidole nietneri',
  scientificName: '',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...pheidoleNietneriPveTags,
    ...pheidoleNietneriPvpTags,
  ],
);

const pheidoleNietneriPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const pheidoleNietneriPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: 'One of the best guardian front liners',
  ),
];
