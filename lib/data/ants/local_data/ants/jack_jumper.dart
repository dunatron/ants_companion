part of '../local_ants_list.dart';

const jackJumper = Ant(
  id: AntId.jackJumper,
  name: 'Jack Jumper',
  scientificName: 'Myrmecia pilosula',
  species: ScientificSpecies.myrmeciaPilosula,
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...jackJumperPveTags,
    ...jackJumperPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.myrmeciaPilosula,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmeciinae,
    tribe: ScientificTribe.myrmeciini,
    genus: ScientificGenus.myrmecia,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Jack_jumper_ant',
    ),
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Myrmecia_pilosula',
    ),
  ],
);

const jackJumperPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
  ),
];

const jackJumperPvpTags = [
  AntPvpTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.back,
  ),
];
