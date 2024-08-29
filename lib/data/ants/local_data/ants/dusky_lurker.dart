part of '../local_ants_list.dart';

const duskyLurker = Ant(
  id: AntId.duskyLurker,
  name: 'Dusky Lurker',
  species: ScientificSpecies.duskyLurker, // Not its actual species
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
  ),
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
  ),
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];

const duskyLurkerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
  ),
];
