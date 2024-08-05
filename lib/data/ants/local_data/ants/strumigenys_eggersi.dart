part of '../local_ants_list.dart';

const strumigenysEggersi = Ant(
  id: 'strumigenys_eggersi',
  name: 'Strumigenys Eggersi',
  description: '',
  scientificName: 'Strumigenys Eggersi',
  type: AntType.carrier,
  role: AntRole.melee,
  tierTags: [
    ...strumigenysEggersiPveTags,
    ...strumigenysEggersiPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Strumigenys Eggersi',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.attini,
    genus: ScientificGenus.strumigenys,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Strumigenys_eggersi',
    ),
  ],
);

const strumigenysEggersiPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const strumigenysEggersiPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: 'The best carrier ant front liner in the game for PVP',
  ),
];
