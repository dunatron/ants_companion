part of '../local_ants_list.dart';

const shikareeMaster = Ant(
  id: AntId.shikareeMaster,
  name: 'Shikaree Master',
  scientificName: 'Arilus cristatus',
  species: ScientificSpecies.arilusCristatus,
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...shikareeMasterPveTags,
    ...shikareeMasterPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.arilusCristatus,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hemiptera,
    // subOrder: Heteroptera
    infraorder: null,
    family: ScientificFamily.reduviidae,
    subfamily: ScientificSubfamily.harpactorinae,
    tribe: ScientificTribe.harpactorini,
    genus: ScientificGenus.arilus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Arilus_cristatus',
    ),
  ],
);

const shikareeMasterPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
  ),
];

const shikareeMasterPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
  ),
];
