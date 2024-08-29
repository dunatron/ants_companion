part of '../local_ants_list.dart';

const driverAnt = Ant(
  id: AntId.driverAnt,
  name: 'Driver Ant',
  species: ScientificSpecies.dorylusDriver,
  scientificName: 'Dorylus driver',
  type: AntType.universal,
  role: AntRole.support,
  tierTags: [
    ...driverAntPveTags,
    ...driverAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.dorylusDriver,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.dorylinae,
    tribe: null,
    genus: ScientificGenus.dorylus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Dorylus#Species',
    ),
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Dorylus',
    ),
  ],
);

const driverAntPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
  ),
];
const driverAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
  ),
];
