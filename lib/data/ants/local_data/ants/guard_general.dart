part of '../local_ants_list.dart';

const guardGeneral = Ant(
  id: AntId.guardGeneral,
  name: 'Guard General',
  species: ScientificSpecies.harpegnathosVenator,
  scientificName: 'Harpegnathos venator',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...guardGeneralPveTags,
    ...guardGeneralPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.harpegnathosVenator,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.ponerinae,
    tribe: ScientificTribe.ponerini,
    genus: ScientificGenus.harpegnathos,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Harpegnathos_venator',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Harpegnathos_venator',
    ),
  ],
);

const guardGeneralPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];
const guardGeneralPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];
