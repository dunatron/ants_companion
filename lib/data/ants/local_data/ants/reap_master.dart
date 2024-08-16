part of '../local_ants_list.dart';

const reapMaster = Ant(
  id: 'reap_master',
  name: 'Reap Master',
  description: '',
  scientificName: 'Thaumatomyrmex Atrox',
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
    reason: 'Can deal a good amount of high damage when its not sleeping',
  ),
];

const reapMasterPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.gss,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
