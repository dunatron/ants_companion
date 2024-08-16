part of '../local_ants_list.dart';

const myrmecotypusRettenmeyeri = Ant(
  id: 'myrmecotypus_rettenmeyeri',
  name: 'Myrmecotypus Rettenmeyeri',
  scientificName: 'Myrmecotypus Rettenmeyeri',
  species: ScientificSpecies.myrmecotypusRettenmeyeri,
  type: AntType.shooter,
  role: AntRole.melee,
  tierTags: [
    ...myrmecotypusRettenmeyeriPveTags,
    ...myrmecotypusRettenmeyeriPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.myrmecotypusRettenmeyeri,
    phylum: ScientificPhylum.arthropoda,
    subphylum: ScientificSubphylum.chelicerata, // missing
    classification: ScientificClassification.arachnida,
    order: ScientificOrder.araneae,
    infraorder: ScientificInfraorder.araneomorphae,
    family: ScientificFamily.corinnidae,
    subfamily: null,
    tribe: null,
    genus: ScientificGenus.myrmecotypus,
  ),
  externalLinks: [
    // No Specific link
    // But its species is found listed on the genus below
    // Myrmecotypus
    // AntExternalLink(
    //   type: AntExternalLinkType.wikipedia,
    //   subUrl: '',
    // ),
  ],
);

const myrmecotypusRettenmeyeriPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const myrmecotypusRettenmeyeriPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: '',
  ),
];
