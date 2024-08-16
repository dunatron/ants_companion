part of '../local_ants_list.dart';

const bulletAnt = Ant(
  id: 'bullet_ant',
  name: 'Bullet Ant',
  scientificName: 'Paraponera clavata',
  description: 'Found in most of the central and northern South America, it '
      'inhabits the jungle and has a body length of at least 20mm\n. '
      "It's thought to be the most aggressive ant species. They have "
      'rapid biting mandibles which will sting and inject erosive venom. '
      'Its not an exaggeration that once stung, you will feel like you were '
      'hit by a bullet. Many local primitive tribes still retain the ritual '
      'of being stung by Bullet Ants to prove their courage. As they are '
      'omnivorous, they hunt insects and collect honeydew. They usually have '
      'a fixed territory and do not eave that piece of land.',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...bulletAntPveTags,
    ...bulletAntPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.paraponeraClavata,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null,
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.paraponerinae,
    tribe: null,
    genus: ScientificGenus.paraponera,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Paraponera_clavata',
    ),
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Paraponera_clavata',
    ),
  ],
);

const bulletAntPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];
const bulletAntPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
];
