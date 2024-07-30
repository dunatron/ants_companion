part of '../local_ants_list.dart';

const goldenCrystal = Ant(
  id: 'golden_crystal',
  name: 'Golden Crystal',
  scientificName: '',
  description: 'An OP carrier Ant',
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...goldenCrystalPveTags,
    ...goldenCrystalPvpTags,
  ],
  skills: [
    CombatSkill(
      name: 'Battle Fever',
      description:
          'Has a 80% chance to deal 380% damage to a random enemy squad '
          'and increases its squad attack by 65% for 2 rounds',
      range: 5,
      chance: 0.80,
      effects: [
        DamageSkillEffect(380),
      ],
    )
  ],
);

const goldenCrystalPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
    reason: 'The best option to run for the damage it provides',
  ),
];

const goldenCrystalPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    reason: 'Its just Super strong',
    rowPosition: RowPosition.back,
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    reason: 'Its just Super strong',
    rowPosition: RowPosition.middle,
  )
];
