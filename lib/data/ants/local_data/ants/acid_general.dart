part of '../local_ants_list.dart';

const acidGeneral = Ant(
  id: 'acid_general',
  name: 'Acid General',
  scientificName: 'Mystrium oberthueri',
  description: '',
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.mystriumOberthueri,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: ScientificInfraorder.araneomorphae,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.amblyoponinae,
    tribe: ScientificTribe.amblyoponini,
    genus: ScientificGenus.mystrium,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Mystrium_oberthueri',
    ),
  ],
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...acidGeneralPveTags,
    ...acidGeneralPvpTags,
  ],
);

const acidGeneralPveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'There are much better ants to use for shooter pve',
  ),
];
const acidGeneralPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'There are better shooter ants for pvp',
  ),
];
