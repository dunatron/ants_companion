import 'package:ants_companion/core/models/stat_type.dart';
import 'package:ants_companion/domain/ant_skills/models/ant_skill.dart';
import 'package:ants_companion/domain/ant_skills/models/ant_skill_set.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';

class AntSkillSets {
  // ToDo
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
    skill8: AcidGeneralDeadlyStrikeSkill(),
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
// ToDo
  static const blackCancerSkillSet = AntSkillSet();
// ToDo
  static const blackKnightSkillSet = AntSkillSet();
// ToDo
  static const bloodGiantSkillSet = AntSkillSet();
// ToDo
  static const brownRogueSkillSet = AntSkillSet();
// ToDo
  static const bulletAntSkillSet = AntSkillSet();
// ToDo
  static const carpenterAntSkillSet = AntSkillSet();
// ToDo
  static const crematogasterInflataSkillSet = AntSkillSet();
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
