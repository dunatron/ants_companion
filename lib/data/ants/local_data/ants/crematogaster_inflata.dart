part of '../local_ants_list.dart';

const crematogasterInflata = Ant(
  id: AntId.crematogasterInflata,
  name: 'Crematogaster Inflata',
  species: ScientificSpecies.crematogasterInflata,
  scientificName: 'Crematogaster inflata',
  type: AntType.shooter,
  role: AntRole.support,
  tierTags: [
    ...crematogasterInflataPveTags,
    ...crematogasterInflataPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.crematogasterInflata,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.crematogastrini,
    genus: ScientificGenus.crematogaster,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Crematogaster_inflata',
    ),
  ],
);

const crematogasterInflataPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
  ),
];

const crematogasterInflataPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.gss,
    rowPosition: RowPosition.middle,
  ),
];
