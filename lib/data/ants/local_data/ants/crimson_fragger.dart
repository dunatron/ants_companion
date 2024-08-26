part of '../local_ants_list.dart';

const crimsonFragger = Ant(
  id: AntId.crimsonFragger,
  name: 'Crimson Fragger',
  scientificName: 'Camponotus chromaiodes',
  species: ScientificSpecies.camponotusChromaiodes,
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...crimsonFraggerPveTags,
    ...crimsonFraggerPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.camponotusChromaiodes,
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
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
  ),
];
const crimsonFraggerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
  ),
];
