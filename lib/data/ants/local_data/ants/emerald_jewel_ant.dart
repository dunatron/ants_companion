part of '../local_ants_list.dart';

const emeraldJewelAnt = Ant(
  id: 'emerald_jewel_ant',
  name: 'Emerald Jewel Ant',
  description: '',
  scientificName: 'Ampulex compressa',
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...emeraldJewelAntPveTags,
    ...emeraldJewelAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: '',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.ampulicidae,
    subfamily: null,
    tribe: null,
    genus: ScientificGenus.ampulex,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Emerald_cockroach_wasp',
    ),
  ],
);

const emeraldJewelAntPveTags = [];
const emeraldJewelAntPvpTags = [];
