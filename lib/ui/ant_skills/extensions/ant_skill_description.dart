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
        AntSkillSevenMarchSpeed() => 'TODO',
        AttaSexdensDefensiveOffenceSkill() =>
          l10n.attaSexdensDefensiveOffenceSkillDescription10,
        AttaSexdensJawRaidSkill() => l10n.attaSexdensJawRaidSkillDescription10,
        AttaSexdensThornAssaultSkill() =>
          l10n.attaSexdensThornAssaultSkillDescription10,
        BansheePandaVelvetShieldSkill() =>
          l10n.bansheePandaVelvetShieldSkillDescription10,
        BansheePandaAllureAttackSkill() =>
          l10n.bansheePandaAllureAttackSkillDescription10,
        BansheePandaWarfareLeadershipSkill() =>
          l10n.bansheePandaWarfareLeadershipSkillDescription10,
        BansheeVelvetSuperToxinSkill() =>
          l10n.bansheeVelvetSuperToxinSkillDescription10,
        BansheeVelvetVividColorSkill() =>
          l10n.bansheeVelvetVividColorSkillDescription10,
        BansheeVelvetWarfareLeadershipSkill() =>
          l10n.bansheeVelvetWarfareLeadershipSkillDescription10,
        BlackCancerFluidLeachSkill() =>
          l10n.blackCancerFluidLeachSkillDescription10,
        BlackCancerAdamantArmorSkill() =>
          l10n.blackCancerAdamantArmorSkillDescription10,
        BlackCancerWarfareLeadershipSkill() =>
          l10n.blackCancerWarfareLeadershipSkillDescription10,
        BlackKnightVengefulCounterattackSkill() =>
          l10n.blackKnightVengefulCounterattackSkillDescription10,
        BlackKnightBlackArmorMarsSkill() =>
          l10n.blackKnightBlackArmorMarsSkillDescription10,
        BlackKnightDarkSpikeAssaultSkill() =>
          l10n.blackKnightDarkSpikeAssaultSkillDescription10,
        BloodGiantSupportTeammatesSkill() =>
          l10n.bloodGiantSupportTeammatesSkillDescription10,
        BloodGiantImproveLineupSkill() =>
          l10n.bloodGiantImproveLineupSkillDescription10,
        BloodGiantKillingStrikeSkill() =>
          l10n.bloodGiantKillingStrikeSkillDescription10,
        BrownRogueSurpriseStrikeSkill() =>
          l10n.brownRogueSurpriseStrikeSkillDescription10,
        BrownRogueCheapShotSkill() =>
          l10n.brownRogueCheapShotSkillDescription10,
        BrownRogueFindWeaknessSkill() =>
          l10n.brownRogueFindWeaknessSkillDescription10,
        BulletAntRampantAttackSkill() =>
          l10n.bulletAntRampantAttackSkillDescription10,
        BulletAntBlitzkriegSkill() =>
          l10n.bulletAntBlitzkriegSkillDescription10,
        BulletAntSuppressingAttackSkill() =>
          l10n.bulletAntSuppressingAttackSkillDescription10,
        CarpenterAntSteadyPaceSkill() =>
          l10n.carpenterAntSteadyPaceSkillDescription10,
        CarpenterAntDistendedBellySkill() =>
          l10n.carpenterAntDistendedBellySkillDescription10,
        CarpenterAntPowerfulGazeSkill() =>
          l10n.carpenterAntPowerfulGazeSkillDescription10,
        CrematogasterInflataWinningStrategySkill() =>
          l10n.crematogasterInflataWinningStrategySkillDescription10,
        CrematogasterInflataMasterMimicSkill() =>
          l10n.crematogasterInflataMasterMimicSkillDescription10,
        CrematogasterInflataHealingMucusSkill() =>
          l10n.crematogasterInflataHealingMucusSkillDescription10,
        CrimsonFraggerPiercingAttackSkill() =>
          l10n.crimsonFraggerPiercingAttackSkillDescription10,
        CrimsonFraggerDoubleHitSkill() =>
          l10n.crimsonFraggerDoubleHitSkillDescription10,
        CrimsonFraggerAdequatePreparationSkill() =>
          l10n.crimsonFraggerAdequatePreparationSkillDescription10,
        CrimsonPearlBrutalCombosSkill() =>
          l10n.crimsonPearlBrutalCombosSkillDescription10,
        CrimsonPearlParasiticStingerSkill() =>
          l10n.crimsonPearlParasiticStingerSkillDescription10,
        CrimsonPearlVariableMimicsSkill() =>
          l10n.crimsonPearlVariableMimicsSkillDescription10,
        CyphomyrmexRimosusPowerfulHeadbuttSkill() => throw UnimplementedError(),
        CyphomyrmexRimosusGermPropagationSkill() => throw UnimplementedError(),
        CyphomyrmexRimosusBeneficialBacteriaSkill() =>
          throw UnimplementedError(),
        DarkGiantCounterStrikeSkill() => throw UnimplementedError(),
        DarkGiantMenaceSkill() => throw UnimplementedError(),
        DarkGiantWarfareLeadershipSkill() => throw UnimplementedError(),
        DarkHerculesFatalBiteSkill() => throw UnimplementedError(),
        DarkHerculesStrongGuardSkill() => throw UnimplementedError(),
        DarkHerculesBurningCourageSkill() => throw UnimplementedError(),
        DolichoderusBispinosusImmediateSupportSkill() =>
          throw UnimplementedError(),
        DolichoderusBispinosusAgileAttackSkill() => throw UnimplementedError(),
        DolichoderusBispinosusExtraDamageSkill() => throw UnimplementedError(),
        DriverAntBlitzkriegSkill() => throw UnimplementedError(),
        DriverAntSharpTearingSkill() => throw UnimplementedError(),
        DriverAntWeaknessStrikeSkill() => throw UnimplementedError(),
        DuskyLurkerSneakAttackSkill() => throw UnimplementedError(),
        DuskyLurkerApplyingTacticsSkill() => throw UnimplementedError(),
        DuskyLurkerTrueLeaderSkill() => throw UnimplementedError(),
        EmeraldJewelAntStealthAssassinateSkill() => throw UnimplementedError(),
        EmeraldJewelAntCruelParasitismSkill() => throw UnimplementedError(),
        EmeraldJewelAntParasiticDevourSkill() => throw UnimplementedError(),
        EnigmaticTaylorSneakAttackSkill() => throw UnimplementedError(),
        EnigmaticTaylorFootRendSkill() => throw UnimplementedError(),
        EnigmaticTaylorWarfareLeadershipSkill() => throw UnimplementedError(),
        FormicaClaraSleekChitinSkill() => throw UnimplementedError(),
        FormicaClaraAgileDashSkill() => throw UnimplementedError(),
        FormicaClaraDazzlingSwashSkill() => throw UnimplementedError(),
        GhostAntClearHeadSkill() => throw UnimplementedError(),
        GhostAntGhostStrikeSkill() => throw UnimplementedError(),
        GhostAntDeliberateAttackSkill() => throw UnimplementedError(),
        GiantToothWeaknessStrikeSkill() => throw UnimplementedError(),
        GiantToothDisablingAttackSkill() => throw UnimplementedError(),
        GiantToothBigBiteSkill() => throw UnimplementedError(),
        GoldArmorBigBiteSkill() => throw UnimplementedError(),
        GoldArmorRampantAttackSkill() => throw UnimplementedError(),
        GoldArmorBlitzkriegSkill() => throw UnimplementedError(),
        GoldenSpinyBigBiteSkill() => throw UnimplementedError(),
        GoldenSpinyPiercingAttackSkill() => throw UnimplementedError(),
        GoldenSpinyAmbushSkill() => throw UnimplementedError(),
        GoldenSugarBigBiteSkill() => throw UnimplementedError(),
        GoldenSugarPiercingStrikeSkill() => throw UnimplementedError(),
        GoldenSugarComboStrikesSkill() => throw UnimplementedError(),
        GoldenVenomRampantAttackSkill() => throw UnimplementedError(),
        GoldenVenomParalysisToxinSkill() => throw UnimplementedError(),
        GoldenVenomBladePincerSkill() => throw UnimplementedError(),
        GracefulTwigAntAcidicSpraySkill() => throw UnimplementedError(),
        GracefulTwigAntHuntingInstinctSkill() => throw UnimplementedError(),
        GracefulTwigAntUnyieldingDeterminationSkill() =>
          throw UnimplementedError(),
        GraveDiggerToxicSpraySkill() => throw UnimplementedError(),
        GraveDiggerNervePoisonSkill() => throw UnimplementedError(),
        GraveDiggerWarfareLeadershipSkill() => throw UnimplementedError(),
        GuardGeneralLightningBlitzkriegSkill() => throw UnimplementedError(),
        GuardGeneralAgileMovementSkill() => throw UnimplementedError(),
        GuardGeneralDisablingCombosSkill() => throw UnimplementedError(),
        HairyPantherRampageStrikeSkill() => throw UnimplementedError(),
        HairyPantherFurySwipeSkill() => throw UnimplementedError(),
        HairyPantherFierceNatureSkill() => throw UnimplementedError(),
        JackJumperRampantAttackSkill() => throw UnimplementedError(),
        JackJumperJumpingAttackSkill() => throw UnimplementedError(),
        JackJumperBlitzkriegSkill() => throw UnimplementedError(),
        JetBlackCounterAttackSkill() => throw UnimplementedError(),
        JetBlackSelfAdjustingSkill() => throw UnimplementedError(),
        JetBlackCarvedSkinSkill() => throw UnimplementedError(),
        LathySnifferDoublePowerSkill() => throw UnimplementedError(),
        LathySnifferTailAssaultSkill() => throw UnimplementedError(),
        LathySnifferFrequentlyStrengthenSkill() => throw UnimplementedError(),
        LeafDevourerKillingDoubleHitSkill() => throw UnimplementedError(),
        LeafDevourerBurningCourageSkill() => throw UnimplementedError(),
        LeafDevourerWarfareLeadershipSkill() => throw UnimplementedError(),
        LeptoglossusPhyllopusAmberBarrierSkill() => throw UnimplementedError(),
        LeptoglossusPhyllopusLongAntennaeSkill() => throw UnimplementedError(),
        LeptoglossusPhyllopusVenomousStingSkill() => throw UnimplementedError(),
        LeptomyrmexBurwelliFatalAssaultSkill() => throw UnimplementedError(),
        LeptomyrmexBurwelliAdaptiveAssaultSkill() => throw UnimplementedError(),
        LeptomyrmexBurwelliSweepingStrengthSkill() =>
          throw UnimplementedError(),
        MerannoplusBicolorPlushBackArmorSkill() => throw UnimplementedError(),
        MerannoplusBicolorToxicThornSkill() => throw UnimplementedError(),
        MerannoplusBicolorBufferBarrierSkill() => throw UnimplementedError(),
        MerannoplusCastaneusScarletFurySkill() => throw UnimplementedError(),
        MerannoplusCastaneusBloodyShieldSkill() => throw UnimplementedError(),
        MerannoplusCastaneusHealingWithLoveSkill() =>
          throw UnimplementedError(),
        MimicryMasterMouthPieceAttackSkill() => throw UnimplementedError(),
        MimicryMasterSupressingAttackSkill() => throw UnimplementedError(),
        MimicryMasterSwipeSkill() => throw UnimplementedError(),
        MyrmarachneFormicariaPrettyShellSkill() => throw UnimplementedError(),
        MyrmarachneFormicariaDisguiseStealSkill() => throw UnimplementedError(),
        MyrmarachneFormicariaJumpingImpactSkill() => throw UnimplementedError(),
        MyrmecotypusRettenmeyeriNimblePostureSkill() =>
          throw UnimplementedError(),
        MyrmecotypusRettenmeyeriPowerOfAwakeningSkill() =>
          throw UnimplementedError(),
        MyrmecotypusRettenmeyeriHealthFieldSkill() =>
          throw UnimplementedError(),
        NewWorldGeneralRageBiteSkill() => throw UnimplementedError(),
        NewWorldGeneralDeterenceSkill() => throw UnimplementedError(),
        NewWorldGeneralBlitzkriegSkill() => throw UnimplementedError(),
        NimbleTreeAntAgilitySkill() => throw UnimplementedError(),
        NimbleTreeAntPiercingChaseSkill() => throw UnimplementedError(),
        NimbleTreeAntDeftFootworkSkill() => throw UnimplementedError(),
        PheidoleNietneriBounceBackSkill() => throw UnimplementedError(),
        PheidoleNietneriGladiatorSkillsSkill() => throw UnimplementedError(),
        PheidoleNietneriStrongShellSkill() => throw UnimplementedError(),
        PredatorBloodyBattleSkill() => throw UnimplementedError(),
        PredatorMenaceSkill() => throw UnimplementedError(),
        PredatorFlexibleRobberySkill() => throw UnimplementedError(),
        ProattaKnockbackSkill() => throw UnimplementedError(),
        ProattaDisablingCombosSkill() => throw UnimplementedError(),
        ProattaHorrorHunterSkill() => throw UnimplementedError(),
        ProcryptocerusAdlerziComprehensiveDefenseSkill() =>
          throw UnimplementedError(),
        ProcryptocerusAdlerziSavageChargeSkill() => throw UnimplementedError(),
        ProcryptocerusAdlerziBigBiteSkill() => throw UnimplementedError(),
        ReapMasterBigBiteSkill() => throw UnimplementedError(),
        ReapMasterThrillOfTheHuntSkill() => throw UnimplementedError(),
        ReapMasterGrievousBiteSkill() => throw UnimplementedError(),
        RockBanditRageRushSkill() => throw UnimplementedError(),
        RockBanditHuggerBiteSkill() => throw UnimplementedError(),
        RockBanditWarfareLeadershipSkill() => throw UnimplementedError(),
        RubySlenderRevengeSkill() => throw UnimplementedError(),
        RubySlenderSelfAdjustingSkill() => throw UnimplementedError(),
        RubySlenderWarfareLeadershipSkill() => throw UnimplementedError(),
        SaharanSilverAntRapidMomentumSkill() => throw UnimplementedError(),
        SaharanSilverAntSilverGleamSkill() => throw UnimplementedError(),
        SaharanSilverAntPrecisionLongshotSkill() => throw UnimplementedError(),
        ShieldWardenHealingPowerSkill() => throw UnimplementedError(),
        ShieldWardenFightToDeathSkill() => throw UnimplementedError(),
        ShieldWardenProtectionPostureSkill() => throw UnimplementedError(),
        ShikareeMasterInfiniteDeadhuntSkill() => throw UnimplementedError(),
        ShikareeMasterRampantAttackSkill() => throw UnimplementedError(),
        ShikareeMasterAudaciousChargeSkill() => throw UnimplementedError(),
        SlimArchedBigBiteSkill() => throw UnimplementedError(),
        SlimArchedBlitzkriegSkill() => throw UnimplementedError(),
        SlimArchedSuppressingAttackSkill() => throw UnimplementedError(),
        StrumigenysEggersiStablePostureSkill() => throw UnimplementedError(),
        StrumigenysEggersiDeceptiveFormSkill() => throw UnimplementedError(),
        StrumigenysEggersiKeenIntuitionSkill() => throw UnimplementedError(),
        WeaverAntAcidAssaultSkill() => throw UnimplementedError(),
        WeaverAntFieryThrashSkill() => throw UnimplementedError(),
        WeaverAntTacticalCounterAttackSkill() => throw UnimplementedError(),
        WhiteVelvetMasterOfDisguiseSkill() => throw UnimplementedError(),
        WhiteVelvetHealingPowerSkill() => throw UnimplementedError(),
        WhiteVelvetWhiteGuardianSkill() => throw UnimplementedError(),
        WiseBerserkerCruelStrikeSkill() => throw UnimplementedError(),
        WiseBerserkerContinuousBiteSkill() => throw UnimplementedError(),
        WiseBerserkerBattleMemorySkill() => throw UnimplementedError(),
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
