part of '../local_ants_list.dart';

const wiseBerserker = Ant(
  id: 'wise_berserker',
  name: 'Wise Berserker',
  description: '',
  scientificName: 'Mystrium camillae',
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...wiseBerserkerPveTags,
    ...wiseBerserkerPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Mystrium camillae',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.amblyoponinae,
    tribe: ScientificTribe.amblyoponini,
    genus: ScientificGenus.mystrium,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Mystrium_camillae',
    ),
  ],
);

const wiseBerserkerPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'Does a decent amount of damage',
  ),
];

const wiseBerserkerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.f,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'A high damage dealing ant. '
        'Loves ants that allow it to auto attack again'
        'Abilities that buff auto attacks are really great too',
  ),
];
