import 'package:ants_companion/domain/ant_skills/models/ant_skill.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AntSkillDescriptionExtension on AntSkill {
  String skillDescriptionLevel10(AppLocalizations l10n) => switch (this) {
        AntSkillNotImplemented() => 'Description Unknown',
        DominanceThree() => l10n.dominance3SkillDesc10,
        TertiaryDefense(percentage10: final percentage) =>
          l10n.tertiaryDefenseSkillDescription(percentage),
        TertiaryAttack(percentage10: final percentage) =>
          l10n.tertiaryAttackSkillDescription(percentage),
        AntSkillSeven(
          antType: final antType,
          statType: final statType,
          statPercent10: final statPercent,
        ) =>
          l10n.antSkillSevenDescription(
              antType.name, statType.name, statPercent),
        ColonyLeaderSkill() =>
          'In Its sqaud, {type} Ant attack and defense +15%',
        GoldenCrystalBattleFeverSkill() =>
          l10n.goldenCrystalBattleFeverSkillDescription10,
        GoldenCrystalViolentlyPoisonousSkill() =>
          l10n.goldenCrystalViolentlyPoisonousSkillDescription10,
        GoldenCrystalMasterHunterSkill() =>
          l10n.goldenCrystalMasterHunterSkillDescription10,
        GoldenCrystalSwoopSkill() => l10n.goldenCrystalSwoopSkillDescription10,
        AcidGeneralWeaknessRaidSkill() =>
          l10n.acidGeneralWeaknessRaidSkillDescription10,
        AcidGeneralHyperAttackSkill() =>
          l10n.acidGeneralHyperAttackSkillDescription10,
        AcidGeneralDeadlyStrikeSkill() =>
          l10n.acidGeneralDeadlyStrikeSkillDescription10,
        _ => '',
      };

  String skillDescriptionLevel20(AppLocalizations l10n) => switch (this) {
        AntSkillNotImplemented() => 'Description Unknown',
        DominanceThree() => l10n.dominance3SkillDesc20,
        TertiaryDefense(percentage20: final percentage) =>
          l10n.tertiaryDefenseSkillDescription(percentage),
        TertiaryAttack(percentage20: final percentage) =>
          'In its squad ant attack $percentage%',
        AntSkillSeven(
          antType: final antType,
          statType: final statType,
          statPercent20: final statPercent
        ) =>
          l10n.antSkillSevenDescription(
              antType.name, statType.name, statPercent),
        GoldenCrystalBattleFeverSkill() =>
          l10n.goldenCrystalBattleFeverSkillDescription20,
        ColonyLeaderSkill() => 'ToDo',
        GoldenCrystalViolentlyPoisonousSkill() =>
          l10n.goldenCrystalViolentlyPoisonousSkillDescription20,
        GoldenCrystalMasterHunterSkill() =>
          l10n.goldenCrystalMasterHunterSkillDescription20,
        GoldenCrystalSwoopSkill() => l10n.goldenCrystalSwoopSkillDescription20,
        AcidGeneralWeaknessRaidSkill() =>
          l10n.acidGeneralWeaknessRaidSkillDescription20,
        AcidGeneralHyperAttackSkill() =>
          l10n.acidGeneralHyperAttackSkillDescription20,
        AcidGeneralDeadlyStrikeSkill() =>
          l10n.acidGeneralDeadlyStrikeSkillDescription20,
        _ => '',
      };
}
