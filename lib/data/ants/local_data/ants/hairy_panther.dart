part of '../local_ants_list.dart';

const hairyPanther = Ant(
  id: 'hairy_panther',
  name: 'Hairy Panther',
  description: '',
  scientificName: 'Neoponera villosa',
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...hairyPantherPveTags,
    ...hairyPantherPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.neoponeraVillosa,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.ponerinae,
    tribe: ScientificTribe.ponerini,
    genus: ScientificGenus.neoponera,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Neoponera_villosa',
    ),
  ],
);

const hairyPantherPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: terribleForPveF,
  ),
];

const hairyPantherPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
