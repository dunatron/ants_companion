import 'package:ants_companion/domain/ant_skills/models/ant_skill.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AntSkillTitleExtension on AntSkill {
  String skillTitle(AppLocalizations l10n) => switch (this) {
        AntSkillNotImplemented() => l10n.antSkillNotImplementedTitle,
        DominanceThree() => l10n.dominance3SkillTitle,
        TertiaryDefense() => l10n.tertiaryDefenseSkillTitle,
        TertiaryAttack() => l10n.tertiaryAttackSkillTitle,
        AntSkillSeven() => l10n.antSkillSevenLabel,
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
        AntSkillSevenMarchSpeed() => l10n.antSkillSevenMarchSpeedTitle,
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
        CyphomyrmexRimosusPowerfulHeadbuttSkill() =>
          l10n.cyphomyrmexRimosusPowerfulHeadbuttSkillTitle,
        CyphomyrmexRimosusGermPropagationSkill() =>
          l10n.cyphomyrmexRimosusGermPropagationSkillTitle,
        CyphomyrmexRimosusBeneficialBacteriaSkill() =>
          l10n.cyphomyrmexRimosusBeneficialBacteriaSkillTitle,
        DarkGiantCounterStrikeSkill() => l10n.darkGiantCounterStrikeSkillTitle,
        DarkGiantMenaceSkill() => l10n.darkGiantMenaceSkillTitle,
        DarkGiantWarfareLeadershipSkill() =>
          l10n.darkGiantWarfareLeadershipSkillTitle,
        DarkHerculesFatalBiteSkill() => l10n.darkHerculesFatalBiteSkillTitle,
        DarkHerculesStrongGuardSkill() =>
          l10n.darkHerculesStrongGuardSkillTitle,
        DarkHerculesBurningCourageSkill() =>
          l10n.darkHerculesBurningCourageSkillTitle,
        DolichoderusBispinosusImmediateSupportSkill() =>
          l10n.dolichoderusBispinosusImmediateSupportSkillTitle,
        DolichoderusBispinosusAgileAttackSkill() =>
          l10n.dolichoderusBispinosusAgileAttackSkillTitle,
        DolichoderusBispinosusExtraDamageSkill() =>
          l10n.dolichoderusBispinosusExtraDamageSkillTitle,
        DriverAntBlitzkriegSkill() => l10n.driverAntBlitzkriegSkillTitle,
        DriverAntSharpTearingSkill() => l10n.driverAntSharpTearingSkillTitle,
        DriverAntWeaknessStrikeSkill() =>
          l10n.driverAntWeaknessStrikeSkillTitle,
        DuskyLurkerSneakAttackSkill() => l10n.duskyLurkerSneakAttackSkillTitle,
        DuskyLurkerApplyingTacticsSkill() =>
          l10n.duskyLurkerApplyingTacticsSkillTitle,
        DuskyLurkerTrueLeaderSkill() => l10n.duskyLurkerTrueLeaderSkillTitle,
        EmeraldJewelAntStealthAssassinateSkill() =>
          l10n.emeraldJewelAntStealthAssassinateSkillTitle,
        EmeraldJewelAntCruelParasitismSkill() =>
          l10n.emeraldJewelAntCruelParasitismSkillTitle,
        EmeraldJewelAntParasiticDevourSkill() =>
          l10n.emeraldJewelAntParasiticDevourSkillTitle,
        EnigmaticTaylorSneakAttackSkill() =>
          l10n.enigmaticTaylorSneakAttackSkillTitle,
        EnigmaticTaylorFootRendSkill() =>
          l10n.enigmaticTaylorFootRendSkillTitle,
        EnigmaticTaylorWarfareLeadershipSkill() =>
          l10n.enigmaticTaylorWarfareLeadershipSkillTitle,
        FormicaClaraSleekChitinSkill() =>
          l10n.formicaClaraSleekChitinSkillTitle,
        FormicaClaraAgileDashSkill() => l10n.formicaClaraAgileDashSkillTitle,
        FormicaClaraDazzlingSwashSkill() =>
          l10n.formicaClaraDazzlingSwashSkillTitle,
        GhostAntClearHeadSkill() => l10n.ghostAntClearHeadSkillTitle,
        GhostAntGhostStrikeSkill() => l10n.ghostAntGhostStrikeSkillTitle,
        GhostAntDeliberateAttackSkill() =>
          l10n.ghostAntDeliberateAttackSkillTitle,
        GiantToothWeaknessStrikeSkill() =>
          l10n.giantToothWeaknessStrikeSkillTitle,
        GiantToothDisablingAttackSkill() =>
          l10n.giantToothDisablingAttackSkillTitle,
        GiantToothBigBiteSkill() => l10n.giantToothBigBiteSkillTitle,
        GoldArmorBigBiteSkill() => l10n.goldArmorBigBiteSkillTitle,
        GoldArmorRampantAttackSkill() => l10n.goldArmorRampantAttackSkillTitle,
        GoldArmorBlitzkriegSkill() => l10n.goldArmorBlitzkriegSkillTitle,
        GoldenSpinyBigBiteSkill() => l10n.goldenSpinyBigBiteSkillTitle,
        GoldenSpinyPiercingAttackSkill() =>
          l10n.goldenSpinyPiercingAttackSkillTitle,
        GoldenSpinyAmbushSkill() => l10n.goldenSpinyAmbushSkillTitle,
        GoldenSugarBigBiteSkill() => l10n.goldenSugarBigBiteSkillTitle,
        GoldenSugarPiercingStrikeSkill() =>
          l10n.goldenSugarPiercingStrikeSkillTitle,
        GoldenSugarComboStrikesSkill() =>
          l10n.goldenSugarComboStrikesSkillTitle,
        GoldenVenomRampantAttackSkill() =>
          l10n.goldenVenomRampantAttackSkillTitle,
        GoldenVenomParalysisToxinSkill() =>
          l10n.goldenVenomParalysisToxinSkillTitle,
        GoldenVenomBladePincerSkill() => l10n.goldenVenomBladePincerSkillTitle,
        GracefulTwigAntAcidicSpraySkill() =>
          l10n.gracefulTwigAntAcidicSpraySkillTitle,
        GracefulTwigAntHuntingInstinctSkill() =>
          l10n.gracefulTwigAntHuntingInstinctSkillTitle,
        GracefulTwigAntUnyieldingDeterminationSkill() =>
          l10n.gracefulTwigAntUnyieldingDeterminationSkillTitle,
        GraveDiggerToxicSpraySkill() => l10n.graveDiggerToxicSpraySkillTitle,
        GraveDiggerNervePoisonSkill() => l10n.graveDiggerNervePoisonSkillTitle,
        GraveDiggerWarfareLeadershipSkill() =>
          l10n.graveDiggerWarfareLeadershipSkillTitle,
        GuardGeneralLightningBlitzkriegSkill() =>
          l10n.guardGeneralLightningBlitzkriegSkillTitle,
        GuardGeneralAgileMovementSkill() =>
          l10n.guardGeneralAgileMovementSkillTitle,
        GuardGeneralDisablingCombosSkill() =>
          l10n.guardGeneralDisablingCombosSkillTitle,
        HairyPantherRampageStrikeSkill() =>
          l10n.hairyPantherRampageStrikeSkillTitle,
        HairyPantherFurySwipeSkill() => l10n.hairyPantherFurySwipeSkillTitle,
        HairyPantherFierceNatureSkill() =>
          l10n.hairyPantherFierceNatureSkillTitle,
        JackJumperRampantAttackSkill() =>
          l10n.jackJumperRampantAttackSkillTitle,
        JackJumperJumpingAttackSkill() =>
          l10n.jackJumperJumpingAttackSkillTitle,
        JackJumperBlitzkriegSkill() => l10n.jackJumperBlitzkriegSkillTitle,
        JetBlackCounterAttackSkill() => l10n.jetBlackCounterAttackSkillTitle,
        JetBlackSelfAdjustingSkill() => l10n.jetBlackSelfAdjustingSkillTitle,
        JetBlackCarvedSkinSkill() => l10n.jetBlackCarvedSkinSkillTitle,
        LathySnifferDoublePowerSkill() =>
          l10n.lathySnifferDoublePowerSkillTitle,
        LathySnifferTailAssaultSkill() =>
          l10n.lathySnifferTailAssaultSkillTitle,
        LathySnifferFrequentlyStrengthenSkill() =>
          l10n.lathySnifferFrequentlyStrengthenSkillTitle,
        LeafDevourerKillingDoubleHitSkill() =>
          l10n.leafDevourerKillingDoubleHitSkillTitle,
        LeafDevourerBurningCourageSkill() =>
          l10n.leafDevourerBurningCourageSkillTitle,
        LeafDevourerWarfareLeadershipSkill() =>
          l10n.leafDevourerWarfareLeadershipSkillTitle,
        LeptoglossusPhyllopusAmberBarrierSkill() =>
          l10n.leptoglossusPhyllopusAmberBarrierSkillTitle,
        LeptoglossusPhyllopusLongAntennaeSkill() =>
          l10n.leptoglossusPhyllopusLongAntennaeSkillTitle,
        LeptoglossusPhyllopusVenomousStingSkill() =>
          l10n.leptoglossusPhyllopusVenomousStingSkillTitle,
        LeptomyrmexBurwelliFatalAssaultSkill() =>
          l10n.leptomyrmexBurwelliFatalAssaultSkillTitle,
        LeptomyrmexBurwelliAdaptiveAssaultSkill() =>
          l10n.leptomyrmexBurwelliAdaptiveAssaultSkillTitle,
        LeptomyrmexBurwelliSweepingStrengthSkill() =>
          l10n.leptomyrmexBurwelliSweepingStrengthSkillTitle,
        MerannoplusBicolorPlushBackArmorSkill() =>
          l10n.merannoplusBicolorPlushBackArmorSkillTitle,
        MerannoplusBicolorToxicThornSkill() =>
          l10n.merannoplusBicolorToxicThornSkillTitle,
        MerannoplusBicolorBufferBarrierSkill() =>
          l10n.merannoplusBicolorBufferBarrierSkillTitle,
        MerannoplusCastaneusScarletFurySkill() =>
          l10n.merannoplusCastaneusScarletFurySkillTitle,
        MerannoplusCastaneusBloodyShieldSkill() =>
          l10n.merannoplusCastaneusBloodyShieldSkillTitle,
        MerannoplusCastaneusHealingWithLoveSkill() =>
          l10n.merannoplusCastaneusHealingWithLoveSkillTitle,
        MimicryMasterMouthPieceAttackSkill() =>
          l10n.mimicryMasterMouthPieceAttackSkillTitle,
        MimicryMasterSuppressingAttackSkill() =>
          l10n.mimicryMasterSupressingAttackSkillTitle,
        MimicryMasterSwipeSkill() => l10n.mimicryMasterSwipeSkillTitle,
        MyrmarachneFormicariaPrettyShellSkill() =>
          l10n.myrmarachneFormicariaPrettyShellSkillTitle,
        MyrmarachneFormicariaDisguiseStealSkill() =>
          l10n.myrmarachneFormicariaDisguiseStealSkillTitle,
        MyrmarachneFormicariaJumpingImpactSkill() =>
          l10n.myrmarachneFormicariaJumpingImpactSkillTitle,
        MyrmecotypusRettenmeyeriNimblePostureSkill() =>
          l10n.myrmecotypusRettenmeyeriNimblePostureSkillTitle,
        MyrmecotypusRettenmeyeriPowerOfAwakeningSkill() =>
          l10n.myrmecotypusRettenmeyeriPowerOfAwakeningSkillTitle,
        MyrmecotypusRettenmeyeriHealthFieldSkill() =>
          l10n.myrmecotypusRettenmeyeriHealthFieldSkillTitle,
        NewWorldGeneralRageBiteSkill() =>
          l10n.newWorldGeneralRageBiteSkillTitle,
        NewWorldGeneralDeterrenceSkill() =>
          l10n.newWorldGeneralDeterenceSkillTitle,
        NewWorldGeneralBlitzkriegSkill() =>
          l10n.newWorldGeneralBlitzkriegSkillTitle,
        NimbleTreeAntAgilitySkill() => l10n.nimbleTreeAntAgilitySkillTitle,
        NimbleTreeAntPiercingChaseSkill() =>
          l10n.nimbleTreeAntPiercingChaseSkillTitle,
        NimbleTreeAntDeftFootworkSkill() =>
          l10n.nimbleTreeAntDeftFootworkSkillTitle,
        PheidoleNietneriBounceBackSkill() =>
          l10n.pheidoleNietneriBounceBackSkillTitle,
        PheidoleNietneriGladiatorSkillsSkill() =>
          l10n.pheidoleNietneriGladiatorSkillsSkillTitle,
        PheidoleNietneriStrongShellSkill() =>
          l10n.pheidoleNietneriStrongShellSkillTitle,
        PredatorBloodyBattleSkill() => l10n.predatorBloodyBattleSkillTitle,
        PredatorMenaceSkill() => l10n.predatorMenaceSkillTitle,
        PredatorFlexibleRobberySkill() =>
          l10n.predatorFlexibleRobberySkillTitle,
        ProattaKnockBackSkill() => l10n.proattaKnockbackSkillTitle,
        ProattaDisablingCombosSkill() => l10n.proattaDisablingCombosSkillTitle,
        ProattaHorrorHunterSkill() => l10n.proattaHorrorHunterSkillTitle,
        ProcryptocerusAdlerziComprehensiveDefenseSkill() =>
          l10n.procryptocerusAdlerziComprehensiveDefenseSkillTitle,
        ProcryptocerusAdlerziSavageChargeSkill() =>
          l10n.procryptocerusAdlerziSavageChargeSkillTitle,
        ProcryptocerusAdlerziBigBiteSkill() =>
          l10n.procryptocerusAdlerziBigBiteSkillTitle,
        ReapMasterBigBiteSkill() => l10n.reapMasterBigBiteSkillTitle,
        ReapMasterThrillOfTheHuntSkill() =>
          l10n.reapMasterThrillOfTheHuntSkillTitle,
        ReapMasterGrievousBiteSkill() => l10n.reapMasterGrievousBiteSkillTitle,
        RockBanditRageRushSkill() => l10n.rockBanditRageRushSkillTitle,
        RockBanditHuggerBiteSkill() => l10n.rockBanditHuggerBiteSkillTitle,
        RockBanditWarfareLeadershipSkill() =>
          l10n.rockBanditWarfareLeadershipSkillTitle,
        RubySlenderRevengeSkill() => l10n.rubySlenderRevengeSkillTitle,
        RubySlenderSelfAdjustingSkill() =>
          l10n.rubySlenderSelfAdjustingSkillTitle,
        RubySlenderWarfareLeadershipSkill() =>
          l10n.rubySlenderWarfareLeadershipSkillTitle,
        SaharanSilverAntRapidMomentumSkill() =>
          l10n.saharanSilverAntRapidMomentumSkillTitle,
        SaharanSilverAntSilverGleamSkill() =>
          l10n.saharanSilverAntSilverGleamSkillTitle,
        SaharanSilverAntPrecisionLongshotSkill() =>
          l10n.saharanSilverAntPrecisionLongshotSkillTitle,
        ShieldWardenHealingPowerSkill() =>
          l10n.shieldWardenHealingPowerSkillTitle,
        ShieldWardenFightToDeathSkill() =>
          l10n.shieldWardenFightToDeathSkillTitle,
        ShieldWardenProtectionPostureSkill() =>
          l10n.shieldWardenProtectionPostureSkillTitle,
        ShikareeMasterInfiniteDeadHuntSkill() =>
          l10n.shikareeMasterInfiniteDeadhuntSkillTitle,
        ShikareeMasterRampantAttackSkill() =>
          l10n.shikareeMasterRampantAttackSkillTitle,
        ShikareeMasterAudaciousChargeSkill() =>
          l10n.shikareeMasterAudaciousChargeSkillTitle,
        SlimArchedBigBiteSkill() => l10n.slimArchedBigBiteSkillTitle,
        SlimArchedBlitzkriegSkill() => l10n.slimArchedBlitzkriegSkillTitle,
        SlimArchedSuppressingAttackSkill() =>
          l10n.slimArchedSuppressingAttackSkillTitle,
        StrumigenysEggersiStablePostureSkill() =>
          l10n.strumigenysEggersiStablePostureSkillTitle,
        StrumigenysEggersiDeceptiveFormSkill() =>
          l10n.strumigenysEggersiDeceptiveFormSkillTitle,
        StrumigenysEggersiKeenIntuitionSkill() =>
          l10n.strumigenysEggersiKeenIntuitionSkillTitle,
        TricondylaApteraLongLegsSkill() =>
          l10n.tricondylaApteraLongLegsSkillTitle,
        TricondylaApteraBattlefieldAidSkill() =>
          l10n.tricondylaApteraBattlefieldAidSkillTitle,
        TricondylaApteraPhantomFormSkill() =>
          l10n.tricondylaApteraPhantomFormSkillTitle,
        WeaverAntAcidAssaultSkill() => l10n.weaverAntAcidAssaultSkillTitle,
        WeaverAntFieryThrashSkill() => l10n.weaverAntFieryThrashSkillTitle,
        WeaverAntTacticalCounterAttackSkill() =>
          l10n.weaverAntTacticalCounterAttackSkillTitle,
        WhiteVelvetMasterOfDisguiseSkill() =>
          l10n.whiteVelvetMasterOfDisguiseSkillTitle,
        WhiteVelvetHealingPowerSkill() =>
          l10n.whiteVelvetHealingPowerSkillTitle,
        WhiteVelvetWhiteGuardianSkill() =>
          l10n.whiteVelvetWhiteGuardianSkillTitle,
        WiseBerserkerCruelStrikeSkill() =>
          l10n.wiseBerserkerCruelStrikeSkillTitle,
        WiseBerserkerContinuousBiteSkill() =>
          l10n.wiseBerserkerContinuousBiteSkillTitle,
        WiseBerserkerBattleMemorySkill() =>
          l10n.wiseBerserkerBattleMemorySkillTitle,
      };
}
