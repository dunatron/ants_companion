part of '../local_ants_list.dart';

const nimbleTreeAnt = Ant(
  id: 'nimble_tree_ant',
  name: 'Nimble Tree Ant',
  description: '',
  scientificName: '',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...nimbleTreeAntPveTags,
    ...nimbleTreeAntPvpTags,
  ],
);

const nimbleTreeAntPveTags = [
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
