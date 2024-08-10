part of '../local_ants_list.dart';

const mimicryMaster = Ant(
  id: 'mimicry_master',
  name: 'Mimicry Master',
  description: 'Its a kind of unknown and unnamed Alydid Bug. Found in some '
      'particular regions of South America, a special species of insect. This '
      'species usually mimic ants to get better living environments. Looks '
      'like the camponotus Sericeiventris.',
  scientificName: 'Unknown',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...mimicryMasterPveTags,
    ...mimicryMasterPvpTags,
  ],
  // We dont know what this ant actually is.
  // ToDo: mimicry master Scientific classification
);

const mimicryMasterPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'Deals a good amount of damage',
  ),
];

const mimicryMasterPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
