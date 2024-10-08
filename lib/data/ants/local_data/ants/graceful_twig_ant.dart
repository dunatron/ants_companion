part of '../local_ants_list.dart';

const gracefulTwigAnt = Ant(
  id: AntId.gracefulTwigAnt,
  name: 'Graceful Twig Ant',
  scientificName: 'Pseudomyrmex gracilis',
  species: ScientificSpecies.pseudomyrmexGracilis,
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...gracefulTwigAntPveTags,
    ...gracefulTwigAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.pseudomyrmexGracilis,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.pseudomyrmecinae,
    tribe: null,
    genus: ScientificGenus.pseudomyrmex,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Pseudomyrmex_gracilis',
    ),
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Pseudomyrmex_gracilis',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Pseudomyrmex_gracilis',
    ),
  ],
);

const gracefulTwigAntPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
  ),
];

const gracefulTwigAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
  ),
];
