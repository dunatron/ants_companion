part of '../local_ants_list.dart';

const reapMaster = Ant(
  id: AntId.reapMaster,
  name: 'Reap Master',
  scientificName: 'Thaumatomyrmex Atrox',
  species: ScientificSpecies.thaumatomyrmexAtrox,
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...reapMasterPveTags,
    ...reapMasterPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.thaumatomyrmexAtrox,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.ponerinae,
    tribe: ScientificTribe.ponerini,
    genus: ScientificGenus.thaumatomyrmex,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Thaumatomyrmex_atrox',
    ),
  ],
);

const reapMasterPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.middle,
  ),
];

const reapMasterPvpTags = [
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
