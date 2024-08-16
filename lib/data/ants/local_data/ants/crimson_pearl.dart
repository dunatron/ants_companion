part of '../local_ants_list.dart';

const crimsonPearl = Ant(
  id: 'crimson_pearl',
  name: 'Crimson Pearl',
  scientificName: 'Myrmarachne sp',
  species: ScientificSpecies.myrmarachneSp,
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.myrmarachneSp,
    phylum: ScientificPhylum.arthropoda,
    subphylum: ScientificSubphylum.chelicerata,
    classification: ScientificClassification.arachnida,
    order: ScientificOrder.araneae,
    infraorder: ScientificInfraorder.araneomorphae,
    family: ScientificFamily.salticidae,
    subfamily: ScientificSubfamily.salticinae,
    tribe: null,
    genus: ScientificGenus.myrmarachne,
  ),
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...crimsonPearlPveTags,
    ...crimsonPearlPvpTags,
  ],
);

const crimsonPearlPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'Its just Super strong',
  ),
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: 'Its just Super strong',
  ),
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: 'Its just Super strong',
  ),
];

const crimsonPearlPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
    reason: '',
  )
];
