part of '../local_ants_list.dart';

const attaSexdens = Ant(
  id: AntId.attaSexdens,
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
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];
const attaSexdensPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.gss,
    rowPosition: RowPosition.front,
  ),
];
