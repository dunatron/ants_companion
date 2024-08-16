part of '../local_ants_list.dart';

const myrmarachneFormicaria = Ant(
  id: 'myrmarachne_formicaria',
  name: 'Myrmarachne Formicaria',
  scientificName: 'Myrmarachne Formicaria',
  species: ScientificSpecies.myrmarachneFormicaria,
  type: AntType.carrier,
  role: AntRole.melee,
  tierTags: [
    ...myrmarachneFormicariaPveTags,
    ...myrmarachneFormicariaPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.myrmarachneFormicaria,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.arachnida,
    order: ScientificOrder.araneae,
    infraorder: ScientificInfraorder.araneomorphae,
    family: ScientificFamily.salticidae,
    subfamily: ScientificSubfamily.salticinae,
    tribe: null,
    genus: ScientificGenus.myrmarachne,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Myrmarachne_formicaria',
    ),
  ],
);

const myrmarachneFormicariaPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const myrmarachneFormicariaPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    reason: '',
    rowPosition: RowPosition.front,
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    reason: '',
    rowPosition: RowPosition.middle,
  )
];
