part of '../local_ants_list.dart';

const hairyPanther = Ant(
  id: 'hairy_panther',
  name: 'Hairy Panther',
  description: '',
  scientificName: '',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...hairyPantherPveTags,
    ...hairyPantherPvpTags,
  ],
);

const hairyPantherPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: terribleForPveF,
  ),
];

const hairyPantherPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian ants capable of extremely high damage',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'One of the best guardian ants capable of extremely high damage',
  ),
];
