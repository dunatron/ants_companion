part of '../local_ants_list.dart';

const bansheePanda = Ant(
  id: AntId.bansheePanda,
  name: 'Banshee Panda',
  scientificName: 'Euspinolia militaris',
  species: ScientificSpecies.euspinoliaMilitaris,
  type: AntType.shooter,
  role: AntRole.support,
  tierTags: [
    ...bansheePandaPveTags,
    ...bansheePandaPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.euspinoliaMilitaris,
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
  ),
];
const bansheePandaPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
  ),
];
