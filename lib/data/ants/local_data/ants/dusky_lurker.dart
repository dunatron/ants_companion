part of '../local_ants_list.dart';

const duskyLurker = Ant(
  id: 'dusky_lurker',
  name: 'Dusky Lurker',
  species: ScientificSpecies.unknown, // Not its actual species
  scientificName: 'Unknown',
  type: AntType.universal,
  role: AntRole.support,
  tierTags: [
    ...duskyLurkerPveTags,
    ...duskyLurkerPvpTags,
  ],
);

const duskyLurkerPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: notTheWorstB,
  ),
];

const duskyLurkerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: '',
  ),
];
