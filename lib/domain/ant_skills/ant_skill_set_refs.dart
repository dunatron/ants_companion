import 'package:ants_companion/core/models/stat_type.dart';
import 'package:ants_companion/domain/ant_skills/models/ant_skill.dart';
import 'package:ants_companion/domain/ant_skills/models/ant_skill_set.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';

class AntSkillSetRefs {
  static const _tertiaryDefense_30_55 =
      TertiaryDefense(percentage10: 30, percentage20: 55);
  static const _tertiaryAttack_30_55 =
      TertiaryAttack(percentage10: 30, percentage20: 55);

  static const _tertiaryDefense_35_65 =
      TertiaryDefense(percentage10: 35, percentage20: 65);
  static const _tertiaryAttack_35_65 =
      TertiaryAttack(percentage10: 35, percentage20: 65);

  static const _tertiaryDefense_35_70 =
      TertiaryDefense(percentage10: 35, percentage20: 70);
  static const _tertiaryAttack_35_70 =
      TertiaryAttack(percentage10: 35, percentage20: 70);

  static const _tertiaryDefense_38_76 =
      TertiaryDefense(percentage10: 38, percentage20: 76);
  static const _tertiaryAttack_38_76 =
      TertiaryAttack(percentage10: 38, percentage20: 76);

  static const _tertiaryDefense_43_86 =
      TertiaryDefense(percentage10: 43, percentage20: 86);
  static const _tertiaryAttack_43_86 =
      TertiaryAttack(percentage10: 43, percentage20: 86);

  static const _tertiaryDefense_48_96 =
      TertiaryDefense(percentage10: 48, percentage20: 96);
  static const _tertiaryAttack_48_96 =
      TertiaryAttack(percentage10: 48, percentage20: 96);

  static const _tertiaryDefense_60_120 =
      TertiaryDefense(percentage10: 60, percentage20: 120);
  static const _tertiaryAttack_60_120 =
      TertiaryAttack(percentage10: 60, percentage20: 120);

