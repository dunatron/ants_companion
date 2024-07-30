part of '../local_ants_list.dart';

const bansheePanda = Ant(
  id: 'banshee_panda',
  name: 'Banshee Panda',
  description: '',
  scientificName: '',
  type: AntType.shooter,
  role: AntRole.support,
  tierTags: [
    ...bansheePandaPveTags,
    ...bansheePandaPvpTags,
  ],
);

const bansheePandaPveTags = [
  AntPveTierTag(
    rating: TierRating.c,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'Terrible do not use for PVE',
  ),
];
const bansheePandaPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'With awakening and 8 starred this is viable in the front for pvp',
  ),
];
