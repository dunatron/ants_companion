part of '../local_ants_list.dart';

const crimsonFragger = Ant(
  id: 'crimson_fragger',
  name: 'Crimson Fragger',
  scientificName: 'Camponotus chromaiodes',
  description: 'Lives in forested areas at lower elevations and builds nests '
      'in decaying wood(both logs and stumps) that extend all the way to '
      'the ground.',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...crimsonFraggerPveTags,
    ...crimsonFraggerPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Camponotus chromaiodes',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null,
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.formicinae,
    tribe: ScientificTribe.camponotini,
    genus: ScientificGenus.camponotus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Camponotus_chromaiodes',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Camponotus_chromaiodes',
    ),
  ],
);

const crimsonFraggerPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'Deals a consistent amount of high damage',
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'Deals a consistent amount of high damage',
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: 'Deals a consistent amount of high damage',
  ),
];
const crimsonFraggerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
