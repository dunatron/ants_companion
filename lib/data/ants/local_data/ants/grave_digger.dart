part of '../local_ants_list.dart';

const graveDigger = Ant(
  id: 'grave_digger',
  name: 'Grave Digger',
  scientificName: 'Prionopelta humicola',
  description: 'A support ant with crowd control abilities, '
      'pairs really nicely with golden crystal',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...graveDiggerPveTags,
    ...graveDiggerPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Prionopelta humicola',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.amblyoponinae,
    tribe: ScientificTribe.amblyoponini,
    genus: ScientificGenus.prionopelta,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Prionopelta_humicola',
    ),
  ],
);

const graveDiggerPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: 'There are simply better options to run for pve damage. '
        'Yes even with golden crystal',
  ),
];

const graveDiggerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    reason: 'Only if Golden Crystal is present does this become an S tier.'
        'Golden crystal allows it a better chance to get off its crowd '
        'control ability',
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    reason: 'Running grave digger in the front is a viable option',
    rowPosition: RowPosition.front,
  )
];
