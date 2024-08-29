part of '../local_ants_list.dart';

const nimbleTreeAnt = Ant(
  id: AntId.nimbleTreeAnt,
  name: 'Nimble Tree Ant',
  scientificName: 'Pseudomyrmex boopis',
  species: ScientificSpecies.pseudomyrmexBoopis,
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...nimbleTreeAntPveTags,
    ...nimbleTreeAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.pseudomyrmexBoopis,
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
      subUrl: 'Pseudomyrmex_boopis',
    ),
  ],
);

const nimbleTreeAntPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
  ),
];

const nimbleTreeAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
  ),
];
