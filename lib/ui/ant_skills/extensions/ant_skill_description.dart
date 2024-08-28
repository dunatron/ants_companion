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
        CyphomyrmexRimosusPowerfulHeadbuttSkill() =>
          l10n.cyphomyrmexRimosusPowerfulHeadbuttSkillDescription10,
        CyphomyrmexRimosusGermPropagationSkill() =>
          l10n.cyphomyrmexRimosusGermPropagationSkillDescription10,
        CyphomyrmexRimosusBeneficialBacteriaSkill() =>
          l10n.cyphomyrmexRimosusBeneficialBacteriaSkillDescription10,
        DarkGiantCounterStrikeSkill() =>
          l10n.darkGiantCounterStrikeSkillDescription10,
        DarkGiantMenaceSkill() => l10n.darkGiantMenaceSkillDescription10,
        DarkGiantWarfareLeadershipSkill() =>
          l10n.darkGiantWarfareLeadershipSkillDescription10,
        DarkHerculesFatalBiteSkill() =>
          l10n.darkHerculesFatalBiteSkillDescription10,
        DarkHerculesStrongGuardSkill() =>
          l10n.darkHerculesStrongGuardSkillDescription10,
        DarkHerculesBurningCourageSkill() =>
          l10n.darkHerculesBurningCourageSkillDescription10,
        DolichoderusBispinosusImmediateSupportSkill() =>
          l10n.dolichoderusBispinosusImmediateSupportSkillDescription10,
        DolichoderusBispinosusAgileAttackSkill() =>
          l10n.dolichoderusBispinosusAgileAttackSkillDescription10,
        DolichoderusBispinosusExtraDamageSkill() =>
          l10n.dolichoderusBispinosusExtraDamageSkillDescription10,
        DriverAntBlitzkriegSkill() =>
          l10n.driverAntBlitzkriegSkillDescription10,
        DriverAntSharpTearingSkill() =>
          l10n.driverAntSharpTearingSkillDescription10,
        DriverAntWeaknessStrikeSkill() =>
          l10n.driverAntWeaknessStrikeSkillDescription10,
        DuskyLurkerSneakAttackSkill() =>
          l10n.duskyLurkerSneakAttackSkillDescription10,
        DuskyLurkerApplyingTacticsSkill() =>
          l10n.duskyLurkerApplyingTacticsSkillDescription10,
        DuskyLurkerTrueLeaderSkill() =>
          l10n.duskyLurkerTrueLeaderSkillDescription10,
        EmeraldJewelAntStealthAssassinateSkill() =>
          l10n.emeraldJewelAntStealthAssassinateSkillDescription10,
        EmeraldJewelAntCruelParasitismSkill() =>
          l10n.emeraldJewelAntCruelParasitismSkillDescription10,
        EmeraldJewelAntParasiticDevourSkill() =>
          l10n.emeraldJewelAntParasiticDevourSkillDescription10,
        EnigmaticTaylorSneakAttackSkill() =>
          l10n.enigmaticTaylorSneakAttackSkillDescription10,
        EnigmaticTaylorFootRendSkill() =>
          l10n.enigmaticTaylorFootRendSkillDescription10,
        EnigmaticTaylorWarfareLeadershipSkill() =>
          l10n.enigmaticTaylorWarfareLeadershipSkillDescription10,
        FormicaClaraSleekChitinSkill() =>
          l10n.formicaClaraSleekChitinSkillDescription10,
        FormicaClaraAgileDashSkill() =>
          l10n.formicaClaraAgileDashSkillDescription10,
        FormicaClaraDazzlingSwashSkill() =>
          l10n.formicaClaraDazzlingSwashSkillDescription10,
        GhostAntClearHeadSkill() => l10n.ghostAntClearHeadSkillDescription10,
        GhostAntGhostStrikeSkill() =>
          l10n.ghostAntGhostStrikeSkillDescription10,
        GhostAntDeliberateAttackSkill() =>
          l10n.ghostAntDeliberateAttackSkillDescription10,
        GiantToothWeaknessStrikeSkill() =>
          l10n.giantToothWeaknessStrikeSkillDescription10,
        GiantToothDisablingAttackSkill() =>
          l10n.giantToothDisablingAttackSkillDescription10,
        GiantToothBigBiteSkill() => l10n.giantToothBigBiteSkillDescription10,
        GoldArmorBigBiteSkill() => l10n.goldArmorBigBiteSkillDescription10,
        GoldArmorRampantAttackSkill() =>
          l10n.goldArmorRampantAttackSkillDescription10,
        GoldArmorBlitzkriegSkill() =>
          l10n.goldArmorBlitzkriegSkillDescription10,
        GoldenSpinyBigBiteSkill() => l10n.goldenSpinyBigBiteSkillDescription10,
        GoldenSpinyPiercingAttackSkill() =>
          l10n.goldenSpinyPiercingAttackSkillDescription10,
        GoldenSpinyAmbushSkill() => l10n.goldenSpinyAmbushSkillDescription10,
        GoldenSugarBigBiteSkill() => l10n.goldenSugarBigBiteSkillDescription10,
        GoldenSugarPiercingStrikeSkill() =>
          l10n.goldenSugarPiercingStrikeSkillDescription10,
        GoldenSugarComboStrikesSkill() =>
          l10n.goldenSugarComboStrikesSkillDescription10,
        GoldenVenomRampantAttackSkill() =>
          l10n.goldenVenomRampantAttackSkillDescription10,
        GoldenVenomParalysisToxinSkill() =>
          l10n.goldenVenomParalysisToxinSkillDescription10,
        GoldenVenomBladePincerSkill() =>
          l10n.goldenVenomBladePincerSkillDescription10,
        GracefulTwigAntAcidicSpraySkill() =>
          l10n.gracefulTwigAntAcidicSpraySkillDescription10,
        GracefulTwigAntHuntingInstinctSkill() =>
          l10n.gracefulTwigAntHuntingInstinctSkillDescription10,
        GracefulTwigAntUnyieldingDeterminationSkill() =>
          l10n.gracefulTwigAntUnyieldingDeterminationSkillDescription10,
        GraveDiggerToxicSpraySkill() =>
          l10n.graveDiggerToxicSpraySkillDescription10,
        GraveDiggerNervePoisonSkill() =>
          l10n.graveDiggerNervePoisonSkillDescription10,
        GraveDiggerWarfareLeadershipSkill() =>
          l10n.graveDiggerWarfareLeadershipSkillDescription10,
        GuardGeneralLightningBlitzkriegSkill() =>
          l10n.guardGeneralLightningBlitzkriegSkillDescription10,
        GuardGeneralAgileMovementSkill() =>
          l10n.guardGeneralAgileMovementSkillDescription10,
        GuardGeneralDisablingCombosSkill() =>
          l10n.guardGeneralDisablingCombosSkillDescription10,
        HairyPantherRampageStrikeSkill() =>
          l10n.hairyPantherRampageStrikeSkillDescription10,
        HairyPantherFurySwipeSkill() =>
          l10n.hairyPantherFurySwipeSkillDescription10,
        HairyPantherFierceNatureSkill() =>
          l10n.hairyPantherFierceNatureSkillDescription10,
        JackJumperRampantAttackSkill() =>
          l10n.jackJumperRampantAttackSkillDescription10,
        JackJumperJumpingAttackSkill() =>
          l10n.jackJumperJumpingAttackSkillDescription10,
        JackJumperBlitzkriegSkill() =>
          l10n.jackJumperBlitzkriegSkillDescription10,
        JetBlackCounterAttackSkill() =>
          l10n.jetBlackCounterAttackSkillDescription10,
        JetBlackSelfAdjustingSkill() =>
          l10n.jetBlackSelfAdjustingSkillDescription10,
        JetBlackCarvedSkinSkill() => l10n.jetBlackCarvedSkinSkillDescription10,
        LathySnifferDoublePowerSkill() =>
          l10n.lathySnifferDoublePowerSkillDescription10,
        LathySnifferTailAssaultSkill() =>
          l10n.lathySnifferTailAssaultSkillDescription10,
        LathySnifferFrequentlyStrengthenSkill() =>
          l10n.lathySnifferFrequentlyStrengthenSkillDescription10,
        LeafDevourerKillingDoubleHitSkill() =>
          l10n.leafDevourerKillingDoubleHitSkillDescription10,
        LeafDevourerBurningCourageSkill() =>
          l10n.leafDevourerBurningCourageSkillDescription10,
        LeafDevourerWarfareLeadershipSkill() =>
          l10n.leafDevourerWarfareLeadershipSkillDescription10,
        LeptoglossusPhyllopusAmberBarrierSkill() =>
          l10n.leptoglossusPhyllopusAmberBarrierSkillDescription10,
        LeptoglossusPhyllopusLongAntennaeSkill() =>
          l10n.leptoglossusPhyllopusLongAntennaeSkillDescription10,
        LeptoglossusPhyllopusVenomousStingSkill() =>
          l10n.leptoglossusPhyllopusVenomousStingSkillDescription10,
        LeptomyrmexBurwelliFatalAssaultSkill() =>
          l10n.leptomyrmexBurwelliFatalAssaultSkillDescription10,
        LeptomyrmexBurwelliAdaptiveAssaultSkill() =>
          l10n.leptomyrmexBurwelliAdaptiveAssaultSkillDescription10,
        LeptomyrmexBurwelliSweepingStrengthSkill() =>
          l10n.leptomyrmexBurwelliSweepingStrengthSkillDescription10,
        MerannoplusBicolorPlushBackArmorSkill() =>
          l10n.merannoplusBicolorPlushBackArmorSkillDescription10,
        MerannoplusBicolorToxicThornSkill() =>
          l10n.merannoplusBicolorToxicThornSkillDescription10,
        MerannoplusBicolorBufferBarrierSkill() =>
          l10n.merannoplusBicolorBufferBarrierSkillDescription10,
        MerannoplusCastaneusScarletFurySkill() =>
          l10n.merannoplusCastaneusScarletFurySkillDescription10,
        MerannoplusCastaneusBloodyShieldSkill() =>
          l10n.merannoplusCastaneusBloodyShieldSkillDescription10,
        MerannoplusCastaneusHealingWithLoveSkill() =>
          l10n.merannoplusCastaneusHealingWithLoveSkillDescription10,
        MimicryMasterMouthPieceAttackSkill() =>
          l10n.mimicryMasterMouthPieceAttackSkillDescription10,
        MimicryMasterSupressingAttackSkill() =>
          l10n.mimicryMasterSupressingAttackSkillDescription10,
        MimicryMasterSwipeSkill() => l10n.mimicryMasterSwipeSkillDescription10,
        MyrmarachneFormicariaPrettyShellSkill() =>
          l10n.myrmarachneFormicariaPrettyShellSkillDescription10,
        MyrmarachneFormicariaDisguiseStealSkill() =>
          l10n.myrmarachneFormicariaDisguiseStealSkillDescription10,
        MyrmarachneFormicariaJumpingImpactSkill() =>
          l10n.myrmarachneFormicariaJumpingImpactSkillDescription10,
        MyrmecotypusRettenmeyeriNimblePostureSkill() =>
          l10n.myrmecotypusRettenmeyeriNimblePostureSkillDescription10,
        MyrmecotypusRettenmeyeriPowerOfAwakeningSkill() =>
          l10n.myrmecotypusRettenmeyeriPowerOfAwakeningSkillDescription10,
        MyrmecotypusRettenmeyeriHealthFieldSkill() =>
          l10n.myrmecotypusRettenmeyeriHealthFieldSkillDescription10,
        NewWorldGeneralRageBiteSkill() =>
          l10n.newWorldGeneralRageBiteSkillDescription10,
        NewWorldGeneralDeterenceSkill() =>
          l10n.newWorldGeneralDeterenceSkillDescription10,
        NewWorldGeneralBlitzkriegSkill() =>
          l10n.newWorldGeneralBlitzkriegSkillDescription10,
        NimbleTreeAntAgilitySkill() =>
          l10n.nimbleTreeAntAgilitySkillDescription10,
        NimbleTreeAntPiercingChaseSkill() =>
          l10n.nimbleTreeAntPiercingChaseSkillDescription10,
        NimbleTreeAntDeftFootworkSkill() =>
          l10n.nimbleTreeAntDeftFootworkSkillDescription10,
        PheidoleNietneriBounceBackSkill() =>
          l10n.pheidoleNietneriBounceBackSkillDescription10,
        PheidoleNietneriGladiatorSkillsSkill() =>
          l10n.pheidoleNietneriGladiatorSkillsSkillDescription10,
        PheidoleNietneriStrongShellSkill() =>
          l10n.pheidoleNietneriStrongShellSkillDescription10,
        PredatorBloodyBattleSkill() =>
          l10n.predatorBloodyBattleSkillDescription10,
        PredatorMenaceSkill() => l10n.predatorMenaceSkillDescription10,
        PredatorFlexibleRobberySkill() =>
          l10n.predatorFlexibleRobberySkillDescription10,
        ProattaKnockbackSkill() => l10n.proattaKnockbackSkillDescription10,
        ProattaDisablingCombosSkill() =>
          l10n.proattaDisablingCombosSkillDescription10,
        ProattaHorrorHunterSkill() =>
          l10n.proattaHorrorHunterSkillDescription10,
        ProcryptocerusAdlerziComprehensiveDefenseSkill() =>
          l10n.procryptocerusAdlerziComprehensiveDefenseSkillDescription10,
        ProcryptocerusAdlerziSavageChargeSkill() =>
          l10n.procryptocerusAdlerziSavageChargeSkillDescription10,
        ProcryptocerusAdlerziBigBiteSkill() =>
          l10n.procryptocerusAdlerziBigBiteSkillDescription10,
        ReapMasterBigBiteSkill() => l10n.reapMasterBigBiteSkillDescription10,
        ReapMasterThrillOfTheHuntSkill() =>
          l10n.reapMasterThrillOfTheHuntSkillDescription10,
        ReapMasterGrievousBiteSkill() =>
          l10n.reapMasterGrievousBiteSkillDescription10,
        RockBanditRageRushSkill() => l10n.rockBanditRageRushSkillDescription10,
        RockBanditHuggerBiteSkill() =>
          l10n.rockBanditHuggerBiteSkillDescription10,
        RockBanditWarfareLeadershipSkill() =>
          l10n.rockBanditWarfareLeadershipSkillDescription10,
        RubySlenderRevengeSkill() => l10n.rubySlenderRevengeSkillDescription10,
        RubySlenderSelfAdjustingSkill() =>
          l10n.rubySlenderSelfAdjustingSkillDescription10,
        RubySlenderWarfareLeadershipSkill() =>
          l10n.rubySlenderWarfareLeadershipSkillDescription10,
        SaharanSilverAntRapidMomentumSkill() =>
          l10n.saharanSilverAntRapidMomentumSkillDescription10,
        SaharanSilverAntSilverGleamSkill() =>
          l10n.saharanSilverAntSilverGleamSkillDescription10,
        SaharanSilverAntPrecisionLongshotSkill() =>
          l10n.saharanSilverAntPrecisionLongshotSkillDescription10,
        ShieldWardenHealingPowerSkill() =>
          l10n.shieldWardenHealingPowerSkillDescription10,
        ShieldWardenFightToDeathSkill() =>
          l10n.shieldWardenFightToDeathSkillDescription10,
        ShieldWardenProtectionPostureSkill() =>
          l10n.shieldWardenProtectionPostureSkillDescription10,
        ShikareeMasterInfiniteDeadhuntSkill() =>
          l10n.shikareeMasterInfiniteDeadhuntSkillDescription10,
        ShikareeMasterRampantAttackSkill() =>
          l10n.shikareeMasterRampantAttackSkillDescription10,
        ShikareeMasterAudaciousChargeSkill() =>
          l10n.shikareeMasterAudaciousChargeSkillDescription10,
        SlimArchedBigBiteSkill() => l10n.slimArchedBigBiteSkillDescription10,
        SlimArchedBlitzkriegSkill() =>
          l10n.slimArchedBlitzkriegSkillDescription10,
        SlimArchedSuppressingAttackSkill() =>
          l10n.slimArchedSuppressingAttackSkillDescription10,
        StrumigenysEggersiStablePostureSkill() =>
          l10n.strumigenysEggersiStablePostureSkillDescription10,
        StrumigenysEggersiDeceptiveFormSkill() =>
          l10n.strumigenysEggersiDeceptiveFormSkillDescription10,
        StrumigenysEggersiKeenIntuitionSkill() =>
          l10n.strumigenysEggersiKeenIntuitionSkillDescription10,
        WeaverAntAcidAssaultSkill() =>
          l10n.weaverAntAcidAssaultSkillDescription10,
        WeaverAntFieryThrashSkill() =>
          l10n.weaverAntFieryThrashSkillDescription10,
        WeaverAntTacticalCounterAttackSkill() =>
          l10n.weaverAntTacticalCounterAttackSkillDescription10,
        WhiteVelvetMasterOfDisguiseSkill() =>
          l10n.whiteVelvetMasterOfDisguiseSkillDescription10,
        WhiteVelvetHealingPowerSkill() =>
          l10n.whiteVelvetHealingPowerSkillDescription10,
        WhiteVelvetWhiteGuardianSkill() =>
          l10n.whiteVelvetWhiteGuardianSkillDescription10,
        WiseBerserkerCruelStrikeSkill() =>
          l10n.wiseBerserkerCruelStrikeSkillDescription10,
        WiseBerserkerContinuousBiteSkill() =>
          l10n.wiseBerserkerContinuousBiteSkillDescription10,
        WiseBerserkerBattleMemorySkill() =>
          l10n.wiseBerserkerBattleMemorySkillDescription10,
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
        AntSkillSevenMarchSpeed() => 'l10n.',
        AttaSexdensDefensiveOffenceSkill() =>
          l10n.attaSexdensDefensiveOffenceSkillDescription20,
        AttaSexdensJawRaidSkill() => l10n.attaSexdensJawRaidSkillDescription20,
        AttaSexdensThornAssaultSkill() =>
          l10n.attaSexdensThornAssaultSkillDescription20,
        BansheePandaVelvetShieldSkill() =>
          l10n.bansheePandaVelvetShieldSkillDescription20,
        BansheePandaAllureAttackSkill() =>
          l10n.bansheePandaAllureAttackSkillDescription20,
        BansheePandaWarfareLeadershipSkill() =>
          l10n.bansheePandaWarfareLeadershipSkillDescription20,
        BansheeVelvetSuperToxinSkill() =>
          l10n.bansheeVelvetSuperToxinSkillDescription20,
        BansheeVelvetVividColorSkill() =>
          l10n.bansheeVelvetVividColorSkillDescription20,
        BansheeVelvetWarfareLeadershipSkill() =>
          l10n.bansheeVelvetWarfareLeadershipSkillDescription20,
        BlackCancerFluidLeachSkill() =>
          l10n.blackCancerFluidLeachSkillDescription20,
        BlackCancerAdamantArmorSkill() =>
          l10n.blackCancerAdamantArmorSkillDescription20,
        BlackCancerWarfareLeadershipSkill() =>
          l10n.blackCancerWarfareLeadershipSkillDescription20,
        BlackKnightVengefulCounterattackSkill() =>
          l10n.blackKnightVengefulCounterattackSkillDescription20,
        BlackKnightBlackArmorMarsSkill() =>
          l10n.blackKnightBlackArmorMarsSkillDescription20,
        BlackKnightDarkSpikeAssaultSkill() =>
          l10n.blackKnightDarkSpikeAssaultSkillDescription20,
        BloodGiantSupportTeammatesSkill() =>
          l10n.bloodGiantSupportTeammatesSkillDescription20,
        BloodGiantImproveLineupSkill() =>
          l10n.bloodGiantImproveLineupSkillDescription20,
        BloodGiantKillingStrikeSkill() =>
          l10n.bloodGiantKillingStrikeSkillDescription20,
        BrownRogueSurpriseStrikeSkill() =>
          l10n.brownRogueSurpriseStrikeSkillDescription20,
        BrownRogueCheapShotSkill() =>
          l10n.brownRogueCheapShotSkillDescription20,
        BrownRogueFindWeaknessSkill() =>
          l10n.brownRogueFindWeaknessSkillDescription20,
        BulletAntRampantAttackSkill() =>
          l10n.bulletAntRampantAttackSkillDescription20,
        BulletAntBlitzkriegSkill() =>
          l10n.bulletAntBlitzkriegSkillDescription20,
        BulletAntSuppressingAttackSkill() =>
          l10n.bulletAntSuppressingAttackSkillDescription20,
        CarpenterAntSteadyPaceSkill() =>
          l10n.carpenterAntSteadyPaceSkillDescription20,
        CarpenterAntDistendedBellySkill() =>
          l10n.carpenterAntDistendedBellySkillDescription20,
        CarpenterAntPowerfulGazeSkill() =>
          l10n.carpenterAntPowerfulGazeSkillDescription20,
        CrematogasterInflataWinningStrategySkill() =>
          l10n.crematogasterInflataWinningStrategySkillDescription20,
        CrematogasterInflataMasterMimicSkill() =>
          l10n.crematogasterInflataMasterMimicSkillDescription20,
        CrematogasterInflataHealingMucusSkill() =>
          l10n.crematogasterInflataHealingMucusSkillDescription20,
        CrimsonFraggerPiercingAttackSkill() =>
          l10n.crimsonFraggerPiercingAttackSkillDescription20,
        CrimsonFraggerDoubleHitSkill() =>
          l10n.crimsonFraggerDoubleHitSkillDescription20,
        CrimsonFraggerAdequatePreparationSkill() =>
          l10n.crimsonFraggerAdequatePreparationSkillDescription20,
        CrimsonPearlBrutalCombosSkill() =>
          l10n.crimsonPearlBrutalCombosSkillDescription20,
        CrimsonPearlParasiticStingerSkill() =>
          l10n.crimsonPearlParasiticStingerSkillDescription20,
        CrimsonPearlVariableMimicsSkill() =>
          l10n.crimsonPearlVariableMimicsSkillDescription20,
        CyphomyrmexRimosusPowerfulHeadbuttSkill() =>
          l10n.cyphomyrmexRimosusPowerfulHeadbuttSkillDescription20,
        CyphomyrmexRimosusGermPropagationSkill() =>
          l10n.cyphomyrmexRimosusGermPropagationSkillDescription20,
        CyphomyrmexRimosusBeneficialBacteriaSkill() =>
          l10n.cyphomyrmexRimosusBeneficialBacteriaSkillDescription20,
        DarkGiantCounterStrikeSkill() =>
          l10n.darkGiantCounterStrikeSkillDescription20,
        DarkGiantMenaceSkill() => l10n.darkGiantMenaceSkillDescription20,
        DarkGiantWarfareLeadershipSkill() =>
          l10n.darkGiantWarfareLeadershipSkillDescription20,
        DarkHerculesFatalBiteSkill() =>
          l10n.darkHerculesFatalBiteSkillDescription20,
        DarkHerculesStrongGuardSkill() =>
          l10n.darkHerculesStrongGuardSkillDescription20,
        DarkHerculesBurningCourageSkill() =>
          l10n.darkHerculesBurningCourageSkillDescription20,
        DolichoderusBispinosusImmediateSupportSkill() =>
          l10n.dolichoderusBispinosusImmediateSupportSkillDescription20,
        DolichoderusBispinosusAgileAttackSkill() =>
          l10n.dolichoderusBispinosusAgileAttackSkillDescription20,
        DolichoderusBispinosusExtraDamageSkill() =>
          l10n.dolichoderusBispinosusExtraDamageSkillDescription20,
        DriverAntBlitzkriegSkill() =>
          l10n.driverAntBlitzkriegSkillDescription20,
        DriverAntSharpTearingSkill() =>
          l10n.driverAntSharpTearingSkillDescription20,
        DriverAntWeaknessStrikeSkill() =>
          l10n.driverAntWeaknessStrikeSkillDescription20,
        DuskyLurkerSneakAttackSkill() =>
          l10n.duskyLurkerSneakAttackSkillDescription20,
        DuskyLurkerApplyingTacticsSkill() =>
          l10n.duskyLurkerApplyingTacticsSkillDescription20,
        DuskyLurkerTrueLeaderSkill() =>
          l10n.duskyLurkerTrueLeaderSkillDescription20,
        EmeraldJewelAntStealthAssassinateSkill() =>
          l10n.emeraldJewelAntStealthAssassinateSkillDescription20,
        EmeraldJewelAntCruelParasitismSkill() =>
          l10n.emeraldJewelAntCruelParasitismSkillDescription20,
        EmeraldJewelAntParasiticDevourSkill() =>
          l10n.emeraldJewelAntParasiticDevourSkillDescription20,
        EnigmaticTaylorSneakAttackSkill() =>
          l10n.enigmaticTaylorSneakAttackSkillDescription20,
        EnigmaticTaylorFootRendSkill() =>
          l10n.enigmaticTaylorFootRendSkillDescription20,
        EnigmaticTaylorWarfareLeadershipSkill() =>
          l10n.enigmaticTaylorWarfareLeadershipSkillDescription20,
        FormicaClaraSleekChitinSkill() =>
          l10n.formicaClaraSleekChitinSkillDescription20,
        FormicaClaraAgileDashSkill() =>
          l10n.formicaClaraAgileDashSkillDescription20,
        FormicaClaraDazzlingSwashSkill() =>
          l10n.formicaClaraDazzlingSwashSkillDescription20,
        GhostAntClearHeadSkill() => l10n.ghostAntClearHeadSkillDescription20,
        GhostAntGhostStrikeSkill() =>
          l10n.ghostAntGhostStrikeSkillDescription20,
        GhostAntDeliberateAttackSkill() =>
          l10n.ghostAntDeliberateAttackSkillDescription20,
        GiantToothWeaknessStrikeSkill() =>
          l10n.giantToothWeaknessStrikeSkillDescription20,
        GiantToothDisablingAttackSkill() =>
          l10n.giantToothDisablingAttackSkillDescription20,
        GiantToothBigBiteSkill() => l10n.giantToothBigBiteSkillDescription20,
        GoldArmorBigBiteSkill() => l10n.goldArmorBigBiteSkillDescription20,
        GoldArmorRampantAttackSkill() =>
          l10n.goldArmorRampantAttackSkillDescription20,
        GoldArmorBlitzkriegSkill() =>
          l10n.goldArmorBlitzkriegSkillDescription20,
        GoldenSpinyBigBiteSkill() => l10n.goldenSpinyBigBiteSkillDescription20,
        GoldenSpinyPiercingAttackSkill() =>
          l10n.goldenSpinyPiercingAttackSkillDescription20,
        GoldenSpinyAmbushSkill() => l10n.goldenSpinyAmbushSkillDescription20,
        GoldenSugarBigBiteSkill() => l10n.goldenSugarBigBiteSkillDescription20,
        GoldenSugarPiercingStrikeSkill() =>
          l10n.goldenSugarPiercingStrikeSkillDescription20,
        GoldenSugarComboStrikesSkill() =>
          l10n.goldenSugarComboStrikesSkillDescription20,
        GoldenVenomRampantAttackSkill() =>
          l10n.goldenVenomRampantAttackSkillDescription20,
        GoldenVenomParalysisToxinSkill() =>
          l10n.goldenVenomParalysisToxinSkillDescription20,
        GoldenVenomBladePincerSkill() =>
          l10n.goldenVenomBladePincerSkillDescription20,
        GracefulTwigAntAcidicSpraySkill() =>
          l10n.gracefulTwigAntAcidicSpraySkillDescription20,
        GracefulTwigAntHuntingInstinctSkill() =>
          l10n.gracefulTwigAntHuntingInstinctSkillDescription20,
        GracefulTwigAntUnyieldingDeterminationSkill() =>
          l10n.gracefulTwigAntUnyieldingDeterminationSkillDescription20,
        GraveDiggerToxicSpraySkill() =>
          l10n.graveDiggerToxicSpraySkillDescription20,
        GraveDiggerNervePoisonSkill() =>
          l10n.graveDiggerNervePoisonSkillDescription20,
        GraveDiggerWarfareLeadershipSkill() =>
          l10n.graveDiggerWarfareLeadershipSkillDescription20,
        GuardGeneralLightningBlitzkriegSkill() =>
          l10n.guardGeneralLightningBlitzkriegSkillDescription20,
        GuardGeneralAgileMovementSkill() =>
          l10n.guardGeneralAgileMovementSkillDescription20,
        GuardGeneralDisablingCombosSkill() =>
          l10n.guardGeneralDisablingCombosSkillDescription20,
        HairyPantherRampageStrikeSkill() =>
          l10n.hairyPantherRampageStrikeSkillDescription20,
        HairyPantherFurySwipeSkill() =>
          l10n.hairyPantherFurySwipeSkillDescription20,
        HairyPantherFierceNatureSkill() =>
          l10n.hairyPantherFierceNatureSkillDescription20,
        JackJumperRampantAttackSkill() =>
          l10n.jackJumperRampantAttackSkillDescription20,
        JackJumperJumpingAttackSkill() =>
          l10n.jackJumperJumpingAttackSkillDescription20,
        JackJumperBlitzkriegSkill() =>
          l10n.jackJumperBlitzkriegSkillDescription20,
        JetBlackCounterAttackSkill() =>
          l10n.jetBlackCounterAttackSkillDescription20,
        JetBlackSelfAdjustingSkill() =>
          l10n.jetBlackSelfAdjustingSkillDescription20,
        JetBlackCarvedSkinSkill() => l10n.jetBlackCarvedSkinSkillDescription20,
        LathySnifferDoublePowerSkill() =>
          l10n.lathySnifferDoublePowerSkillDescription20,
        LathySnifferTailAssaultSkill() =>
          l10n.lathySnifferTailAssaultSkillDescription20,
        LathySnifferFrequentlyStrengthenSkill() =>
          l10n.lathySnifferFrequentlyStrengthenSkillDescription20,
        LeafDevourerKillingDoubleHitSkill() =>
          l10n.leafDevourerKillingDoubleHitSkillDescription20,
        LeafDevourerBurningCourageSkill() =>
          l10n.leafDevourerBurningCourageSkillDescription20,
        LeafDevourerWarfareLeadershipSkill() =>
          l10n.leafDevourerWarfareLeadershipSkillDescription20,
        LeptoglossusPhyllopusAmberBarrierSkill() =>
          l10n.leptoglossusPhyllopusAmberBarrierSkillDescription20,
        LeptoglossusPhyllopusLongAntennaeSkill() =>
          l10n.leptoglossusPhyllopusLongAntennaeSkillDescription20,
        LeptoglossusPhyllopusVenomousStingSkill() =>
          l10n.leptoglossusPhyllopusVenomousStingSkillDescription20,
        LeptomyrmexBurwelliFatalAssaultSkill() =>
          l10n.leptomyrmexBurwelliFatalAssaultSkillDescription20,
        LeptomyrmexBurwelliAdaptiveAssaultSkill() =>
          l10n.leptomyrmexBurwelliAdaptiveAssaultSkillDescription20,
        LeptomyrmexBurwelliSweepingStrengthSkill() =>
          l10n.leptomyrmexBurwelliSweepingStrengthSkillDescription20,
        MerannoplusBicolorPlushBackArmorSkill() =>
          l10n.merannoplusBicolorPlushBackArmorSkillDescription20,
        MerannoplusBicolorToxicThornSkill() =>
          l10n.merannoplusBicolorToxicThornSkillDescription20,
        MerannoplusBicolorBufferBarrierSkill() =>
          l10n.merannoplusBicolorBufferBarrierSkillDescription20,
        MerannoplusCastaneusScarletFurySkill() =>
          l10n.merannoplusCastaneusScarletFurySkillDescription20,
        MerannoplusCastaneusBloodyShieldSkill() =>
          l10n.merannoplusCastaneusBloodyShieldSkillDescription20,
        MerannoplusCastaneusHealingWithLoveSkill() =>
          l10n.merannoplusCastaneusHealingWithLoveSkillDescription20,
        MimicryMasterMouthPieceAttackSkill() =>
          l10n.mimicryMasterMouthPieceAttackSkillDescription20,
        MimicryMasterSupressingAttackSkill() =>
          l10n.mimicryMasterSupressingAttackSkillDescription20,
        MimicryMasterSwipeSkill() => l10n.mimicryMasterSwipeSkillDescription20,
        MyrmarachneFormicariaPrettyShellSkill() =>
          l10n.myrmarachneFormicariaPrettyShellSkillDescription20,
        MyrmarachneFormicariaDisguiseStealSkill() =>
          l10n.myrmarachneFormicariaDisguiseStealSkillDescription20,
        MyrmarachneFormicariaJumpingImpactSkill() =>
          l10n.myrmarachneFormicariaJumpingImpactSkillDescription20,
        MyrmecotypusRettenmeyeriNimblePostureSkill() =>
          l10n.myrmecotypusRettenmeyeriNimblePostureSkillDescription20,
        MyrmecotypusRettenmeyeriPowerOfAwakeningSkill() =>
          l10n.myrmecotypusRettenmeyeriPowerOfAwakeningSkillDescription20,
        MyrmecotypusRettenmeyeriHealthFieldSkill() =>
          l10n.myrmecotypusRettenmeyeriHealthFieldSkillDescription20,
        NewWorldGeneralRageBiteSkill() =>
          l10n.newWorldGeneralRageBiteSkillDescription20,
        NewWorldGeneralDeterenceSkill() =>
          l10n.newWorldGeneralDeterenceSkillDescription20,
        NewWorldGeneralBlitzkriegSkill() =>
          l10n.newWorldGeneralBlitzkriegSkillDescription20,
        NimbleTreeAntAgilitySkill() =>
          l10n.nimbleTreeAntAgilitySkillDescription20,
        NimbleTreeAntPiercingChaseSkill() =>
          l10n.nimbleTreeAntPiercingChaseSkillDescription20,
        NimbleTreeAntDeftFootworkSkill() =>
          l10n.nimbleTreeAntDeftFootworkSkillDescription20,
        PheidoleNietneriBounceBackSkill() =>
          l10n.pheidoleNietneriBounceBackSkillDescription20,
        PheidoleNietneriGladiatorSkillsSkill() =>
          l10n.pheidoleNietneriGladiatorSkillsSkillDescription20,
        PheidoleNietneriStrongShellSkill() =>
          l10n.pheidoleNietneriStrongShellSkillDescription20,
        PredatorBloodyBattleSkill() =>
          l10n.predatorBloodyBattleSkillDescription20,
        PredatorMenaceSkill() => l10n.predatorMenaceSkillDescription20,
        PredatorFlexibleRobberySkill() =>
          l10n.predatorFlexibleRobberySkillDescription20,
        ProattaKnockbackSkill() => l10n.proattaKnockbackSkillDescription20,
        ProattaDisablingCombosSkill() =>
          l10n.proattaDisablingCombosSkillDescription20,
        ProattaHorrorHunterSkill() =>
          l10n.proattaHorrorHunterSkillDescription20,
        ProcryptocerusAdlerziComprehensiveDefenseSkill() =>
          l10n.procryptocerusAdlerziComprehensiveDefenseSkillDescription20,
        ProcryptocerusAdlerziSavageChargeSkill() =>
          l10n.procryptocerusAdlerziSavageChargeSkillDescription20,
        ProcryptocerusAdlerziBigBiteSkill() =>
          l10n.procryptocerusAdlerziBigBiteSkillDescription20,
        ReapMasterBigBiteSkill() => l10n.reapMasterBigBiteSkillDescription20,
        ReapMasterThrillOfTheHuntSkill() =>
          l10n.reapMasterThrillOfTheHuntSkillDescription20,
        ReapMasterGrievousBiteSkill() =>
          l10n.reapMasterGrievousBiteSkillDescription20,
        RockBanditRageRushSkill() => l10n.rockBanditRageRushSkillDescription20,
        RockBanditHuggerBiteSkill() =>
          l10n.rockBanditHuggerBiteSkillDescription20,
        RockBanditWarfareLeadershipSkill() =>
          l10n.rockBanditWarfareLeadershipSkillDescription20,
        RubySlenderRevengeSkill() => l10n.rubySlenderRevengeSkillDescription20,
        RubySlenderSelfAdjustingSkill() =>
          l10n.rubySlenderSelfAdjustingSkillDescription20,
        RubySlenderWarfareLeadershipSkill() =>
          l10n.rubySlenderWarfareLeadershipSkillDescription20,
        SaharanSilverAntRapidMomentumSkill() =>
          l10n.saharanSilverAntRapidMomentumSkillDescription20,
        SaharanSilverAntSilverGleamSkill() =>
          l10n.saharanSilverAntSilverGleamSkillDescription20,
        SaharanSilverAntPrecisionLongshotSkill() =>
          l10n.saharanSilverAntPrecisionLongshotSkillDescription20,
        ShieldWardenHealingPowerSkill() =>
          l10n.shieldWardenHealingPowerSkillDescription20,
        ShieldWardenFightToDeathSkill() =>
          l10n.shieldWardenFightToDeathSkillDescription20,
        ShieldWardenProtectionPostureSkill() =>
          l10n.shieldWardenProtectionPostureSkillDescription20,
        ShikareeMasterInfiniteDeadhuntSkill() =>
          l10n.shikareeMasterInfiniteDeadhuntSkillDescription20,
        ShikareeMasterRampantAttackSkill() =>
          l10n.shikareeMasterRampantAttackSkillDescription20,
        ShikareeMasterAudaciousChargeSkill() =>
          l10n.shikareeMasterAudaciousChargeSkillDescription20,
        SlimArchedBigBiteSkill() => l10n.slimArchedBigBiteSkillDescription20,
        SlimArchedBlitzkriegSkill() =>
          l10n.slimArchedBlitzkriegSkillDescription20,
        SlimArchedSuppressingAttackSkill() =>
          l10n.slimArchedSuppressingAttackSkillDescription20,
        StrumigenysEggersiStablePostureSkill() =>
          l10n.strumigenysEggersiStablePostureSkillDescription20,
        StrumigenysEggersiDeceptiveFormSkill() =>
          l10n.strumigenysEggersiDeceptiveFormSkillDescription20,
        StrumigenysEggersiKeenIntuitionSkill() =>
          l10n.strumigenysEggersiKeenIntuitionSkillDescription20,
        WeaverAntAcidAssaultSkill() =>
          l10n.weaverAntAcidAssaultSkillDescription20,
        WeaverAntFieryThrashSkill() =>
          l10n.weaverAntFieryThrashSkillDescription20,
        WeaverAntTacticalCounterAttackSkill() =>
          l10n.weaverAntTacticalCounterAttackSkillDescription20,
        WhiteVelvetMasterOfDisguiseSkill() =>
          l10n.whiteVelvetMasterOfDisguiseSkillDescription20,
        WhiteVelvetHealingPowerSkill() =>
          l10n.whiteVelvetHealingPowerSkillDescription20,
        WhiteVelvetWhiteGuardianSkill() =>
          l10n.whiteVelvetWhiteGuardianSkillDescription20,
        WiseBerserkerCruelStrikeSkill() =>
          l10n.wiseBerserkerCruelStrikeSkillDescription20,
        WiseBerserkerContinuousBiteSkill() =>
          l10n.wiseBerserkerContinuousBiteSkillDescription20,
        WiseBerserkerBattleMemorySkill() =>
          l10n.wiseBerserkerBattleMemorySkillDescription20,
      };
}
