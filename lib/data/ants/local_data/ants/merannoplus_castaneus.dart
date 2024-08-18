part of '../local_ants_list.dart';

const merannoplusCastaneus = Ant(
  id: 'merannoplus_castaneus',
  name: 'Merannoplus Castaneus',
  scientificName: 'Merannoplus castaneus',
  species: ScientificSpecies.merannoplusCastaneus,
  type: AntType.guardian,
  role: AntRole.support,
  tierTags: [
    ...merannoplusCastaneusPveTags,
    ...merannoplusCastaneusPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.merannoplusCastaneus,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.crematogastrini,
    genus: ScientificGenus.meranoplus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Meranoplus_castaneus',
    ),
  ],
);

const merannoplusCastaneusPveTags = [];

const merannoplusCastaneusPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.gss,
    rowPosition: RowPosition.front,
  ),
];
