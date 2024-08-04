part of '../local_ants_list.dart';

const myrmarachneFormicaria = Ant(
  id: 'myrmarachne_formicaria',
  name: 'Myrmarachne Formicaria',
  scientificName: 'Myrmarachne Formicaria',
  description: 'An OP carrier Ant',
  type: AntType.carrier,
  role: AntRole.melee,
  species: Species.spider,
  tierTags: [
    ...myrmarachneFormicariaPveTags,
    ...myrmarachneFormicariaPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Myrmarachne Formicaria',
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
    rating: TierRating.f,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const myrmarachneFormicariaPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    reason: 'One of the best front line carrier ants in the game for PVP.'
        'It steals the defense of the enemies front row. '
        'Applies a damage de-buff to all enemies.'
        'Chance to silence a random enemy whenever it receives damage',
    rowPosition: RowPosition.front,
  )
];
