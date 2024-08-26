part of '../local_ants_list.dart';

const merannoplusBicolor = Ant(
  id: AntId.merannoplusBicolor,
  name: 'Merannoplus Bicolor',
  scientificName: 'Merannoplus bicolor',
  species: ScientificSpecies.merannoplusBicolor,
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...merannoplusBicolorPveTags,
    ...merannoplusBicolorPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.merannoplusBicolor,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: null,
    genus: ScientificGenus.meranoplus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Meranoplus_bicolor',
    ),
  ],
);

const merannoplusBicolorPveTags = [];

const merannoplusBicolorPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.gss,
    rowPosition: RowPosition.front,
  ),
];
