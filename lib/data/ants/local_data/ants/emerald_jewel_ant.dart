part of '../local_ants_list.dart';

const emeraldJewelAnt = Ant(
  id: 'emerald_jewel_ant',
  name: 'Emerald Jewel Ant',
  description: '',
  scientificName: 'Ampulex compressa',
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...emeraldJewelAntPveTags,
    ...emeraldJewelAntPvpTags,
  ],
);

const emeraldJewelAntPveTags = [];
const emeraldJewelAntPvpTags = [];
