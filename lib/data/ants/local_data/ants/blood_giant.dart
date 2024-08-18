part of '../local_ants_list.dart';

const bloodGiant = Ant(
  id: 'blood_giant',
  name: 'Blood Giant',
  scientificName: 'Nomamyrmex esenbeckii',
  species: ScientificSpecies.nomamyrmexEsenbeckii,
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...bloodGiantPveTags,
    ...bloodGiantPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.nomamyrmexEsenbeckii,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null,
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.dorylinae,
    tribe: null,
    genus: ScientificGenus.nomamyrmex,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Nomamyrmex_esenbeckii',
    ),
  ],
);

const bloodGiantPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];
const bloodGiantPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];
