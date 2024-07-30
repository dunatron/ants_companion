part of '../local_ants_list.dart';

const wiseBerserker = Ant(
  id: 'wise_berserker',
  name: 'Wise Berserker',
  description: '',
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...wiseBerserkerPveTags,
    ...wiseBerserkerPvpTags,
  ],
);

const wiseBerserkerPveTags = [
  AntPveTierTag(
    rating: TierRating.f2pMeta,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'this is the meta and for f2p in the middle row for PVE',
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'Does a decent amount of damage',
  ),
];

const wiseBerserkerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'A high damage dealing ant. '
        'Loves ants that allow it to auto attack again'
        'Abilities that buff auto attacks are really great too',
  ),
];
