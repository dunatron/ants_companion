part of '../local_ants_list.dart';

const procryptocerusAdlerzi = Ant(
  id: AntId.procryptocerusAdlerzi,
  name: 'Procryptocerus Adlerzi',
  scientificName: 'Procryptocerus Adlerzi',
  species: ScientificSpecies.procryptocerusAdlerzi,
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...procryptocerusAdlerziPveTags,
    ...procryptocerusAdlerziPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.procryptocerusAdlerzi,
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
    rating: TierRating.d,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
];

const procryptocerusAdlerziPvpTags = [
  AntPvpTierTag(
    rating: TierRating.sPlus,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.gss,
    rowPosition: RowPosition.front,
  ),
];
