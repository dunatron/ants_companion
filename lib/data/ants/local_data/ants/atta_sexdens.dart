part of '../local_ants_list.dart';

const attaSexdens = Ant(
  id: 'atta_sexdens',
  name: 'Atta Sexdens',
  scientificName: 'Atta Sexdens',
  description: 'It is a leaf-cutter ant that lives in South America. '
      'Each anthill may contain tens of thousands of individuals, occupying an '
      'area of more than 30 square meters.\n\nThey build complex underground '
      'anthills to accommodate high humidity and stable temperatures. They '
      'feed leaves cut and collected from plants.\nAlthough they are leaf-cutter '
      'ants, they have strong territorial awareness and garrison habits',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...attaSexdensPveTags,
    ...attaSexdensPvpTags,
  ],
);

const attaSexdensPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian ants for PVE',
  ),
];
const attaSexdensPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian ants for PVP',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'One of the best guardian ants for PVP',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: 'One of the best guardian ants for PVP',
  ),
];
