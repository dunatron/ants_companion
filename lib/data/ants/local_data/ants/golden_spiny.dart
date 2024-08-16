part of '../local_ants_list.dart';

const goldenSpiny = Ant(
  id: 'golden_spiny',
  name: 'Golden Spiny',
  description: '',
  scientificName: 'Polyrhachis trapezoidea',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...goldenSpinyPveTags,
    ...goldenSpinyPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.polyrhachisTrapezoidea,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.formicinae,
    tribe: ScientificTribe.camponotini,
    genus: ScientificGenus.polyrhachis,
    // subGenus: Hagiomyrma
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Polyrhachis_trapezoidea',
    ),
  ],
);

const goldenSpinyPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: terribleForPveF,
  ),
];

const goldenSpinyPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
