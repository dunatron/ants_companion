part of '../local_ants_list.dart';

const weaverAnt = Ant(
  id: 'weaver_ant',
  name: 'Weaver Ant',
  description: '',
  scientificName: 'Oecophylla longinoda',
  type: AntType.shooter,
  role: AntRole.support,
  tierTags: [
    ...weaverAntPveTags,
    ...weaverAntPvpTags,
  ],
);

const weaverAntPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: terribleForPveF,
  ),
];

const weaverAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'One of the best support shooter ants in the game',
  ),
];
