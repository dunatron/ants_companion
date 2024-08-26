part of '../local_ants_list.dart';

const acidGeneral = Ant(
  id: AntId.acidGeneral,
  name: 'Acid General',
  scientificName: 'Mystrium oberthueri',
  species: ScientificSpecies.mystriumOberthueri,
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
  ),
];
const acidGeneralPvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
  ),
];
