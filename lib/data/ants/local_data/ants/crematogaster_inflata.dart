part of '../local_ants_list.dart';

const crematogasterInflata = Ant(
  id: 'crematogaster_inflata',
  name: 'Crematogaster Inflata',
  description: '',
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

const crematogasterInflataPveTags = [];

const crematogasterInflataPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.gss,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
];
