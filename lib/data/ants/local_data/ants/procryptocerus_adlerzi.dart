part of '../local_ants_list.dart';

const procryptocerusAdlerzi = Ant(
  id: 'procryptocerus_adlerzi',
  name: 'Procryptocerus Adlerzi',
  description: '',
  scientificName: 'Procryptocerus Adlerzi',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...procryptocerusAdlerziPveTags,
    ...procryptocerusAdlerziPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: '',
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.attini,
    genus: ScientificGenus.procryptocerus,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Procryptocerus_adlerzi',
    ),
  ],
);

const procryptocerusAdlerziPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const procryptocerusAdlerziPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason:
        'One of the meatiest of all ants. Of course this is an S tier front liner for PVP',
  ),
];
