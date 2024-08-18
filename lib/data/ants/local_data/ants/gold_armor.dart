part of '../local_ants_list.dart';

const goldArmor = Ant(
  id: 'gold_armor',
  name: 'Gold Armor',
  scientificName: 'Daceton armigerum',
  species: ScientificSpecies.dacetonArmigerum,
  type: AntType.universal,
  role: AntRole.melee,
  tierTags: [
    ...goldArmorPveTags,
    ...goldArmorPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.dacetonArmigerum,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.myrmicinae,
    tribe: ScientificTribe.attini,
    genus: ScientificGenus.daceton,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Daceton_armigerum',
    ),
  ],
);

const goldArmorPveTags = [
  AntPveTierTag(
    rating: TierRating.a,
    rowPosition: RowPosition.front,
    antType: AntType.guardian,
  ),
  AntPveTierTag(
    rating: TierRating.a,
    rowPosition: RowPosition.front,
    antType: AntType.shooter,
  ),
  AntPveTierTag(
    rating: TierRating.a,
    rowPosition: RowPosition.front,
    antType: AntType.carrier,
  )
];

const goldArmorPvpTags = [
  AntPvpTierTag(
    rating: TierRating.c,
    antType: AntType.universal,
    rowPosition: RowPosition.middle,
  )
];
