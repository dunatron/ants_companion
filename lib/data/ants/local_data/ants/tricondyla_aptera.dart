part of '../local_ants_list.dart';

const tricondylaAptera = Ant(
  id: AntId.tricondylaAptera,
  name: 'Tricondyla Aptera',
  scientificName: 'Tricondyla Aptera',
  species: ScientificSpecies.tricondylaAptera,
  type: AntType.carrier,
  role: AntRole.melee,
  tierTags: [
    ...tricondylaApteraPveTags,
    ...tricondylaApteraPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.tricondylaAptera,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.coleoptera,
    infraorder: null,
    family: ScientificFamily.cicindelidae,
    subfamily: null,
    tribe: null,
    genus: ScientificGenus.tricondyla,
  ),
  externalLinks: [],
);

const tricondylaApteraPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];

const tricondylaApteraPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];
