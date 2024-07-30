part of '../local_ants_list.dart';

const bloodGiant = Ant(
  id: 'blood_giant',
  name: 'Blood Giant',
  description: '',
  scientificName: '',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...bloodGiantPveTags,
    ...bloodGiantPvpTags,
  ],
);

const bloodGiantPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const bloodGiantPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: betterOptionsAvailableC,
  ),
];
