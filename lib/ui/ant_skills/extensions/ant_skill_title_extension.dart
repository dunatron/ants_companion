import 'package:ants_companion/domain/ant_skills/models/ant_skill.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AntSkillTitleExtension on AntSkill {
  String skillTitle(AppLocalizations l10n) => switch (this) {
        AntSkillNotImplemented() => 'Name Unknown',
        DominanceThree() => l10n.dominance3SkillTitle,
        TertiaryDefense() => l10n.tertiaryDefenseSkillTitle,
        TertiaryAttack() => l10n.tertiaryAttackSkillTitle,
        AntSkillSeven() => l10n.antSkillSevenTitle(l10n),
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
        AntSkillSevenMarchSpeed() => throw UnimplementedError(),
        AttaSexdensDefensiveOffenceSkill() =>
          l10n.attaSexdensDefensiveOffenceSkillTitle,
        AttaSexdensJawRaidSkill() => l10n.attaSexdensJawRaidSkillTitle,
        AttaSexdensThornAssaultSkill() =>
          l10n.attaSexdensThornAssaultSkillTitle,
        BansheePandaVelvetShieldSkill() =>
          l10n.bansheePandaVelvetShieldSkillTitle,
        BansheePandaAllureAttackSkill() =>
          l10n.bansheePandaAllureAttackSkillTitle,
        BansheePandaWarfareLeadershipSkill() =>
          l10n.bansheePandaWarfareLeadershipSkillTitle,
        BansheeVelvetSuperToxinSkill() =>
          l10n.bansheeVelvetSuperToxinSkillTitle,
        BansheeVelvetVividColorSkill() =>
          l10n.bansheeVelvetVividColorSkillTitle,
        BansheeVelvetWarfareLeadershipSkill() =>
          l10n.bansheeVelvetWarfareLeadershipSkillTitle,
        BlackCancerFluidLeachSkill() => l10n.blackCancerFluidLeachSkillTitle,
        BlackCancerAdamantArmorSkill() =>
          l10n.blackCancerAdamantArmorSkillTitle,
        BlackCancerWarfareLeadershipSkill() =>
          l10n.blackCancerWarfareLeadershipSkillTitle,
        BlackKnightVengefulCounterattackSkill() =>
          l10n.blackKnightVengefulCounterattackSkillTitle,
        BlackKnightBlackArmorMarsSkill() =>
          l10n.blackKnightBlackArmorMarsSkillTitle,
        BlackKnightDarkSpikeAssaultSkill() =>
          l10n.blackKnightDarkSpikeAssaultSkillTitle,
        BloodGiantSupportTeammatesSkill() =>
          l10n.bloodGiantSupportTeammatesSkillTitle,
        BloodGiantImproveLineupSkill() =>
          l10n.bloodGiantImproveLineupSkillTitle,
        BloodGiantKillingStrikeSkill() =>
          l10n.bloodGiantKillingStrikeSkillTitle,
        BrownRogueSurpriseStrikeSkill() =>
          l10n.brownRogueSurpriseStrikeSkillTitle,
        BrownRogueCheapShotSkill() => l10n.brownRogueCheapShotSkillTitle,
        BrownRogueFindWeaknessSkill() => l10n.brownRogueFindWeaknessSkillTitle,
        BulletAntRampantAttackSkill() => l10n.bulletAntRampantAttackSkillTitle,
        BulletAntBlitzkriegSkill() => l10n.bulletAntBlitzkriegSkillTitle,
        BulletAntSuppressingAttackSkill() =>
          l10n.bulletAntSuppressingAttackSkillTitle,
        CarpenterAntSteadyPaceSkill() => l10n.carpenterAntSteadyPaceSkillTitle,
        CarpenterAntDistendedBellySkill() =>
          l10n.carpenterAntDistendedBellySkillTitle,
        CarpenterAntPowerfulGazeSkill() =>
          l10n.carpenterAntPowerfulGazeSkillTitle,
        CrematogasterInflataWinningStrategySkill() =>
          l10n.crematogasterInflataWinningStrategySkillTitle,
        CrematogasterInflataMasterMimicSkill() =>
          l10n.crematogasterInflataMasterMimicSkillTitle,
        CrematogasterInflataHealingMucusSkill() =>
          l10n.crematogasterInflataHealingMucusSkillTitle,
        CrimsonFraggerPiercingAttackSkill() =>
          l10n.crimsonFraggerPiercingAttackSkillTitle,
        CrimsonFraggerDoubleHitSkill() =>
          l10n.crimsonFraggerDoubleHitSkillTitle,
        CrimsonFraggerAdequatePreparationSkill() =>
          l10n.crimsonFraggerAdequatePreparationSkillTitle,
        CrimsonPearlBrutalCombosSkill() =>
          l10n.crimsonPearlBrutalCombosSkillTitle,
        CrimsonPearlParasiticStingerSkill() =>
          l10n.crimsonPearlParasiticStingerSkillTitle,
        CrimsonPearlVariableMimicsSkill() =>
          l10n.crimsonPearlVariableMimicsSkillTitle,
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
}
