part of '../local_ants_list.dart';

const rubySlender = Ant(
  id: 'ruby_slender',
  name: 'Ruby Slender',
  description: '',
  scientificName: '',
  type: AntType.universal,
  role: AntRole.melee,
  tierTags: [
    ...rubySlenderPveTags,
    ...rubySlenderPvpTags,
  ],
);

const rubySlenderPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const rubySlenderPvpTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPvpF,
  ),
];
