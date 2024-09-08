import 'package:ants_companion/core/models/stat_type.dart';
import 'package:ants_companion/domain/ant_skills/models/ant_skill_target_type.dart';
import 'package:ants_companion/domain/ant_skills/models/ant_skill_type.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:equatable/equatable.dart';

sealed class AntSkill extends Equatable {
  const AntSkill({
    required this.type,
    required this.targetType,
    this.effectiveRange,
  });

  final AntSkillType type;
  final AntSkillTargetType targetType;
  final int? effectiveRange;

  @override
  List<Object?> get props => [];
}

class AntSkillNotImplemented extends AntSkill {
  const AntSkillNotImplemented({
    super.type = AntSkillType.commandSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class DominanceThree extends AntSkill {
  const DominanceThree({
    super.type = AntSkillType.commandSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class TertiaryDefense extends AntSkill {
  const TertiaryDefense({
    required this.percentage10,
    required this.percentage20,
    super.type = AntSkillType.commandSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });

  final double percentage10;
  final double percentage20;
}

class TertiaryAttack extends AntSkill {
  const TertiaryAttack({
    required this.percentage10,
    required this.percentage20,
    super.type = AntSkillType.commandSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });

  final double percentage10;
  final double percentage20;
}

class AntSkillSeven extends AntSkill {
  const AntSkillSeven({
    required this.antType,
    required this.statType,
    required this.statPercent10,
    required this.statPercent20,
    super.type = AntSkillType.commandSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });

  final StatType statType;
  final int statPercent10;
  final int statPercent20;
  final AntType antType;
}

class AntSkillSevenMarchSpeed extends AntSkill {
  const AntSkillSevenMarchSpeed({
    required this.antType,
    required this.statType,
    required this.statPercent10,
    required this.statPercent20,
    required this.speedPercent10,
    required this.speedPercent20,
    super.type = AntSkillType.commandSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });

  final StatType statType;
  final int statPercent10;
  final int statPercent20;
  final AntType antType;

  final int speedPercent10;
  final int speedPercent20;
}

class ColonyLeaderSkill extends AntSkill {
  const ColonyLeaderSkill({
    super.type = AntSkillType.commandSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

// Acid General
class AcidGeneralWeaknessRaidSkill extends AntSkill {
  const AcidGeneralWeaknessRaidSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class AcidGeneralHyperAttackSkill extends AntSkill {
  const AcidGeneralHyperAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class AcidGeneralDeadlyStrikeSkill extends AntSkill {
  const AcidGeneralDeadlyStrikeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// Atta Sexdens
class AttaSexdensDefensiveOffenceSkill extends AntSkill {
  const AttaSexdensDefensiveOffenceSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
    super.effectiveRange = 1,
  });
}

class AttaSexdensJawRaidSkill extends AntSkill {
  const AttaSexdensJawRaidSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class AttaSexdensThornAssaultSkill extends AntSkill {
  const AttaSexdensThornAssaultSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// Banshee Panda
class BansheePandaVelvetShieldSkill extends AntSkill {
  const BansheePandaVelvetShieldSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

class BansheePandaAllureAttackSkill extends AntSkill {
  const BansheePandaAllureAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class BansheePandaWarfareLeadershipSkill extends AntSkill {
  const BansheePandaWarfareLeadershipSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
  });
}

// Banshee Velvet
class BansheeVelvetSuperToxinSkill extends AntSkill {
  const BansheeVelvetSuperToxinSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class BansheeVelvetVividColorSkill extends AntSkill {
  const BansheeVelvetVividColorSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class BansheeVelvetWarfareLeadershipSkill extends AntSkill {
  const BansheeVelvetWarfareLeadershipSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
  });
}

// Black Cancer
class BlackCancerFluidLeachSkill extends AntSkill {
  const BlackCancerFluidLeachSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class BlackCancerAdamantArmorSkill extends AntSkill {
  const BlackCancerAdamantArmorSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class BlackCancerWarfareLeadershipSkill extends AntSkill {
  const BlackCancerWarfareLeadershipSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
  });
}

// Black Knight

class BlackKnightVengefulCounterattackSkill extends AntSkill {
  const BlackKnightVengefulCounterattackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class BlackKnightBlackArmorMarsSkill extends AntSkill {
  const BlackKnightBlackArmorMarsSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoOtherFriendlyWithinRange,
    super.effectiveRange = 5,
  });
}

class BlackKnightDarkSpikeAssaultSkill extends AntSkill {
  const BlackKnightDarkSpikeAssaultSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 5,
  });
}

// Blood Giant
class BloodGiantSupportTeammatesSkill extends AntSkill {
  const BloodGiantSupportTeammatesSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class BloodGiantImproveLineupSkill extends AntSkill {
  const BloodGiantImproveLineupSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class BloodGiantKillingStrikeSkill extends AntSkill {
  const BloodGiantKillingStrikeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.enemyFrontline,
    super.effectiveRange = 2,
  });
}

// Brown Rogue
class BrownRogueSurpriseStrikeSkill extends AntSkill {
  const BrownRogueSurpriseStrikeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.enemySquadInLastRow,
    super.effectiveRange = 5,
  });
}

class BrownRogueCheapShotSkill extends AntSkill {
  const BrownRogueCheapShotSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.enemySquadInLastRow,
    super.effectiveRange = 5,
  });
}

class BrownRogueFindWeaknessSkill extends AntSkill {
  const BrownRogueFindWeaknessSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

// Bullet Ant
class BulletAntRampantAttackSkill extends AntSkill {
  const BulletAntRampantAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class BulletAntBlitzkriegSkill extends AntSkill {
  const BulletAntBlitzkriegSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class BulletAntSuppressingAttackSkill extends AntSkill {
  const BulletAntSuppressingAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

// Carpenter Ant
class CarpenterAntSteadyPaceSkill extends AntSkill {
  const CarpenterAntSteadyPaceSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 5,
  });
}

class CarpenterAntDistendedBellySkill extends AntSkill {
  const CarpenterAntDistendedBellySkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class CarpenterAntPowerfulGazeSkill extends AntSkill {
  const CarpenterAntPowerfulGazeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// Crematogaster Inflata
class CrematogasterInflataWinningStrategySkill extends AntSkill {
  const CrematogasterInflataWinningStrategySkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 2,
  });
}

class CrematogasterInflataMasterMimicSkill extends AntSkill {
  const CrematogasterInflataMasterMimicSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
    super.effectiveRange = 5,
  });
}

class CrematogasterInflataHealingMucusSkill extends AntSkill {
  const CrematogasterInflataHealingMucusSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
    super.effectiveRange = 2,
  });
}

// Crimson Fragger
class CrimsonFraggerPiercingAttackSkill extends AntSkill {
  const CrimsonFraggerPiercingAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class CrimsonFraggerDoubleHitSkill extends AntSkill {
  const CrimsonFraggerDoubleHitSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class CrimsonFraggerAdequatePreparationSkill extends AntSkill {
  const CrimsonFraggerAdequatePreparationSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// CrimsonPearl
class CrimsonPearlBrutalCombosSkill extends AntSkill {
  const CrimsonPearlBrutalCombosSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class CrimsonPearlParasiticStingerSkill extends AntSkill {
  const CrimsonPearlParasiticStingerSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class CrimsonPearlVariableMimicsSkill extends AntSkill {
  const CrimsonPearlVariableMimicsSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
    super.effectiveRange = 5,
  });
}

// CyphomyrmexRimosus
class CyphomyrmexRimosusPowerfulHeadbuttSkill extends AntSkill {
  const CyphomyrmexRimosusPowerfulHeadbuttSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class CyphomyrmexRimosusGermPropagationSkill extends AntSkill {
  const CyphomyrmexRimosusGermPropagationSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class CyphomyrmexRimosusBeneficialBacteriaSkill extends AntSkill {
  const CyphomyrmexRimosusBeneficialBacteriaSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

// DarkGiant
class DarkGiantCounterStrikeSkill extends AntSkill {
  const DarkGiantCounterStrikeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomFriendlyWithinRange,
  });
}

class DarkGiantMenaceSkill extends AntSkill {
  const DarkGiantMenaceSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class DarkGiantWarfareLeadershipSkill extends AntSkill {
  const DarkGiantWarfareLeadershipSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 5,
  });
}

// DarkHercules
class DarkHerculesFatalBiteSkill extends AntSkill {
  const DarkHerculesFatalBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class DarkHerculesStrongGuardSkill extends AntSkill {
  const DarkHerculesStrongGuardSkill({
    super.type = AntSkillType.statusSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class DarkHerculesBurningCourageSkill extends AntSkill {
  const DarkHerculesBurningCourageSkill({
    super.type = AntSkillType.statusSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

// DolichoderusBispinosus
class DolichoderusBispinosusImmediateSupportSkill extends AntSkill {
  const DolichoderusBispinosusImmediateSupportSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 2,
  });
}

class DolichoderusBispinosusAgileAttackSkill extends AntSkill {
  const DolichoderusBispinosusAgileAttackSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 2,
  });
}

class DolichoderusBispinosusExtraDamageSkill extends AntSkill {
  const DolichoderusBispinosusExtraDamageSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.ourFrontline,
    super.effectiveRange = 5,
  });
}

// DriverAnt
class DriverAntBlitzkriegSkill extends AntSkill {
  const DriverAntBlitzkriegSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class DriverAntSharpTearingSkill extends AntSkill {
  const DriverAntSharpTearingSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class DriverAntWeaknessStrikeSkill extends AntSkill {
  const DriverAntWeaknessStrikeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

// DuskyLurker
class DuskyLurkerSneakAttackSkill extends AntSkill {
  const DuskyLurkerSneakAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class DuskyLurkerApplyingTacticsSkill extends AntSkill {
  const DuskyLurkerApplyingTacticsSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class DuskyLurkerTrueLeaderSkill extends AntSkill {
  const DuskyLurkerTrueLeaderSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 4,
  });
}

// EmeraldJewelAnt

class EmeraldJewelAntStealthAssassinateSkill extends AntSkill {
  const EmeraldJewelAntStealthAssassinateSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class EmeraldJewelAntCruelParasitismSkill extends AntSkill {
  const EmeraldJewelAntCruelParasitismSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.enemySquadInLastRow,
    super.effectiveRange = 5,
  });
}

class EmeraldJewelAntParasiticDevourSkill extends AntSkill {
  const EmeraldJewelAntParasiticDevourSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// EnigmaticTaylor
class EnigmaticTaylorSneakAttackSkill extends AntSkill {
  const EnigmaticTaylorSneakAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class EnigmaticTaylorFootRendSkill extends AntSkill {
  const EnigmaticTaylorFootRendSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class EnigmaticTaylorWarfareLeadershipSkill extends AntSkill {
  const EnigmaticTaylorWarfareLeadershipSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
  });
}

// FormicaClara
class FormicaClaraSleekChitinSkill extends AntSkill {
  const FormicaClaraSleekChitinSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 3,
  });
}

class FormicaClaraAgileDashSkill extends AntSkill {
  const FormicaClaraAgileDashSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class FormicaClaraDazzlingSwashSkill extends AntSkill {
  const FormicaClaraDazzlingSwashSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 5,
  });
}

// GhostAnt
class GhostAntClearHeadSkill extends AntSkill {
  const GhostAntClearHeadSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 2,
  });
}

class GhostAntGhostStrikeSkill extends AntSkill {
  const GhostAntGhostStrikeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.enemySquadInLastRow,
    super.effectiveRange = 5,
  });
}

class GhostAntDeliberateAttackSkill extends AntSkill {
  const GhostAntDeliberateAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// GiantTooth
class GiantToothWeaknessStrikeSkill extends AntSkill {
  const GiantToothWeaknessStrikeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class GiantToothDisablingAttackSkill extends AntSkill {
  const GiantToothDisablingAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class GiantToothBigBiteSkill extends AntSkill {
  const GiantToothBigBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

// GoldArmor
class GoldArmorBigBiteSkill extends AntSkill {
  const GoldArmorBigBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class GoldArmorRampantAttackSkill extends AntSkill {
  const GoldArmorRampantAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class GoldArmorBlitzkriegSkill extends AntSkill {
  const GoldArmorBlitzkriegSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// Golden Crystal
class GoldenCrystalBattleFeverSkill extends AntSkill {
  const GoldenCrystalBattleFeverSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });

  final int chance = 60;
  final int damage10 = 280;
  final int damage20 = 380;
  final int attackIncrease10 = 50;
  final int attackIncrease20 = 65;
}

class GoldenCrystalViolentlyPoisonousSkill extends AntSkill {
  const GoldenCrystalViolentlyPoisonousSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class GoldenCrystalMasterHunterSkill extends AntSkill {
  const GoldenCrystalMasterHunterSkill({
    super.type = AntSkillType.commandSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

class GoldenCrystalSwoopSkill extends AntSkill {
  const GoldenCrystalSwoopSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// GoldenSpiny
class GoldenSpinyBigBiteSkill extends AntSkill {
  const GoldenSpinyBigBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class GoldenSpinyPiercingAttackSkill extends AntSkill {
  const GoldenSpinyPiercingAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class GoldenSpinyAmbushSkill extends AntSkill {
  const GoldenSpinyAmbushSkill({
    super.type = AntSkillType.statusSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

// GoldenSugar
class GoldenSugarBigBiteSkill extends AntSkill {
  const GoldenSugarBigBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class GoldenSugarPiercingStrikeSkill extends AntSkill {
  const GoldenSugarPiercingStrikeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class GoldenSugarComboStrikesSkill extends AntSkill {
  const GoldenSugarComboStrikesSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// GoldenVenom
class GoldenVenomRampantAttackSkill extends AntSkill {
  const GoldenVenomRampantAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class GoldenVenomParalysisToxinSkill extends AntSkill {
  const GoldenVenomParalysisToxinSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class GoldenVenomBladePincerSkill extends AntSkill {
  const GoldenVenomBladePincerSkill({
    super.type = AntSkillType.statusSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

// GracefulTwigAnt
class GracefulTwigAntAcidicSpraySkill extends AntSkill {
  const GracefulTwigAntAcidicSpraySkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class GracefulTwigAntHuntingInstinctSkill extends AntSkill {
  const GracefulTwigAntHuntingInstinctSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class GracefulTwigAntUnyieldingDeterminationSkill extends AntSkill {
  const GracefulTwigAntUnyieldingDeterminationSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 2,
  });
}

// GraveDigger
class GraveDiggerToxicSpraySkill extends AntSkill {
  const GraveDiggerToxicSpraySkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class GraveDiggerNervePoisonSkill extends AntSkill {
  const GraveDiggerNervePoisonSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class GraveDiggerWarfareLeadershipSkill extends AntSkill {
  const GraveDiggerWarfareLeadershipSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

// GuardGeneral
class GuardGeneralLightningBlitzkriegSkill extends AntSkill {
  const GuardGeneralLightningBlitzkriegSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class GuardGeneralAgileMovementSkill extends AntSkill {
  const GuardGeneralAgileMovementSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 2,
  });
}

class GuardGeneralDisablingCombosSkill extends AntSkill {
  const GuardGeneralDisablingCombosSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

// HairyPanther

class HairyPantherRampageStrikeSkill extends AntSkill {
  const HairyPantherRampageStrikeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.enemySquadWithHighestPower,
    super.effectiveRange = 5,
  });
}

class HairyPantherFurySwipeSkill extends AntSkill {
  const HairyPantherFurySwipeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class HairyPantherFierceNatureSkill extends AntSkill {
  const HairyPantherFierceNatureSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// JackJumper
class JackJumperRampantAttackSkill extends AntSkill {
  const JackJumperRampantAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class JackJumperJumpingAttackSkill extends AntSkill {
  const JackJumperJumpingAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class JackJumperBlitzkriegSkill extends AntSkill {
  const JackJumperBlitzkriegSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// JetBlack
class JetBlackCounterAttackSkill extends AntSkill {
  const JetBlackCounterAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class JetBlackSelfAdjustingSkill extends AntSkill {
  const JetBlackSelfAdjustingSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class JetBlackCarvedSkinSkill extends AntSkill {
  const JetBlackCarvedSkinSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

// LathySniffer
class LathySnifferDoublePowerSkill extends AntSkill {
  const LathySnifferDoublePowerSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class LathySnifferTailAssaultSkill extends AntSkill {
  const LathySnifferTailAssaultSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class LathySnifferFrequentlyStrengthenSkill extends AntSkill {
  const LathySnifferFrequentlyStrengthenSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

// LeafDevourer
class LeafDevourerKillingDoubleHitSkill extends AntSkill {
  const LeafDevourerKillingDoubleHitSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class LeafDevourerBurningCourageSkill extends AntSkill {
  const LeafDevourerBurningCourageSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

class LeafDevourerWarfareLeadershipSkill extends AntSkill {
  const LeafDevourerWarfareLeadershipSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// LeptoglossusPhyllopus
class LeptoglossusPhyllopusAmberBarrierSkill extends AntSkill {
  const LeptoglossusPhyllopusAmberBarrierSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class LeptoglossusPhyllopusLongAntennaeSkill extends AntSkill {
  const LeptoglossusPhyllopusLongAntennaeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquadAndOneFriendlyWithinRange,
    super.effectiveRange = 2,
  });
}

class LeptoglossusPhyllopusVenomousStingSkill extends AntSkill {
  const LeptoglossusPhyllopusVenomousStingSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// LeptomyrmexBurwelli
class LeptomyrmexBurwelliFatalAssaultSkill extends AntSkill {
  const LeptomyrmexBurwelliFatalAssaultSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class LeptomyrmexBurwelliAdaptiveAssaultSkill extends AntSkill {
  const LeptomyrmexBurwelliAdaptiveAssaultSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class LeptomyrmexBurwelliSweepingStrengthSkill extends AntSkill {
  const LeptomyrmexBurwelliSweepingStrengthSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// MerannoplusBicolor
class MerannoplusBicolorPlushBackArmorSkill extends AntSkill {
  const MerannoplusBicolorPlushBackArmorSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class MerannoplusBicolorToxicThornSkill extends AntSkill {
  const MerannoplusBicolorToxicThornSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class MerannoplusBicolorBufferBarrierSkill extends AntSkill {
  const MerannoplusBicolorBufferBarrierSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 2,
  });
}

// MerannoplusCastaneus
class MerannoplusCastaneusScarletFurySkill extends AntSkill {
  const MerannoplusCastaneusScarletFurySkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInCombat,
    super.effectiveRange = 5,
  });
}

class MerannoplusCastaneusBloodyShieldSkill extends AntSkill {
  const MerannoplusCastaneusBloodyShieldSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomFriendlyWithinRange,
    super.effectiveRange = 5,
  });
}

class MerannoplusCastaneusHealingWithLoveSkill extends AntSkill {
  const MerannoplusCastaneusHealingWithLoveSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 2,
  });
}

// MimicryMaster
class MimicryMasterMouthPieceAttackSkill extends AntSkill {
  const MimicryMasterMouthPieceAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class MimicryMasterSuppressingAttackSkill extends AntSkill {
  const MimicryMasterSuppressingAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class MimicryMasterSwipeSkill extends AntSkill {
  const MimicryMasterSwipeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// MyrmarachneFormicaria
class MyrmarachneFormicariaPrettyShellSkill extends AntSkill {
  const MyrmarachneFormicariaPrettyShellSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class MyrmarachneFormicariaDisguiseStealSkill extends AntSkill {
  const MyrmarachneFormicariaDisguiseStealSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.enemyFrontline,
    super.effectiveRange = 2,
  });
}

class MyrmarachneFormicariaJumpingImpactSkill extends AntSkill {
  const MyrmarachneFormicariaJumpingImpactSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// MyrmecotypusRettenmeyeri
class MyrmecotypusRettenmeyeriNimblePostureSkill extends AntSkill {
  const MyrmecotypusRettenmeyeriNimblePostureSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class MyrmecotypusRettenmeyeriPowerOfAwakeningSkill extends AntSkill {
  const MyrmecotypusRettenmeyeriPowerOfAwakeningSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.enemySquadInLastRow,
    super.effectiveRange = 3,
  });
}

class MyrmecotypusRettenmeyeriHealthFieldSkill extends AntSkill {
  const MyrmecotypusRettenmeyeriHealthFieldSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

//  NewWorldGeneral
class NewWorldGeneralRageBiteSkill extends AntSkill {
  const NewWorldGeneralRageBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class NewWorldGeneralDeterrenceSkill extends AntSkill {
  const NewWorldGeneralDeterrenceSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class NewWorldGeneralBlitzkriegSkill extends AntSkill {
  const NewWorldGeneralBlitzkriegSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

// NimbleTreeAnt
class NimbleTreeAntAgilitySkill extends AntSkill {
  const NimbleTreeAntAgilitySkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

class NimbleTreeAntPiercingChaseSkill extends AntSkill {
  const NimbleTreeAntPiercingChaseSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.enemyFrontline,
    super.effectiveRange = 4,
  });
}

class NimbleTreeAntDeftFootworkSkill extends AntSkill {
  const NimbleTreeAntDeftFootworkSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 2,
  });
}

// PheidoleNietneri
class PheidoleNietneriBounceBackSkill extends AntSkill {
  const PheidoleNietneriBounceBackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class PheidoleNietneriGladiatorSkillsSkill extends AntSkill {
  const PheidoleNietneriGladiatorSkillsSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class PheidoleNietneriStrongShellSkill extends AntSkill {
  const PheidoleNietneriStrongShellSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

// Predator
class PredatorBloodyBattleSkill extends AntSkill {
  const PredatorBloodyBattleSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class PredatorMenaceSkill extends AntSkill {
  const PredatorMenaceSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class PredatorFlexibleRobberySkill extends AntSkill {
  const PredatorFlexibleRobberySkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 2,
  });
}

// Proatta
class ProattaKnockBackSkill extends AntSkill {
  const ProattaKnockBackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class ProattaDisablingCombosSkill extends AntSkill {
  const ProattaDisablingCombosSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class ProattaHorrorHunterSkill extends AntSkill {
  const ProattaHorrorHunterSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// ProcryptocerusAdlerzi
class ProcryptocerusAdlerziComprehensiveDefenseSkill extends AntSkill {
  const ProcryptocerusAdlerziComprehensiveDefenseSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
    super.effectiveRange = 1,
  });
}

class ProcryptocerusAdlerziSavageChargeSkill extends AntSkill {
  const ProcryptocerusAdlerziSavageChargeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class ProcryptocerusAdlerziBigBiteSkill extends AntSkill {
  const ProcryptocerusAdlerziBigBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

// ReapMaster
class ReapMasterBigBiteSkill extends AntSkill {
  const ReapMasterBigBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class ReapMasterThrillOfTheHuntSkill extends AntSkill {
  const ReapMasterThrillOfTheHuntSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class ReapMasterGrievousBiteSkill extends AntSkill {
  const ReapMasterGrievousBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// RockBandit
class RockBanditRageRushSkill extends AntSkill {
  const RockBanditRageRushSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class RockBanditHuggerBiteSkill extends AntSkill {
  const RockBanditHuggerBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class RockBanditWarfareLeadershipSkill extends AntSkill {
  const RockBanditWarfareLeadershipSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
  });
}

// RubySlender
class RubySlenderRevengeSkill extends AntSkill {
  const RubySlenderRevengeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class RubySlenderSelfAdjustingSkill extends AntSkill {
  const RubySlenderSelfAdjustingSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

class RubySlenderWarfareLeadershipSkill extends AntSkill {
  const RubySlenderWarfareLeadershipSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

// SaharanSilverAnt
class SaharanSilverAntRapidMomentumSkill extends AntSkill {
  const SaharanSilverAntRapidMomentumSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 6,
  });
}

class SaharanSilverAntSilverGleamSkill extends AntSkill {
  const SaharanSilverAntSilverGleamSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 6,
  });
}

class SaharanSilverAntPrecisionLongshotSkill extends AntSkill {
  const SaharanSilverAntPrecisionLongshotSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}

// ShieldWarden
class ShieldWardenHealingPowerSkill extends AntSkill {
  const ShieldWardenHealingPowerSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 2,
  });
}

class ShieldWardenFightToDeathSkill extends AntSkill {
  const ShieldWardenFightToDeathSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class ShieldWardenProtectionPostureSkill extends AntSkill {
  const ShieldWardenProtectionPostureSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

// ShikareeMaster
class ShikareeMasterInfiniteDeadHuntSkill extends AntSkill {
  const ShikareeMasterInfiniteDeadHuntSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

class ShikareeMasterRampantAttackSkill extends AntSkill {
  const ShikareeMasterRampantAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class ShikareeMasterAudaciousChargeSkill extends AntSkill {
  const ShikareeMasterAudaciousChargeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.threeRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

// SlimArched
class SlimArchedBigBiteSkill extends AntSkill {
  const SlimArchedBigBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

class SlimArchedBlitzkriegSkill extends AntSkill {
  const SlimArchedBlitzkriegSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 3,
  });
}

class SlimArchedSuppressingAttackSkill extends AntSkill {
  const SlimArchedSuppressingAttackSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomEnemyWithinRange,
    super.effectiveRange = 2,
  });
}

// StrumigenysEggersi
class StrumigenysEggersiStablePostureSkill extends AntSkill {
  const StrumigenysEggersiStablePostureSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 2,
  });
}

class StrumigenysEggersiDeceptiveFormSkill extends AntSkill {
  const StrumigenysEggersiDeceptiveFormSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
    super.effectiveRange = 1,
  });
}

class StrumigenysEggersiKeenIntuitionSkill extends AntSkill {
  const StrumigenysEggersiKeenIntuitionSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 2,
  });
}

// TricondylaAptera
class TricondylaApteraLongLegsSkill extends AntSkill {
  const TricondylaApteraLongLegsSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.itsSquad,
    super.effectiveRange = 5,
  });
}

class TricondylaApteraBattlefieldAidSkill extends AntSkill {
  const TricondylaApteraBattlefieldAidSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 2,
  });
}

class TricondylaApteraPhantomFormSkill extends AntSkill {
  const TricondylaApteraPhantomFormSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
    super.effectiveRange = 2,
  });
}

// WeaverAnt
class WeaverAntAcidAssaultSkill extends AntSkill {
  const WeaverAntAcidAssaultSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 2,
  });
}

class WeaverAntFieryThrashSkill extends AntSkill {
  const WeaverAntFieryThrashSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 2,
  });
}

class WeaverAntTacticalCounterAttackSkill extends AntSkill {
  const WeaverAntTacticalCounterAttackSkill({
    super.type = AntSkillType.preCombatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 4,
  });
}

//  WhiteVelvet
class WhiteVelvetMasterOfDisguiseSkill extends AntSkill {
  const WhiteVelvetMasterOfDisguiseSkill({
    super.type = AntSkillType.commandSkill,
    super.targetType = AntSkillTargetType.allSquadsInTroop,
  });
}

class WhiteVelvetHealingPowerSkill extends AntSkill {
  const WhiteVelvetHealingPowerSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.oneRandomFriendlyWithinRange,
    super.effectiveRange = 3,
  });
}

class WhiteVelvetWhiteGuardianSkill extends AntSkill {
  const WhiteVelvetWhiteGuardianSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomFriendlyWithinRange,
    super.effectiveRange = 3,
  });
}

// WiseBerserker
class WiseBerserkerCruelStrikeSkill extends AntSkill {
  const WiseBerserkerCruelStrikeSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.enemyFrontline,
    super.effectiveRange = 5,
  });
}

class WiseBerserkerContinuousBiteSkill extends AntSkill {
  const WiseBerserkerContinuousBiteSkill({
    super.type = AntSkillType.combatSkill,
    super.targetType = AntSkillTargetType.twoRandomEnemyWithinRange,
    super.effectiveRange = 5,
  });
}

class WiseBerserkerBattleMemorySkill extends AntSkill {
  const WiseBerserkerBattleMemorySkill({
    super.type = AntSkillType.statusSkill,
    super.targetType = AntSkillTargetType.itsSquad,
  });
}
