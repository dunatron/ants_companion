part of '../local_ants_list.dart';

const cyphomyrmexRimosus = Ant(
  id: 'cyphomyrmex_rimosus',
  name: 'Cyphomyrmex rimosus',
  description: '',
  scientificName: 'Cyphomyrmex rimosus',
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...cyphomyrmexRimosusPveTags,
    ...cyphomyrmexRimosusPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: 'Cyphomyrmex rimosus',
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

const cyphomyrmexRimosusPveTags = [];

const cyphomyrmexRimosusPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
    reason: '',
  ),
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: '',
  ),
];
