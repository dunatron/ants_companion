part of '../local_ants_list.dart';

const mimicryMaster = Ant(
  id: 'mimicry_master',
  name: 'Mimicry Master',
  species: ScientificSpecies.mimicryMaster,
  scientificName: 'Unknown',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...mimicryMasterPveTags,
    ...mimicryMasterPvpTags,
  ],
  // We don't know what this ant actually is.
  // ToDo: mimicry master Scientific classification
);

const mimicryMasterPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
  ),
];

const mimicryMasterPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
  ),
];
