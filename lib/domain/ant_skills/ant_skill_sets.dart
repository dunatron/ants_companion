import 'package:ants_companion/core/models/stat_type.dart';
import 'package:ants_companion/domain/ant_skills/models/ant_skill.dart';
import 'package:ants_companion/domain/ant_skills/models/ant_skill_set.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';

class AntSkillSets {
  static const acidGeneralSkillSet = AntSkillSet(
    skill2: AcidGeneralWeaknessRaidSkill(),
    skill3: TertiaryDefense(percentage10: 35, percentage20: 70),
    skill4: TertiaryAttack(percentage10: 35, percentage20: 70),
    skill5: AcidGeneralHyperAttackSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.attack,
      statPercent10: 35,
      statPercent20: 70,
    ),
    skill8: AcidGeneralDeadlyStrikeSkill(),
  );

  static const attaSexdensSkillSet = AntSkillSet(
    skill2: AttaSexdensDefensiveOffenceSkill(),
    skill3: TertiaryDefense(percentage10: 48, percentage20: 96),
    skill4: TertiaryAttack(percentage10: 48, percentage20: 96),
    skill5: AttaSexdensJawRaidSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.health,
      statPercent10: 20,
      statPercent20: 35,
    ),
    skill8: AttaSexdensThornAssaultSkill(),
  );

  static const bansheePandaSkillSet = AntSkillSet(
    skill2: BansheePandaVelvetShieldSkill(),
    skill3: TertiaryDefense(percentage10: 38, percentage20: 76),
    skill4: TertiaryAttack(percentage10: 38, percentage20: 76),
    skill5: BansheePandaAllureAttackSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.attack,
      statPercent10: 38,
      statPercent20: 66,
    ),
    skill8: BansheePandaWarfareLeadershipSkill(),
  );

  static const bansheeVelvetSkillSet = AntSkillSet(
    skill2: BansheeVelvetSuperToxinSkill(),
    skill3: TertiaryDefense(percentage10: 38, percentage20: 76),
    skill4: TertiaryAttack(percentage10: 38, percentage20: 76),
    skill5: BansheeVelvetVividColorSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.attack,
      statPercent10: 38,
      statPercent20: 66,
    ),
    skill8: BansheeVelvetWarfareLeadershipSkill(),
  );

  static const blackCancerSkillSet = AntSkillSet(
    skill2: BlackCancerFluidLeachSkill(),
    skill3: TertiaryDefense(percentage10: 38, percentage20: 76),
    skill4: TertiaryAttack(percentage10: 38, percentage20: 76),
    skill5: BlackCancerAdamantArmorSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.attack,
      statPercent10: 38,
      statPercent20: 66,
    ),
    skill8: BlackCancerWarfareLeadershipSkill(),
  );

  static const blackKnightSkillSet = AntSkillSet(
    skill2: BlackKnightVengefulCounterattackSkill(),
    skill3: TertiaryDefense(percentage10: 60, percentage20: 120),
    skill4: TertiaryAttack(percentage10: 60, percentage20: 120),
    skill5: BlackKnightBlackArmorMarsSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.health,
      statPercent10: 26,
      statPercent20: 45,
    ),
    skill8: BlackKnightDarkSpikeAssaultSkill(),
  );

  static const bloodGiantSkillSet = AntSkillSet(
    skill2: BloodGiantSupportTeammatesSkill(),
    skill3: TertiaryDefense(percentage10: 43, percentage20: 86),
    skill4: TertiaryAttack(percentage10: 43, percentage20: 86),
    skill5: BloodGiantImproveLineupSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.health,
      statPercent10: 18,
      statPercent20: 30,
    ),
    skill8: BloodGiantKillingStrikeSkill(),
  );

  static const brownRogueSkillSet = AntSkillSet(
    skill2: BrownRogueSurpriseStrikeSkill(),
    skill3: TertiaryDefense(percentage10: 35, percentage20: 65),
    skill4: TertiaryAttack(percentage10: 35, percentage20: 65),
    skill5: BrownRogueCheapShotSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.attack,
      statPercent10: 35,
      statPercent20: 60,
    ),
    skill8: BrownRogueFindWeaknessSkill(),
  );

  static const bulletAntSkillSet = AntSkillSet(
    skill2: BulletAntRampantAttackSkill(),
    skill3: TertiaryDefense(percentage10: 30, percentage20: 55),
    skill4: TertiaryAttack(percentage10: 30, percentage20: 55),
    skill5: BulletAntBlitzkriegSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.defense,
      statPercent10: 30,
      statPercent20: 50,
    ),
    skill8: BulletAntSuppressingAttackSkill(),
  );

  static const carpenterAntSkillSet = AntSkillSet(
    skill2: CarpenterAntSteadyPaceSkill(),
    skill3: TertiaryDefense(percentage10: 60, percentage20: 120),
    skill4: TertiaryAttack(percentage10: 60, percentage20: 120),
    skill5: CarpenterAntDistendedBellySkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.defense,
      statPercent10: 60,
      statPercent20: 100,
    ),
    skill8: CarpenterAntPowerfulGazeSkill(),
  );

  static const crematogasterInflataSkillSet = AntSkillSet(
    skill2: CrematogasterInflataWinningStrategySkill(),
    skill3: TertiaryDefense(percentage10: 60, percentage20: 120),
    skill4: TertiaryAttack(percentage10: 60, percentage20: 120),
    skill5: CrematogasterInflataMasterMimicSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.defense,
      statPercent10: 60,
      statPercent20: 100,
    ),
    skill8: CrematogasterInflataHealingMucusSkill(),
  );
