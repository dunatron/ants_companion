part of '../local_ants_list.dart';

const goldArmor = Ant(
  id: 'gold_armor',
  name: 'Gold Armor',
  scientificName: 'Daceton armigerum',
  description: 'A really nice PVE ant',
  type: AntType.universal,
  role: AntRole.melee,
  tierTags: [
    ...goldArmorPveTags,
    ...goldArmorPvpTags,
  ],
);

const goldArmorPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    rowPosition: RowPosition.front,
    antType: AntType.carrier,
    reason:
        'It can boost the damage of other ants vs pangolin and groundhog with '
        'its awakening while also doing a decent amount of damage itself',
  )
];

const goldArmorPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: 'Not the best ant for pvp situations',
  ),
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: 'Not the best ant for pvp situations',
  )
];
