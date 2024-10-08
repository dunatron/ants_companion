part of '../local_ants_list.dart';

const blackKnight = Ant(
  id: AntId.blackKnight,
  name: 'Black Knight',
  scientificName: 'Cephalotes alfaroi',
  species: ScientificSpecies.cephalotesAlfaroi,
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

const blackKnightPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];
const blackKnightPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];
