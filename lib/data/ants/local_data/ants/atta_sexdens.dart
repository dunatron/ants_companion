part of '../local_ants_list.dart';

const attaSexdens = Ant(
  id: 'atta_sexdens',
  name: 'Atta Sexdens',
  scientificName: 'Atta Sexdens',
  species: ScientificSpecies.attaSexdens,
  type: AntType.guardian,
  role: AntRole.ranged,
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.attaSexdens,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.attini,
    genus: ScientificGenus.atta,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Atta_sexdens',
    ),
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Atta_sexdens',
    ),
  ],
  tierTags: [
    ...attaSexdensPveTags,
    ...attaSexdensPvpTags,
  ],
);

const attaSexdensPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian ants for PVE',
  ),
];
const attaSexdensPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: 'One of the best guardian ants for PVP',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian ants for PVP',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: 'One of the best guardian ants for PVP',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.gss,
    rowPosition: RowPosition.front,
    reason: 'The best guardian Ant for GSS',
  ),
];
