part of '../local_ants_list.dart';

const goldenSpiny = Ant(
  id: AntId.goldenSpiny,
  name: 'Golden Spiny',
  scientificName: 'Polyrhachis trapezoidea',
  species: ScientificSpecies.polyrhachisTrapezoidea,
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
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
  ),
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
  ),
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
  ),
];

const goldenSpinyPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
  ),
];
