part of '../local_ants_list.dart';

const jackJumper = Ant(
  id: 'jack_jumper',
  name: 'Jack Jumper',
  scientificName: 'Myrmecia pilosula',
  description: 'Reliable damage ant, good for pve',
  type: AntType.universal,
  role: AntRole.ranged,
  tierTags: [
    ...jackJumperPveTags,
    AntPvpTierTag(
      rating: TierRating.a,
      antType: AntType.universal,
      reason: 'It does an ok amount of damage in the back row',
      rowPosition: RowPosition.back,
    ),
  ],
  scientificClassification: AntScientificClassification(
    species: 'Myrmecia pilosula',
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
    reason: 'It does an ok amount of damage consistently while its '
        'awakening buffs the attack of all ants when jack jumper releases '
        'a combat skill',
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: 'It does an ok amount of damage consistently while its '
        'awakening buffs the attack of all ants when jack jumper releases '
        'a combat skill',
  ),
  AntPveTierTag(
    rating: TierRating.a,
    antType: AntType.carrier,
    rowPosition: RowPosition.front,
    reason: 'It does an ok amount of damage consistently while its '
        'awakening buffs the attack of all ants when jack jumper releases '
        'a combat skill',
  ),
];
