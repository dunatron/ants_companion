part of '../local_ants_list.dart';

const goldenCrystal = Ant(
  id: 'golden_crystal',
  name: 'Golden Crystal',
  scientificName: 'Leptogenys elongata',
  species: ScientificSpecies.leptogenysElongata,
  type: AntType.carrier,
  role: AntRole.ranged,
  tierTags: [
    ...goldenCrystalPveTags,
    ...goldenCrystalPvpTags,
  ],
  scientificClassification: AntScientificClassification(
    species: ScientificSpecies.leptogenysElongata,
    phylum: ScientificPhylum.arthropoda,
    subphylum: null, // missing
    classification: ScientificClassification.insecta,
    order: ScientificOrder.hymenoptera,
    infraorder: null,
    family: ScientificFamily.formicidae,
    subfamily: ScientificSubfamily.ponerinae,
    tribe: ScientificTribe.ponerini,
    genus: ScientificGenus.leptogenys,
  ),
  externalLinks: [
    AntExternalLink(
      type: AntExternalLinkType.wikipedia,
      subUrl: 'Leptogenys_elongata',
    ),
    AntExternalLink(
      type: AntExternalLinkType.antWiki,
      subUrl: 'Leptogenys_elongata',
    ),
  ],
  skills: [
    DominanceThree(),
    TertiaryAttack(percentage: 87),
    TertiaryDefense(percentage: 87),
    // AntSkillsData.dominanceThree()
    // CommandSkill(id: AntSkillId.dominanceThree),
    // CombatSkill(
    //   id: AntSkillId.battleFever,
    //   range: 5,
    // ),
    // CombatSkill(
    //   id: AntSkillId.battleFever,
    //   range: 5,
    // ),
  ],
);

const goldenCrystalPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
  ),
];

const goldenCrystalPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.middle,
  ),
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.carrier,
    rowPosition: RowPosition.back,
  ),
];
