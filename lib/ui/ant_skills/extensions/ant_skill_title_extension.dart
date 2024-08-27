import 'package:ants_companion/domain/ant_skills/models/ant_skill.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AntSkillTitleExtension on AntSkill {
  String skillTitle(AppLocalizations l10n) => switch (this) {
        AntSkillNotImplemented() => 'Name Unknown',
        DominanceThree() => l10n.dominance3SkillTitle,
        TertiaryDefense() => l10n.tertiaryDefenseSkillTitle,
        TertiaryAttack() => l10n.tertiaryAttackSkillTitle,
        AntSkillSeven() => l10n.antSkillSevenTitle,
        AcidGeneralWeaknessRaidSkill() =>
          l10n.acidGeneralWeaknessRaidSkillTitle,
        AcidGeneralHyperAttackSkill() => l10n.acidGeneralHyperAttackSkillTitle,
        AcidGeneralDeadlyStrikeSkill() =>
          l10n.acidGeneralDeadlyStrikeSkillTitle,
        GoldenCrystalBattleFeverSkill() =>
          l10n.goldenCrystalBattleFeverSkillTitle,
        ColonyLeaderSkill() => l10n.colonyLeaderSkillTitle,
        GoldenCrystalViolentlyPoisonousSkill() =>
          l10n.goldenCrystalViolentlyPoisonousSkillTitle,
        GoldenCrystalMasterHunterSkill() =>
          l10n.goldenCrystalMasterHunterSkillTitle,
        GoldenCrystalSwoopSkill() => l10n.goldenCrystalSwoopSkillTitle,
        _ => '',
      };
}
