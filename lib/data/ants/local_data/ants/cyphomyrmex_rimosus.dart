part of '../local_ants_list.dart';

const cyphomyrmexRimosus = Ant(
  id: AntId.cyphomyrmexRimosus,
  name: 'Cyphomyrmex rimosus',
  species: ScientificSpecies.cyphomyrmexRimosus,
  scientificName: 'Cyphomyrmex rimosus',
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...cyphomyrmexRimosusPveTags,
    ...cyphomyrmexRimosusPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.cyphomyrmexRimosus,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.attini,
    genus: ScientificGenus.cyphomyrmex,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Cyphomyrmex_rimosus',
    ),
  ],
);

const cyphomyrmexRimosusPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    rowPosition: RowPosition.back,
    antType: AntType.carrier,
  )
];

const cyphomyrmexRimosusPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
  ),
];
