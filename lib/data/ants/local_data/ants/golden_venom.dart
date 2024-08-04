part of '../local_ants_list.dart';

const goldenVenom = Ant(
  id: 'golden_venom',
  name: 'Golden Venom',
  description: 'A mysterious ant spider, common in rainforest area with humid '
      'climates. It is large, and its bright colours indicate that it is '
      'extremely dangerous.',
  scientificName: 'None...',
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...goldenVenomPveTags,
    ...goldenVenomPvpTags,
  ],
);

const goldenVenomPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: terribleForPveF,
  ),
];

const goldenVenomPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: notTheWorstB,
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: notTheWorstB,
  ),
];
