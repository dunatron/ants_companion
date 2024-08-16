part of '../local_ants_list.dart';

const goldenVenom = Ant(
  id: 'golden_venom',
  name: 'Golden Venom',
  scientificName: 'Telamonia dimidiata',
  species: ScientificSpecies.telamoniaDimidiata,
  // none actually supplied
  // maybe Telamonia dimidiata bsed on below link
  // https://www.reddit.com/r/theantsundergroundkd/comments/18jasr7/what_is_the_golden_venom_ant_based_on/

  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...goldenVenomPveTags,
    ...goldenVenomPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.telamoniaDimidiata,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.arachnida,
    order: ScientificOrder.araneae,
    infraorder: ScientificInfraorder.araneomorphae,
    family: ScientificFamily.salticidae,
    subfamily: ScientificSubfamily.salticinae,
    tribe: null,
    genus: ScientificGenus.telamonia,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Telamonia_dimidiata',
    ),
  ],
);

const goldenVenomPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: terribleForPveF,
  ),
];

const goldenVenomPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
