part of '../local_ants_list.dart';

const bulletAnt = Ant(
  id: 'bullet_ant',
  name: 'Bullet Ant',
  description: '',
  scientificName: '',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...bulletAntPveTags,
    ...bulletAntPvpTags,
  ],
);

const bulletAntPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const bulletAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: 'Bullet Ant is ok for PVP although '
        'there are better f2p options available',
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: 'Bullet Ant is ok for PVP although '
        'there are better f2p options available',
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
    reason: 'Bullet Ant is ok for PVP although '
        'there are better f2p options available',
  ),
];
