part of '../local_ants_list.dart';

const darkHercules = Ant(
  id: 'dark_hercules',
  name: 'Dark Hercules',
  description: '',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...darkHerculesPveTags,
    ...darkHerculesPvpTags,
  ],
);

const darkHerculesPveTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: terribleForPveF,
  ),
];

const darkHerculesPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'This ant is fairly average in general',
  ),
];
