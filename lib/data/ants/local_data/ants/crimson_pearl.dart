part of '../local_ants_list.dart';

const crimsonPearl = Ant(
  id: AntId.crimsonPearl,
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
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
  ),
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
  ),
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];

const crimsonPearlPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
  )
];