  static const acidGeneralSkillSet = AntSkillSet(
    skill2: AcidGeneralWeaknessRaidSkill(),
    skill3: _tertiaryDefense_35_70,
    skill4: _tertiaryAttack_35_70,
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
    skill3: _tertiaryDefense_48_96,
    skill4: _tertiaryAttack_48_96,
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
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
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
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
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
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
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
    skill3: _tertiaryDefense_60_120,
    skill4: _tertiaryAttack_60_120,
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
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
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
    skill3: _tertiaryDefense_35_65,
    skill4: _tertiaryAttack_35_65,
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
    skill3: _tertiaryDefense_30_55,
    skill4: _tertiaryAttack_30_55,
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
    skill3: _tertiaryDefense_60_120,
    skill4: _tertiaryAttack_60_120,
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
    skill3: _tertiaryDefense_60_120,
    skill4: _tertiaryAttack_60_120,
    skill5: CrematogasterInflataMasterMimicSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.defense,
      statPercent10: 60,
      statPercent20: 100,
    ),
    skill8: CrematogasterInflataHealingMucusSkill(),
  );

  static const crimsonFraggerSkillSet = AntSkillSet(
    skill2: CrimsonFraggerPiercingAttackSkill(),
    skill3: _tertiaryDefense_35_65,
    skill4: _tertiaryAttack_35_65,
    skill5: CrimsonFraggerDoubleHitSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.defense,
      statPercent10: 35,
      statPercent20: 57,
    ),
    skill8: CrimsonFraggerAdequatePreparationSkill(),
  );

  static const crimsonPearlSkillSet = AntSkillSet(
    skill2: CrimsonPearlBrutalCombosSkill(),
    skill3: _tertiaryDefense_35_65,
    skill4: _tertiaryAttack_35_65,
    skill5: CrimsonPearlParasiticStingerSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.attack,
      statPercent10: 35,
      statPercent20: 57,
    ),
    skill8: CrimsonPearlVariableMimicsSkill(),
  );

  static const cyphomyrmexRimosusSkillSet = AntSkillSet(
    skill2: CyphomyrmexRimosusPowerfulHeadbuttSkill(),
    skill3: _tertiaryDefense_60_120,
    skill4: _tertiaryAttack_60_120,
    skill5: CyphomyrmexRimosusGermPropagationSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.attack,
      statPercent10: 60,
      statPercent20: 100,
    ),
    skill8: CyphomyrmexRimosusBeneficialBacteriaSkill(),
  );

  static const darkGiantSkillSet = AntSkillSet(
    skill2: DarkGiantCounterStrikeSkill(),
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
    skill5: DarkGiantMenaceSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.attack,
      statPercent10: 38,
      statPercent20: 66,
    ),
    skill8: DarkGiantWarfareLeadershipSkill(),
  );

  static const darkHerculesSkillSet = AntSkillSet(
    skill2: DarkHerculesFatalBiteSkill(),
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
    skill5: DarkHerculesStrongGuardSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.attack,
      statPercent10: 38,
      statPercent20: 66,
    ),
    skill8: DarkHerculesBurningCourageSkill(),
  );

  static const dolichoderusBispinosusSkillSet = AntSkillSet(
    skill2: DolichoderusBispinosusImmediateSupportSkill(),
    skill3: _tertiaryDefense_48_96,
    skill4: _tertiaryAttack_48_96,
    skill5: DolichoderusBispinosusAgileAttackSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.health,
      statPercent10: 30,
      statPercent20: 35,
    ),
    skill8: DolichoderusBispinosusExtraDamageSkill(),
  );

  static const driverAntSkillSet = AntSkillSet(
    skill2: DriverAntBlitzkriegSkill(),
    skill3: _tertiaryDefense_30_55,
    skill4: _tertiaryAttack_30_55,
    skill5: DriverAntSharpTearingSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.defense,
      statPercent10: 30,
      statPercent20: 50,
    ),
    skill8: DriverAntWeaknessStrikeSkill(),
  );

  static const duskyLurkerSkillSet = AntSkillSet(
    skill2: DuskyLurkerSneakAttackSkill(),
    skill3: _tertiaryDefense_35_65,
    skill4: _tertiaryAttack_35_65,
    skill5: DuskyLurkerApplyingTacticsSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.attack,
      statPercent10: 35,
      statPercent20: 57,
    ),
    skill8: DuskyLurkerTrueLeaderSkill(),
  );

  static const emeraldJewelAntSkillSet = AntSkillSet(
    skill2: EmeraldJewelAntStealthAssassinateSkill(),
    skill3: _tertiaryDefense_60_120,
    skill4: _tertiaryAttack_60_120,
    skill5: EmeraldJewelAntCruelParasitismSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.attack,
      statPercent10: 60,
      statPercent20: 100,
    ),
    skill8: EmeraldJewelAntParasiticDevourSkill(),
  );

  static const enigmaticTaylorSkillSet = AntSkillSet(
    skill2: EnigmaticTaylorSneakAttackSkill(),
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
    skill5: EnigmaticTaylorFootRendSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.attack,
      statPercent10: 38,
      statPercent20: 66,
    ),
    skill8: EnigmaticTaylorWarfareLeadershipSkill(),
  );

  static const formicaClaraSkillSet = AntSkillSet(
    skill2: FormicaClaraSleekChitinSkill(),
    skill3: _tertiaryDefense_48_96,
    skill4: _tertiaryAttack_48_96,
    skill5: FormicaClaraAgileDashSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.defense,
      statPercent10: 48,
      statPercent20: 80,
    ),
    skill8: FormicaClaraDazzlingSwashSkill(),
  );

  static const ghostAntSkillSet = AntSkillSet(
    skill2: GhostAntClearHeadSkill(),
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
    skill5: GhostAntGhostStrikeSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.health,
      statPercent10: 15,
      statPercent20: 25,
    ),
    skill8: GhostAntDeliberateAttackSkill(),
  );

  static const giantToothSkillSet = AntSkillSet(
    skill2: GiantToothWeaknessStrikeSkill(),
    skill3: _tertiaryDefense_30_55,
    skill4: _tertiaryAttack_30_55,
    skill5: GiantToothDisablingAttackSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.health,
      statPercent10: 15,
      statPercent20: 25,
    ),
    skill8: GiantToothBigBiteSkill(),
  );

  static const goldArmorSkillSet = AntSkillSet(
    skill2: GoldArmorBigBiteSkill(),
    skill3: _tertiaryDefense_30_55,
    skill4: _tertiaryAttack_30_55,
    skill5: GoldArmorRampantAttackSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.attack,
      statPercent10: 30,
      statPercent20: 50,
    ),
    skill8: GoldArmorBlitzkriegSkill(),
  );

  static const goldenCrystalSkillSet = AntSkillSet(
    skill1: DominanceThree(),
    skill2: GoldenCrystalBattleFeverSkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: GoldenCrystalViolentlyPoisonousSkill(),
    skill6: ColonyLeaderSkill(),
    skill7: GoldenCrystalMasterHunterSkill(),
    skill8: GoldenCrystalSwoopSkill(),
  );

  static const goldenSpinySkillSet = AntSkillSet(
    skill2: GoldenSpinyBigBiteSkill(),
    skill3: _tertiaryDefense_30_55,
    skill4: _tertiaryAttack_30_55,
    skill5: GoldenSpinyPiercingAttackSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.defense,
      statPercent10: 30,
      statPercent20: 50,
    ),
    skill8: GoldenSpinyAmbushSkill(),
  );

  static const goldenSugarSkillSet = AntSkillSet(
    skill2: GoldenSugarBigBiteSkill(),
    skill3: _tertiaryDefense_30_55,
    skill4: _tertiaryAttack_30_55,
    skill5: GoldenSugarPiercingStrikeSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.attack,
      statPercent10: 30,
      statPercent20: 50,
    ),
    skill8: GoldenSugarComboStrikesSkill(),
  );

  static const goldenVenomSkillSet = AntSkillSet(
    skill2: GoldenVenomRampantAttackSkill(),
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
    skill5: GoldenVenomParalysisToxinSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.attack,
      statPercent10: 38,
      statPercent20: 66,
    ),
    skill8: GoldenVenomBladePincerSkill(),
  );

  static const gracefulTwigAntSkillSet = AntSkillSet(
    skill2: GracefulTwigAntAcidicSpraySkill(),
    skill3: _tertiaryDefense_48_96,
    skill4: _tertiaryAttack_48_96,
    skill5: GracefulTwigAntHuntingInstinctSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.defense,
      statPercent10: 48,
      statPercent20: 80,
    ),
    skill8: GracefulTwigAntUnyieldingDeterminationSkill(),
  );

  static const graveDiggerSkillSet = AntSkillSet(
    skill2: GraveDiggerToxicSpraySkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: GraveDiggerNervePoisonSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.health,
      statPercent10: 18,
      statPercent20: 30,
    ),
    skill8: GraveDiggerWarfareLeadershipSkill(),
  );

  static const guardGeneralSkillSet = AntSkillSet(
    skill2: GuardGeneralLightningBlitzkriegSkill(),
    skill3: _tertiaryDefense_35_70,
    skill4: _tertiaryAttack_35_70,
    skill5: GuardGeneralAgileMovementSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.defense,
      statPercent10: 35,
      statPercent20: 70,
    ),
    skill8: GuardGeneralDisablingCombosSkill(),
  );

  static const hairyPantherSkillSet = AntSkillSet(
    skill2: HairyPantherRampageStrikeSkill(),
    skill3: _tertiaryDefense_48_96,
    skill4: _tertiaryAttack_48_96,
    skill5: HairyPantherFurySwipeSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.attack,
      statPercent10: 48,
      statPercent20: 80,
    ),
    skill8: HairyPantherFierceNatureSkill(),
  );

  static const jackJumperSkillSet = AntSkillSet(
    skill2: JackJumperRampantAttackSkill(),
    skill3: _tertiaryDefense_30_55,
    skill4: _tertiaryAttack_30_55,
    skill5: JackJumperJumpingAttackSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.attack,
      statPercent10: 30,
      statPercent20: 50,
    ),
    skill8: JackJumperBlitzkriegSkill(),
  );

  static const jetBlackSkillSet = AntSkillSet(
    skill2: JetBlackCounterAttackSkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: JetBlackSelfAdjustingSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.attack,
      statPercent10: 43,
      statPercent20: 73,
    ),
    skill8: JetBlackCarvedSkinSkill(),
  );

  static const lathySnifferSkillSet = AntSkillSet(
    skill2: LathySnifferDoublePowerSkill(),
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
    skill5: LathySnifferTailAssaultSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.attack,
      statPercent10: 38,
      statPercent20: 66,
    ),
    skill8: LathySnifferFrequentlyStrengthenSkill(),
  );

  static const leafDevourerSkillSet = AntSkillSet(
    skill2: LeafDevourerKillingDoubleHitSkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: LeafDevourerBurningCourageSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.attack,
      statPercent10: 43,
      statPercent20: 73,
    ),
    skill8: LeafDevourerWarfareLeadershipSkill(),
  );

  static const leptoglossusPhyllopusSkillSet = AntSkillSet(
    skill2: LeptoglossusPhyllopusAmberBarrierSkill(),
    skill3: _tertiaryDefense_60_120,
    skill4: _tertiaryAttack_60_120,
    skill5: LeptoglossusPhyllopusLongAntennaeSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.attack,
      statPercent10: 60,
      statPercent20: 100,
    ),
    skill8: LeptoglossusPhyllopusVenomousStingSkill(),
  );

  static const leptomyrmexBurwelliSkillSet = AntSkillSet(
    skill2: LeptomyrmexBurwelliFatalAssaultSkill(),
    skill3: _tertiaryDefense_48_96,
    skill4: _tertiaryAttack_48_96,
    skill5: LeptomyrmexBurwelliAdaptiveAssaultSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.attack,
      statPercent10: 48,
      statPercent20: 80,
    ),
    skill8: LeptomyrmexBurwelliSweepingStrengthSkill(),
  );

  static const merannoplusBicolorSkillSet = AntSkillSet(
    skill2: MerannoplusBicolorPlushBackArmorSkill(),
    skill3: _tertiaryDefense_60_120,
    skill4: _tertiaryAttack_60_120,
    skill5: MerannoplusBicolorToxicThornSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.health,
      statPercent10: 30,
      statPercent20: 45,
    ),
    skill8: MerannoplusBicolorBufferBarrierSkill(),
  );

  static const merannoplusCastaneusSkillSet = AntSkillSet(
    skill2: MerannoplusCastaneusScarletFurySkill(),
    skill3: _tertiaryDefense_60_120,
    skill4: _tertiaryAttack_60_120,
    skill5: MerannoplusCastaneusBloodyShieldSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.defense,
      statPercent10: 60,
      statPercent20: 100,
    ),
    skill8: MerannoplusCastaneusHealingWithLoveSkill(),
  );

  static const mimicryMasterSkillSet = AntSkillSet(
    skill2: MimicryMasterMouthPieceAttackSkill(),
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
    skill5: MimicryMasterSupressingAttackSkill(),
    skill7: AntSkillSevenMarchSpeed(
      antType: AntType.guardian,
      statType: StatType.attack,
      statPercent10: 30,
      statPercent20: 50,
      speedPercent10: 50,
      speedPercent20: 80,
    ),
    skill8: MimicryMasterSwipeSkill(),
  );

  static const myrmarachneFormicariaSkillSet = AntSkillSet(
    skill2: MyrmarachneFormicariaPrettyShellSkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: MyrmarachneFormicariaDisguiseStealSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.defense,
      statPercent10: 43,
      statPercent20: 73,
    ),
    skill8: MyrmarachneFormicariaJumpingImpactSkill(),
  );

  static const myrmecotypusRettenmeyeriSkillSet = AntSkillSet(
    skill2: MyrmecotypusRettenmeyeriNimblePostureSkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: MyrmecotypusRettenmeyeriPowerOfAwakeningSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.health,
      statPercent10: 18,
      statPercent20: 30,
    ),
    skill8: MyrmecotypusRettenmeyeriHealthFieldSkill(),
  );

  static const newWorldGeneralSkillSet = AntSkillSet(
    skill2: NewWorldGeneralRageBiteSkill(),
    skill3: _tertiaryDefense_35_70,
    skill4: _tertiaryAttack_35_70,
    skill5: NewWorldGeneralDeterenceSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.attack,
      statPercent10: 35,
      statPercent20: 70,
    ),
    skill8: NewWorldGeneralBlitzkriegSkill(),
  );

  static const nimbleTreeAntSkillSet = AntSkillSet(
    skill2: NimbleTreeAntAgilitySkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: NimbleTreeAntPiercingChaseSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.health,
      statPercent10: 18,
      statPercent20: 30,
    ),
    skill8: NimbleTreeAntDeftFootworkSkill(),
  );

  static const pheidoleNietneriSkillSet = AntSkillSet(
    skill2: PheidoleNietneriBounceBackSkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: PheidoleNietneriGladiatorSkillsSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.health,
      statPercent10: 18,
      statPercent20: 30,
    ),
    skill8: PheidoleNietneriStrongShellSkill(),
  );

  static const predatorSkillSet = AntSkillSet(
    skill2: PredatorBloodyBattleSkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: PredatorMenaceSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.health,
      statPercent10: 18,
      statPercent20: 30,
    ),
    skill8: PredatorFlexibleRobberySkill(),
  );

  static const proattaSkillSet = AntSkillSet(
    skill2: ProattaKnockbackSkill(),
    skill3: _tertiaryDefense_35_65,
    skill4: _tertiaryAttack_35_65,
    skill5: ProattaDisablingCombosSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.health,
      statPercent10: 15,
      statPercent20: 25,
    ),
    skill8: ProattaHorrorHunterSkill(),
  );

  static const procryptocerusAdlerziSkillSet = AntSkillSet(
    skill2: ProcryptocerusAdlerziComprehensiveDefenseSkill(),
    skill3: _tertiaryDefense_48_96,
    skill4: _tertiaryAttack_48_96,
    skill5: ProcryptocerusAdlerziSavageChargeSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.health,
      statPercent10: 20,
      statPercent20: 35,
    ),
    skill8: ProcryptocerusAdlerziBigBiteSkill(),
  );

  static const reapMasterSkillSet = AntSkillSet(
    skill2: ReapMasterBigBiteSkill(),
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
    skill5: ReapMasterThrillOfTheHuntSkill(),
    skill7: AntSkillSevenMarchSpeed(
      antType: AntType.shooter,
      statType: StatType.attack,
      statPercent10: 30,
      statPercent20: 50,
      speedPercent10: 50,
      speedPercent20: 80,
    ),
    skill8: ReapMasterGrievousBiteSkill(),
  );

  static const rockBanditSkillSet = AntSkillSet(
    skill2: RockBanditRageRushSkill(),
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
    skill5: RockBanditHuggerBiteSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.attack,
      statPercent10: 38,
      statPercent20: 66,
    ),
    skill8: RockBanditWarfareLeadershipSkill(),
  );

  static const rubySlenderSkillSet = AntSkillSet(
    skill2: RubySlenderRevengeSkill(),
    skill3: _tertiaryDefense_35_65,
    skill4: _tertiaryAttack_35_65,
    skill5: RubySlenderSelfAdjustingSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.health,
      statPercent10: 18,
      statPercent20: 30,
    ),
    skill8: RubySlenderWarfareLeadershipSkill(),
  );

  static const saharanSilverAntSkillSet = AntSkillSet(
    skill2: SaharanSilverAntRapidMomentumSkill(),
    skill3: _tertiaryDefense_60_120,
    skill4: _tertiaryAttack_60_120,
    skill5: SaharanSilverAntSilverGleamSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.attack,
      statPercent10: 60,
      statPercent20: 100,
    ),
    skill8: SaharanSilverAntPrecisionLongshotSkill(),
  );

  static const shieldWardenSkillSet = AntSkillSet(
    skill2: ShieldWardenHealingPowerSkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: ShieldWardenFightToDeathSkill(),
    skill7: AntSkillSeven(
      antType: AntType.guardian,
      statType: StatType.health,
      statPercent10: 18,
      statPercent20: 30,
    ),
    skill8: ShieldWardenProtectionPostureSkill(),
  );

  static const shikareeMasterSkillSet = AntSkillSet(
    skill2: ShikareeMasterInfiniteDeadhuntSkill(),
    skill3: _tertiaryDefense_38_76,
    skill4: _tertiaryAttack_38_76,
    skill5: ShikareeMasterRampantAttackSkill(),
    skill7: AntSkillSevenMarchSpeed(
      antType: AntType.carrier,
      statType: StatType.attack,
      statPercent10: 30,
      statPercent20: 50,
      speedPercent10: 50,
      speedPercent20: 80,
    ),
    skill8: ShikareeMasterAudaciousChargeSkill(),
  );

  static const slimArchedSkillSet = AntSkillSet(
    skill2: SlimArchedBigBiteSkill(),
    skill3: _tertiaryDefense_30_55,
    skill4: _tertiaryAttack_30_55,
    skill5: SlimArchedBlitzkriegSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.health,
      statPercent10: 15,
      statPercent20: 25,
    ),
    skill8: SlimArchedSuppressingAttackSkill(),
  );

  static const strumigenysEggersiSkillSet = AntSkillSet(
    skill2: StrumigenysEggersiStablePostureSkill(),
    skill3: _tertiaryDefense_48_96,
    skill4: _tertiaryAttack_48_96,
    skill5: StrumigenysEggersiDeceptiveFormSkill(),
    skill7: AntSkillSeven(
      antType: AntType.carrier,
      statType: StatType.health,
      statPercent10: 20,
      statPercent20: 35,
    ),
    skill8: StrumigenysEggersiKeenIntuitionSkill(),
  );

  static const weaverAntSkillSet = AntSkillSet(
    skill2: WeaverAntAcidAssaultSkill(),
    skill3: _tertiaryDefense_48_96,
    skill4: _tertiaryAttack_48_96,
    skill5: WeaverAntFieryThrashSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.defense,
      statPercent10: 48,
      statPercent20: 80,
    ),
    skill8: WeaverAntTacticalCounterAttackSkill(),
  );

  static const whiteVelvetSkillSet = AntSkillSet(
    skill2: WhiteVelvetMasterOfDisguiseSkill(),
    skill3: _tertiaryDefense_35_65,
    skill4: _tertiaryAttack_35_65,
    skill5: WhiteVelvetHealingPowerSkill(),
    skill7: AntSkillSeven(
      antType: AntType.universal,
      statType: StatType.attack,
      statPercent10: 35,
      statPercent20: 60,
    ),
    skill8: WhiteVelvetWhiteGuardianSkill(),
  );

  static const wiseBerserkerSkillSet = AntSkillSet(
    skill2: WiseBerserkerCruelStrikeSkill(),
    skill3: _tertiaryDefense_43_86,
    skill4: _tertiaryAttack_43_86,
    skill5: WiseBerserkerContinuousBiteSkill(),
    skill7: AntSkillSeven(
      antType: AntType.shooter,
      statType: StatType.attack,
      statPercent10: 43,
      statPercent20: 73,
    ),
    skill8: WiseBerserkerBattleMemorySkill(),
  );
}
