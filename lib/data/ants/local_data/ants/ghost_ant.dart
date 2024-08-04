part of '../local_ants_list.dart';

const ghostAnt = Ant(
  id: 'ghost_ant',
  name: 'Ghost Ant',
  description: '',
  scientificName: 'Tapinoma melanocephalum',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...ghostAntPveTags,
    ...ghostAntPvpTags,
  ],
);

const ghostAntPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
];

const ghostAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: 'A really strong and viable carrier ant',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: 'A really strong and viable carrier ant',
  ),
];
