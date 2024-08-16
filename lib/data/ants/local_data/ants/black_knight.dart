part of '../local_ants_list.dart';

const blackKnight = Ant(
  id: 'black_knight',
  name: 'Black Knight',
  scientificName: 'Cephalotes alfaroi',
  species: Species.ant,
  description: 'It is a species of ant distributed in Costa Rica and Panama, '
      'where it resides in the humid environments of tropical forests.\n'
      'This ant falls into the medium to large size category, with worker ants '
      'generally measuring around 10mm in length and soldier ants capable of '
      'reaching lengths up to 13mm.\n'
      'There is relatively little research on this species to date.',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...blackKnightPveTags,
    ...blackKnightPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.cephalotesAlfaroi,
    phylum: ScientificPhylum.arthropoda,
    subphylum: ScientificSubphylum.chelicerata,
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: ScientificInfraorder.araneomorphae,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.attini,
    genus: ScientificGenus.cephalotes,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Cephalotes_alfaroi',
    ),
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Cephalotes_alfaroi',
    ),
  ],
);

const blackKnightPveTags = [];
const blackKnightPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: "The best guardian ant in the front row",
  ),
];
