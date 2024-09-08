part of '../local_ants_list.dart';

const brownRogue = Ant(
  id: AntId.brownRogue,
  name: 'Brown Rogue',
  scientificName: 'Myrmarachne plataleoides',
  species: ScientificSpecies.myrmarachnePlataleoides,
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...brownRoguePveTags,
    ...brownRoguePvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.myrmarachnePlataleoides,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null,
    classification: ScientificClassification.arachnida,
    order: ScientificOrder.araneae,
    infraorder: null,
    family: ScientificFamily.salticidae,
    subfamily: ScientificSubfamily.salticinae,
    tribe: null,
    genus: ScientificGenus.myrmaplata,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Myrmaplata_plataleoides',
    ),
  ],
);

const brownRoguePveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
  ),
];
const brownRoguePvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.gss,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.gss,
    rowPosition: RowPosition.back,
  ),
];
