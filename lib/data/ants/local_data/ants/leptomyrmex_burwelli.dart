part of '../local_ants_list.dart';

const leptomyrmexBurwelli = Ant(
  id: 'leptomyrmex_burwelli',
  name: 'Leptomyrmex Burwelli',
  description: '',
  scientificName: 'Leptomyrmex Burwelli',
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...leptomyrmexBurwelliPveTags,
    ...leptomyrmexBurwelliPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.leptomyrmexBurwelli,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.dolichoderinae,
    tribe: ScientificTribe.leptomyrmecini,
    genus: ScientificGenus.leptomyrmex,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Leptomyrmex_burwelli',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Leptomyrmex_burwelli',
    ),
  ],
);

const leptomyrmexBurwelliPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: 'Provides a damage buff for other ants and '
        'deals extremely high damage',
  ),
];

const leptomyrmexBurwelliPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
