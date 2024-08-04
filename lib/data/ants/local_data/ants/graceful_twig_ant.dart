part of '../local_ants_list.dart';

const gracefulTwigAnt = Ant(
  id: 'graceful_twig_ant',
  name: 'Graceful Twig Ant',
  description: '',
  scientificName: 'Pseudomyrmex gracilis',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...gracefulTwigAntPveTags,
    ...gracefulTwigAntPvpTags,
  ],
);

const gracefulTwigAntPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: notTheWorstB,
  ),
];

const gracefulTwigAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: 'A really strong support ant',
  ),
];
