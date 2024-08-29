part of '../local_ants_list.dart';

const proatta = Ant(
  id: AntId.proatta,
  name: 'Proatta',
  scientificName: 'Proatta butteli',
  species: ScientificSpecies.proattaButteli,
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...proattaPveTags,
    ...proattaPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.proattaButteli,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.crematogastrini,
    genus: ScientificGenus.proatta,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Proatta_butteli',
    ),
  ],
);

const proattaPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];

const proattaPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
  ),
];
