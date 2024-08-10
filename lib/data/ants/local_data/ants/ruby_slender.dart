part of '../local_ants_list.dart';

const rubySlender = Ant(
  id: 'ruby_slender',
  name: 'Ruby Slender',
  description: '',
  scientificName: 'Gnamptogenys mordax',
  type: AntType.universal,
  role: AntRole.melee,
  tierTags: [
    ...rubySlenderPveTags,
    ...rubySlenderPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Gnamptogenys mordax',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.ectatomminae,
    tribe: ScientificTribe.ectatommini,
    genus: ScientificGenus.gnamptogenys,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Gnamptogenys_mordax',
    ),
  ],
);

const rubySlenderPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const rubySlenderPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: '',
  ),
];