// ToDo
  static const crimsonFraggerSkillSet = AntSkillSet();
// ToDo
  static const crimsonPearlSkillSet = AntSkillSet();
// ToDo
  static const cyphomyrmexRimosusSkillSet = AntSkillSet();
// ToDo
  static const darkGiantSkillSet = AntSkillSet();
// ToDo
  static const darkHerculesSkillSet = AntSkillSet();
// ToDo
  static const dolichoderusBispinosusSkillSet = AntSkillSet();
// ToDo
  static const driverAntSkillSet = AntSkillSet();
// ToDo
  static const duskyLurkerSkillSet = AntSkillSet();
// ToDo
  static const emeraldJewelAntSkillSet = AntSkillSet();
// ToDo
  static const enigmaticTaylorSkillSet = AntSkillSet();
// ToDo
  static const formicaClaraSkillSet = AntSkillSet();
// ToDo
  static const ghostAntSkillSet = AntSkillSet();
// ToDo
  static const giantToothSkillSet = AntSkillSet();
// ToDo
  static const goldArmorSkillSet = AntSkillSet();

  static const goldenCrystalSkillSet = AntSkillSet(
    skill1: DominanceThree(),
    skill2: GoldenCrystalBattleFeverSkill(),
    skill3: TertiaryDefense(percentage10: 43, percentage20: 86),
    skill4: TertiaryAttack(percentage10: 43, percentage20: 86),
    skill5: GoldenCrystalViolentlyPoisonousSkill(),
    skill6: ColonyLeaderSkill(),
    skill7: GoldenCrystalMasterHunterSkill(),
    skill8: GoldenCrystalSwoopSkill(),
  );
// ToDo
  static const goldenSpinySkillSet = AntSkillSet();
// ToDo
  static const goldenSugarSkillSet = AntSkillSet();
// ToDo
  static const goldenVenomSkillSet = AntSkillSet();
// ToDo
  static const gracefulTwigAntSkillSet = AntSkillSet();
// ToDo
  static const graveDiggerSkillSet = AntSkillSet();
// ToDo
  static const guardGeneralSkillSet = AntSkillSet();
// ToDo
  static const hairyPantherSkillSet = AntSkillSet();
// ToDo
  static const jackJumperSkillSet = AntSkillSet();
// ToDo
  static const jetBlackSkillSet = AntSkillSet();
// ToDo
  static const lathySnifferSkillSet = AntSkillSet();
// ToDo
  static const leafDevourerSkillSet = AntSkillSet();
// ToDo
  static const leptoglossusPhyllopusSkillSet = AntSkillSet();
// ToDo
  static const leptomyrmexBurwelliSkillSet = AntSkillSet();
// ToDo
  static const merannoplusBicolorSkillSet = AntSkillSet();
// ToDo
  static const merannoplusCastaneusSkillSet = AntSkillSet();
// ToDo
  static const mimicryMasterSkillSet = AntSkillSet();
// ToDo
  static const myrmarachneFormicariaSkillSet = AntSkillSet();
// ToDo
  static const myrmecotypusRettenmeyeriSkillSet = AntSkillSet();
// ToDo
  static const newWorldGeneralSkillSet = AntSkillSet();
// ToDo
  static const nimbleTreeAntSkillSet = AntSkillSet();
// ToDo
  static const pheidoleNietneriSkillSet = AntSkillSet();
// ToDo
  static const predatorSkillSet = AntSkillSet();
// ToDo
  static const proattaSkillSet = AntSkillSet();
// ToDo
  static const procryptocerusAdlerziSkillSet = AntSkillSet();
// ToDo
  static const reapMasterSkillSet = AntSkillSet();
// ToDo
  static const rockBanditSkillSet = AntSkillSet();
// ToDo
  static const rubySlenderSkillSet = AntSkillSet();
// ToDo
  static const saharanSilverAntSkillSet = AntSkillSet();
// ToDo
  static const shieldWardenSkillSet = AntSkillSet();
// ToDo
  static const shikareeMasterSkillSet = AntSkillSet();
// ToDo
  static const slimArchedSkillSet = AntSkillSet();
// ToDo
  static const strumigenysEggersiSkillSet = AntSkillSet();
// ToDo
  static const weaverAntSkillSet = AntSkillSet();
// ToDo
  static const whiteVelvetSkillSet = AntSkillSet();
// ToDo
  static const wiseBerserkerSkillSet = AntSkillSet();
}
