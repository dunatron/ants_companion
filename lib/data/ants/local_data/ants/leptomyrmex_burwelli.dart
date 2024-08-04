part of '../local_ants_list.dart';

const leptomyrmexBurwelli = Ant(
  id: 'leptomyrmex_burwelli',
  name: 'Leptomyrmex Burwelli',
  description: '',
  scientificName: 'Leptomyrmex Burwelli',
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...leptomyrmexBurwelliPveTags,
    ...leptomyrmexBurwelliPvpTags,
  ],
);

const leptomyrmexBurwelliPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: 'Provides a damage buff for other ants and '
        'deals extremely high damage',
  ),
];

const leptomyrmexBurwelliPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: 'The best carrier ant in the game, '
        'applying de-buffs to enemies and '
        'buffs to allies while dealing the hardest hitting ability in the game',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: 'The best carrier ant in the game, '
        'applying de-buffs to enemies and '
        'buffs to allies while dealing the hardest hitting ability in the game',
  ),
];
