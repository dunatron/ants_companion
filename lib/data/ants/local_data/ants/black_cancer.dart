part of '../local_ants_list.dart';

const blackCancer = Ant(
  id: 'black_cancer',
  name: 'Black Cancer',
  scientificName: 'Aphantochilus rogersi',
  species: Species.spider,
  description: 'Found in Paraguay, Brazil, Argentina, and Panama.\n'
      'Aphantochilus is a genus of ant-mimicking crab spiders. One of the best '
      'species in mimicking ants. Survive by eating eats. Have similar sizes '
      "and appearances as ants. It's one of the main natural predators "
      'of local ants',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...blackCancerPveTags,
    ...blackCancerPvpTags,
  ],
);

const blackCancerPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const blackCancerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: betterOptionsAvailableC,
  ),
];
