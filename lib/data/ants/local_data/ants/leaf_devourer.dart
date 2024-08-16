part of '../local_ants_list.dart';

const leafDevourer = Ant(
  id: 'leaf_devourer',
  name: 'Leaf Devourer',
  scientificName: 'Atta laevigata',
  species: ScientificSpecies.attaLaevigata,
  type: AntType.guardian,
  role: AntRole.ranged,
  tierTags: [
    ...leafDevourerPveTags,
    ...leafDevourerPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.attaLaevigata,
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
      type: AntExternalLinkType.antWiki,
      subUrl: 'Atta_laevigata',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Atta_laevigata',
    ),
  ],
);

const leafDevourerPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: 'One of the best guardian damage dealers',
  ),
];

const leafDevourerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
