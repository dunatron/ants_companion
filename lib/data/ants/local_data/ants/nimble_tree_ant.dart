part of '../local_ants_list.dart';

const nimbleTreeAnt = Ant(
  id: 'nimble_tree_ant',
  name: 'Nimble Tree Ant',
  description: '',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...nimbleTreeAntPveTags,
    ...nimbleTreeAntPvpTags,
  ],
);

const nimbleTreeAntPveTags = [
  AntPveTierTag(
    rating: TierRating.f2pMeta,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'Needs wise berserker',
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'Needs wise berserker',
  ),
];

const nimbleTreeAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'Needs wise berserker',
  ),
];
