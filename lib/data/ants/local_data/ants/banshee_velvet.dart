part of '../local_ants_list.dart';

const bansheeVelvet = Ant(
  id: 'banshee_velvet',
  name: 'Banshee Velvet',
  scientificName: 'Dasymutilla occidentalis',
  species: Species.wasp,
  description: 'It is a species of parasitoid wasp native to '
      'the eastern United States.\n'
      'It is commonly mistaken for a member of the true ant family, as the '
      'female is wingless.\n'
      'Lethal toxic hidden under its pretty appearance. Therefore it is also '
      'known as the "Cow Killer".',
  type: AntType.shooter,
  role: AntRole.melee,
  tierTags: [
    ...bansheeVelvetPveTags,
    ...bansheeVelvetPvpTags,
  ],
);

const bansheeVelvetPveTags = [
  AntPveTierTag(
    rating: TierRating.c,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const bansheeVelvetPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: betterOptionsAvailableC,
  ),
];
