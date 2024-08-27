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
