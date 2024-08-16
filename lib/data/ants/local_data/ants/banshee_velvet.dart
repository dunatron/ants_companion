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
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.dasymutillaOccidentalis,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null,
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.mutillidae,
    subfamily: null,
    tribe: null,
    genus: ScientificGenus.dasymutilla,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Dasymutilla_occidentalis',
    ),
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
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: betterOptionsAvailableC,
  ),
];
