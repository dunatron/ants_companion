part of '../local_ants_list.dart';

const bloodGiant = Ant(
  id: 'blood_giant',
  name: 'Blood Giant',
  scientificName: 'Nomamyrmex esenbeckii',
  species: Species.ant,
  description: 'Distributed in the American continent, from the southern '
      'United States to the Amazon rainforest.\n'
      'They are one of the most widely distributed army ants in the world.\n'
      'They are fierce and powerful and often attack other ant nests.',
  type: AntType.carrier,
  role: AntRole.support,
  tierTags: [
    ...bloodGiantPveTags,
    ...bloodGiantPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Nomamyrmex esenbeckii',
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
    rating: TierRating.f,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const bloodGiantPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: "While it can heal itself it lacks any other real PvP capabilities",
  ),
];
