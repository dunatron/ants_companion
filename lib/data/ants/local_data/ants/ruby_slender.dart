part of '../local_ants_list.dart';

const rubySlender = Ant(
  id: AntId.rubySlender,
  name: 'Ruby Slender',
  scientificName: 'Gnamptogenys mordax',
  species: ScientificSpecies.gnamptogenysMordax,
  type: AntType.universal,
  role: AntRole.melee,
  tierTags: [
    ...rubySlenderPveTags,
    ...rubySlenderPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.gnamptogenysMordax,
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
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
  ),
];

const rubySlenderPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
  ),
];
