part of '../local_ants_list.dart';

const bansheePanda = Ant(
  id: 'banshee_panda',
  name: 'Banshee Panda',
  description: "It is a species of wasp in the family Mutillidae, also known "
      "as 'Panda Ant'. It has a unique color and cute appearance",
  scientificName: 'Euspinolia militaris',
  species: Species.wasp,
  type: AntType.shooter,
  role: AntRole.support,
  tierTags: [
    ...bansheePandaPveTags,
    ...bansheePandaPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Euspinolia militaris',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null,
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.mutillidae,
    subfamily: null,
    tribe: null,
    genus: ScientificGenus.euspinolia,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Euspinolia_militaris',
    ),
  ],
);

const bansheePandaPveTags = [
  AntPveTierTag(
    rating: TierRating.c,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'Terrible do not use for PVE',
  ),
];
const bansheePandaPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'With awakening and 8 starred this is great in the front for pvp',
  ),
];
