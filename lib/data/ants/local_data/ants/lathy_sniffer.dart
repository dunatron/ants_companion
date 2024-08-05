part of '../local_ants_list.dart';

const lathySniffer = Ant(
  id: 'lathy_sniffer',
  name: 'Lathy Sniffer',
  description: '',
  scientificName: 'Tetraponera rufonigra',
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...lathySnifferPveTags,
    ...lathySnifferPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Tetraponera rufonigra',
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
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'Best shooter option for PVE',
  ),
];

const lathySnifferPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'Simply the best shooter ants in the game. '
        'Deals extremely high ramping damage',
  ),
];
