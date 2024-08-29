part of '../local_ants_list.dart';

const blackCancer = Ant(
  id: AntId.blackCancer,
  name: 'Black Cancer',
  scientificName: 'Aphantochilus rogersi',
  species: ScientificSpecies.aphantochilusRogersi,
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...blackCancerPveTags,
    ...blackCancerPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.aphantochilusRogersi,
    phylum: ScientificPhylum.arthropoda,
    subphylum: ScientificSubphylum.chelicerata,
    classification: ScientificClassification.arachnida,
    order: ScientificOrder.araneae,
    infraorder: ScientificInfraorder.araneomorphae,
    family: ScientificFamily.thomisidae,
    subfamily: null,
    tribe: null,
    genus: ScientificGenus.aphantochilus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Aphantochilus',
    ),
  ],
);

const blackCancerPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];
const blackCancerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];
