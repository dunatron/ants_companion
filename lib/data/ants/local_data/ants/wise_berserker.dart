part of '../local_ants_list.dart';

const wiseBerserker = Ant(
  id: AntId.wiseBerserker,
  name: 'Wise Berserker',
  scientificName: 'Mystrium camillae',
  species: ScientificSpecies.mystriumCamillae,
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...wiseBerserkerPveTags,
    ...wiseBerserkerPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.mystriumCamillae,
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
  ),
];

const wiseBerserkerPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.gss,
    rowPosition: RowPosition.back,
  ),
];
