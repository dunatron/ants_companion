part of '../local_ants_list.dart';

const lathySniffer = Ant(
  id: AntId.lathySniffer,
  name: 'Lathy Sniffer',
  scientificName: 'Tetraponera rufonigra',
  species: ScientificSpecies.tetraponeraRufonigra,
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...lathySnifferPveTags,
    ...lathySnifferPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.tetraponeraRufonigra,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.pseudomyrmecinae,
    tribe: null,
    genus: ScientificGenus.tetraponera,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Tetraponera_rufonigra',
    ),
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Tetraponera_rufonigra',
    ),
  ],
);

const lathySnifferPveTags = [
  AntPveTierTag(
    rating: TierRating.sPlus,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
  ),
];

const lathySnifferPvpTags = [
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
