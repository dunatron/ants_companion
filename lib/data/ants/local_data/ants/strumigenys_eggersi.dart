part of '../local_ants_list.dart';

const strumigenysEggersi = Ant(
  id: 'strumigenys_eggersi',
  name: 'Strumigenys Eggersi',
  description: '',
  scientificName: 'Strumigenys Eggersi',
  type: AntType.carrier,
  role: AntRole.melee,
  tierTags: [
    ...strumigenysEggersiPveTags,
    ...strumigenysEggersiPvpTags,
  ],
);

const strumigenysEggersiPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const strumigenysEggersiPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: 'The best carrier ant front liner in the game for PVP',
  ),
];
