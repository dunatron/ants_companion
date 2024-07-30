part of '../local_ants_list.dart';

const jackJumper = Ant(
  id: 'jack_jumper',
  name: 'Jack Jumper',
  scientificName: '',
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
