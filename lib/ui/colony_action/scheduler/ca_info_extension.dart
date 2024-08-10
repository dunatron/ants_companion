import 'dart:math';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CATask {
  CATask(this.title, this.points);

  final String title;
  final int points;

  static CATask buildingPower(AppLocalizations l10n) =>
      CATask(l10n.caTaskBuildingPower, 1000);

  static CATask enhancementPower(AppLocalizations l10n) =>
      CATask(l10n.caTaskEnhancementPower, 1000);

  static CATask evolutionPower(AppLocalizations l10n) =>
      CATask(l10n.caTaskEvolutionPower, 400);

  static CATask speedupEvolving(AppLocalizations l10n) =>
      CATask(l10n.caTaskSpeedupEvolving, 400);

  static CATask consumeBioEssence(AppLocalizations l10n) =>
      CATask(l10n.caTaskConsumeBioEssence, 25000);

  static CATask consumeSpecialHypha(AppLocalizations l10n) =>
      CATask(l10n.caTaskConsumeSpecialHypha, 10000);

  static CATask consumeHypha(AppLocalizations l10n) =>
      CATask(l10n.caTaskConsumeHypha, 2000);

  static List<CATask> consumeFungusList(AppLocalizations l10n) =>
      List.generate(4, (index) => CATask.consumeFungus(index + 1, l10n));

  static CATask consumeFungus(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskConsumeFungus(tier),
        switch (tier) { 1 => 200, 2 => 1000, 3 => 4000, 4 => 10000, _ => 200 },
      );

  static List<CATask> obtainCellList(AppLocalizations l10n) =>
      List.generate(6, (index) => CATask.obtainCell(index + 2, l10n));

  static CATask obtainCell(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskObtainCell(tier),
        switch (tier) {
          2 => 10000,
          3 => 100000,
          4 => 600000,
          5 => 2400000,
          6 => 5000000,
          7 => 10000000,
          _ => 0
        },
      );

  static List<CATask> consumeCellList(AppLocalizations l10n) =>
      List.generate(6, (index) => CATask.consumeCell(index + 2, l10n));

  static CATask consumeCell(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskConsumeCell(tier),
        switch (tier) {
          2 => 6000,
          3 => 60000,
          4 => 400000,
          5 => 1600000,
          6 => 3500000,
          7 => 7000000,
          _ => 0
        },
      );

  static CATask speedupAny(AppLocalizations l10n) =>
      CATask(l10n.caTaskSpeedupAny, 400);

  static CATask speedupBuilding(AppLocalizations l10n) =>
      CATask(l10n.caTaskSpeedupBuilding, 900);

  static CATask speedupBuildingEnhancement(AppLocalizations l10n) =>
      CATask(l10n.caTaskSpeedupBuildingEnhancement, 900);

  static CATask speedupHatchingSoldiers(AppLocalizations l10n) =>
      CATask(l10n.caTaskSpeedupHatchingSoldiers, 400);

  static List<CATask> hatchSoldierAntsList(AppLocalizations l10n) =>
      List.generate(10, (index) => CATask.hatchSoldierAnt(index + 1, l10n));

  static CATask hatchSoldierAnt(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskHatchSoldierAnt(tier),
        switch (tier) {
          1 => 5,
          2 => 25,
          3 => 50,
          4 => 65,
          5 => 90,
          6 => 115,
          7 => 140,
          8 => 165,
          9 => 190,
          10 => 215,
          _ => 0
        },
      );

  static List<CATask> consumeCellFluidList(AppLocalizations l10n) =>
      List.generate(4, (index) => CATask.consumeCellFluid(index + 1, l10n));

  static CATask consumeCellFluid(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskConsumeCellFluid(tier),
        switch (tier) { 1 => 200, 2 => 1000, 3 => 4000, 4 => 10000, _ => 0 },
      );

  static CATask consumeCreatureRemain(AppLocalizations l10n) =>
      CATask(l10n.caTaskConsumeCreatureRemain, 700);

  static CATask consumeSpore(AppLocalizations l10n) =>
      CATask(l10n.caTaskConsumeSpore, 2000);

  static CATask redeemSpore(AppLocalizations l10n) =>
      CATask(l10n.caTaskRedeemSpore, 1000);

  static List<CATask> consumeEggs(AppLocalizations l10n) => [
        CATask(l10n.caTaskUseTimeLimitedEgg, 200000),
        CATask(l10n.caTaskUseTertiaryEgg, 200000),
        CATask(l10n.caTaskUseSecondaryEgg, 50000),
        CATask(l10n.caTaskUsePrimaryEgg, 10000),
        CATask(l10n.caTaskUseSeasonEgg, 200000),
      ];

  static CATask unlockSpecialAntSkill(AppLocalizations l10n) =>
      CATask(l10n.caTaskUnlockSpecialAntSkill, 20000);

  static CATask specialAntExperience(AppLocalizations l10n) =>
      CATask(l10n.caTaskSpecialAntExperience, 1);

  static List<CATask> starUpSpecialAntsList(AppLocalizations l10n) =>
      List.generate(8, (index) => CATask.starUpSpecialAnts(index + 1, l10n));

  static CATask starUpSpecialAnts(int star, AppLocalizations l10n) => CATask(
        l10n.caTaskStarUpSpecialAnts(star),
        switch (star) {
          1 => 1500000,
          2 => 2000000,
          3 => 2500000,
          4 => 3000000,
          5 => 3500000,
          6 => 4000000,
          7 => 4800000,
          8 => 6000000,
          _ => 0
        },
      );

  static List<CATask> obtainGeneList(AppLocalizations l10n) =>
      List.generate(9, (index) => CATask.obtainGene(index + 2, l10n));

  static CATask obtainGene(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskObtainGene(tier),
        switch (tier) {
          2 => 10000,
          3 => 40000,
          4 => 100000,
          5 => 250000,
          6 => 500000,
          7 => 1200000,
          8 => 2100000,
          9 => 3200000,
          10 => 4500000,
          _ => 0
        },
      );

  static List<CATask> consumeGeneList(AppLocalizations l10n) =>
      List.generate(9, (index) => CATask.consumeGene(index + 2, l10n));

  static CATask consumeGene(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskConsumeGene(tier),
        switch (tier) {
          2 => 6000,
          3 => 24000,
          4 => 60000,
          5 => 150000,
          6 => 300000,
          7 => 800000,
          8 => 1400000,
          9 => 2240000,
          10 => 3150000,
          _ => 0
        },
      );

  static List<CATask> consumeGeneticFactorList(AppLocalizations l10n) =>
      List.generate(4, (index) => CATask.consumeGeneticFactor(index + 1, l10n));

  static CATask consumeGeneticFactor(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskConsumeGeneticFactor(tier),
        switch (tier) { 1 => 200, 2 => 1000, 3 => 4000, 4 => 10000, _ => 0 },
      );

  static List<CATask> obtainGermList(AppLocalizations l10n) =>
      List.generate(9, (index) => CATask.obtainGerm(index + 2, l10n));

  static CATask obtainGerm(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskObtainGerm(tier),
        switch (tier) {
          2 => 10000,
          3 => 40000,
          4 => 100000,
          5 => 250000,
          6 => 500000,
          7 => 1200000,
          8 => 2100000,
          9 => 3200000,
          10 => 4500000,
          _ => 0
        },
      );

  static List<CATask> consumeGermList(AppLocalizations l10n) =>
      List.generate(9, (index) => CATask.consumeGerm(index + 2, l10n));

  static CATask consumeGerm(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskConsumeGerm(tier),
        switch (tier) {
          2 => 6000,
          3 => 24000,
          4 => 60000,
          5 => 150000,
          6 => 300000,
          7 => 800000,
          8 => 1400000,
          9 => 2240000,
          10 => 3150000,
          _ => 0
        },
      );

  static List<CATask> consumeGermMediumList(AppLocalizations l10n) =>
      List.generate(4, (index) => CATask.consumeGermMedium(index + 1, l10n));

  static CATask consumeGermMedium(int tier, AppLocalizations l10n) => CATask(
        l10n.caTaskConsumeGermMedium(tier),
        switch (tier) { 1 => 200, 2 => 1000, 3 => 4000, 4 => 10000, _ => 0 },
      );

  static List<CATask> colonyActionTaskList(
    String caKey,
    AppLocalizations l10n,
  ) =>
      switch (caKey) {
        // Monday
        '1-0' || '1-8' || '1-16' => monday1(l10n),
        '1-1' || '1-9' || '1-17' => monday2(l10n),
        '1-2' || '1-10' || '1-18' => monday3(l10n),
        '1-3' || '1-11' || '1-19' => monday4(l10n),
        '1-4' || '1-12' || '1-20' => monday5(l10n),
        '1-5' || '1-13' || '1-21' => monday6(l10n),
        '1-6' || '1-14' || '1-22' => monday7(l10n),
        '1-7' || '1-15' || '1-23' => monday8(l10n),
        // Tuesday
        '2-0' || '2-8' || '2-16' => tuesday1(l10n),
        '2-1' || '2-9' || '2-17' => tuesday2(l10n),
        '2-2' || '2-10' || '2-18' => tuesday3(l10n),
        '2-3' || '2-11' || '2-19' => tuesday4(l10n),
        '2-4' || '2-12' || '2-20' => tuesday5(l10n),
        '2-5' || '2-13' || '2-21' => tuesday6(l10n),
        '2-6' || '2-14' || '2-22' => tuesday7(l10n),
        '2-7' || '2-15' || '2-23' => tuesday8(l10n),
        // Wed
        '3-0' || '3-8' || '3-16' => wednesday1(l10n),
        '3-1' || '3-9' || '3-17' => wednesday2(l10n),
        '3-2' || '3-10' || '3-18' => wednesday3(l10n),
        '3-3' || '3-11' || '3-19' => wednesday4(l10n),
        '3-4' || '3-12' || '3-20' => wednesday5(l10n),
        '3-5' || '3-13' || '3-21' => wednesday6(l10n),
        '3-6' || '3-14' || '3-22' => wednesday7(l10n),
        '3-7' || '3-15' || '3-23' => wednesday8(l10n),
        // Thursday
        '4-0' || '4-8' || '4-16' => thursday1(l10n),
        '4-1' || '4-9' || '4-17' => thursday2(l10n),
        '4-2' || '4-10' || '4-18' => thursday3(l10n),
        '4-3' || '4-11' || '4-19' => thursday4(l10n),
        '4-4' || '4-12' || '4-20' => thursday5(l10n),
        '4-5' || '4-13' || '4-21' => thursday6(l10n),
        '4-6' || '4-14' || '4-22' => thursday7(l10n),
        '4-7' || '4-15' || '4-23' => thursday8(l10n),
        // Friday
        '5-0' || '5-8' || '5-16' => friday1(l10n),
        '5-1' || '5-9' || '5-17' => friday2(l10n),
        '5-2' || '5-10' || '5-18' => friday3(l10n),
        '5-3' || '5-11' || '5-19' => friday4(l10n),
        '5-4' || '5-12' || '5-20' => friday5(l10n),
        '5-5' || '5-13' || '5-21' => friday6(l10n),
        '5-6' || '5-14' || '5-22' => friday7(l10n),
        '5-7' || '5-15' || '5-23' => friday8(l10n),
        // Saturday
        '6-0' || '6-8' || '6-16' => saturday1(l10n),
        '6-1' || '6-9' || '6-17' => saturday2(l10n),
        '6-2' || '6-10' || '6-18' => saturday3(l10n),
        '6-3' || '6-11' || '6-19' => saturday4(l10n),
        '6-4' || '6-12' || '6-20' => saturday5(l10n),
        '6-5' || '6-13' || '6-21' => saturday6(l10n),
        '6-6' || '6-14' || '6-22' => saturday7(l10n),
        '6-7' || '6-15' || '6-23' => saturday8(l10n),
        // Sunday
        '7-0' || '7-8' || '7-16' => [],
        '7-1' || '7-9' || '7-17' => [],
        '7-2' || '7-10' || '7-18' => [],
        '7-3' || '7-11' || '7-19' => [],
        '7-4' || '7-12' || '7-20' => [],
        '7-5' || '7-13' || '7-21' => [],
        '7-6' || '7-14' || '7-22' => [],
        '7-7' || '7-15' || '7-23' => [],
        String() => throw UnimplementedError('colonyActionPointsInfo $caKey'),
      };

  static List<CATask> monday1(AppLocalizations l10n) {
    return [CATask.buildingPower(l10n), CATask.enhancementPower(l10n)];
  }

  static List<CATask> monday2(AppLocalizations l10n) {
    return [
      CATask.evolutionPower(l10n),
      CATask.speedupEvolving(l10n),
      CATask.consumeBioEssence(l10n),
      CATask.consumeSpecialHypha(l10n),
      CATask.consumeHypha(l10n),
      ...CATask.consumeFungusList(l10n)
    ];
  }

  static List<CATask> monday3(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> monday4(AppLocalizations l10n) {
    return [
      CATask.speedupAny(l10n),
      CATask.consumeBioEssence(l10n),
      CATask.consumeSpecialHypha(l10n),
      CATask.consumeHypha(l10n),
      ...CATask.consumeFungusList(l10n),
    ];
  }

  static List<CATask> monday5(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.enhancementPower(l10n)
    ];
  }

  static List<CATask> monday6(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.speedupBuilding(l10n),
      CATask.consumeBioEssence(l10n),
      CATask.consumeSpecialHypha(l10n),
      CATask.consumeHypha(l10n),
      ...CATask.consumeFungusList(l10n),
      CATask.speedupBuildingEnhancement(l10n)
    ];
  }

  static List<CATask> monday7(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.enhancementPower(l10n),
      ...CATask.hatchSoldierAntsList(l10n),
    ];
  }

  static List<CATask> monday8(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.enhancementPower(l10n),
      ...CATask.hatchSoldierAntsList(l10n),
      CATask.consumeBioEssence(l10n),
      CATask.consumeSpecialHypha(l10n),
      CATask.consumeHypha(l10n),
      ...CATask.consumeFungusList(l10n),
    ];
  }

  static List<CATask> tuesday1(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.speedupBuilding(l10n),
      CATask.enhancementPower(l10n),
      CATask.speedupBuildingEnhancement(l10n)
    ];
  }

  static List<CATask> tuesday2(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.consumeBioEssence(l10n),
      CATask.enhancementPower(l10n),
      ...CATask.obtainCellList(l10n),
      ...CATask.consumeCellList(l10n),
      ...CATask.consumeCellFluidList(l10n),
    ];
  }

  static List<CATask> tuesday3(AppLocalizations l10n) {
    return [
      CATask.speedupHatchingSoldiers(l10n),
    ];
  }

  static List<CATask> tuesday4(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.enhancementPower(l10n),
      ...CATask.hatchSoldierAntsList(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainCellList(l10n),
      ...CATask.consumeCellList(l10n),
      ...CATask.consumeCellFluidList(l10n),
    ];
  }

  static List<CATask> tuesday5(AppLocalizations l10n) {
    return [
      CATask.speedupHatchingSoldiers(l10n),
      CATask.speedupEvolving(l10n),
      CATask.speedupBuilding(l10n),
    ];
  }

  static List<CATask> tuesday6(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.speedupHatchingSoldiers(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainCellList(l10n),
      ...CATask.consumeCellList(l10n),
      ...CATask.consumeCellFluidList(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> tuesday7(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      ...CATask.hatchSoldierAntsList(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> tuesday8(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainCellList(l10n),
      ...CATask.consumeCellList(l10n),
      ...CATask.consumeCellFluidList(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> wednesday1(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.speedupBuilding(l10n),
      CATask.enhancementPower(l10n),
      CATask.speedupBuildingEnhancement(l10n)
    ];
  }

  static List<CATask> wednesday2(AppLocalizations l10n) {
    return [
      CATask.evolutionPower(l10n),
      CATask.speedupEvolving(l10n),
      CATask.consumeCreatureRemain(l10n)
    ];
  }

  static List<CATask> wednesday3(AppLocalizations l10n) {
    return [CATask.speedupHatchingSoldiers(l10n)];
  }

  static List<CATask> wednesday4(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.consumeCreatureRemain(l10n),
      CATask.enhancementPower(l10n)
    ];
  }

  static List<CATask> wednesday5(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      ...CATask.hatchSoldierAntsList(l10n),
      CATask.enhancementPower(l10n)
    ];
  }

  static List<CATask> wednesday6(AppLocalizations l10n) {
    return [
      CATask.speedupHatchingSoldiers(l10n),
      CATask.speedupEvolving(l10n),
      CATask.speedupBuilding(l10n),
      CATask.consumeCreatureRemain(l10n),
    ];
  }

  static List<CATask> wednesday7(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.speedupHatchingSoldiers(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> wednesday8(AppLocalizations l10n) {
    return [
      CATask.speedupHatchingSoldiers(l10n),
      CATask.speedupEvolving(l10n),
      CATask.speedupBuilding(l10n),
      CATask.consumeCreatureRemain(l10n)
    ];
  }

  static List<CATask> thursday1(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.speedupBuilding(l10n),
      CATask.enhancementPower(l10n),
      CATask.speedupBuildingEnhancement(l10n),
    ];
  }

  static List<CATask> thursday2(AppLocalizations l10n) {
    return [
      CATask.consumeSpore(l10n),
      CATask.redeemSpore(l10n),
      ...CATask.consumeEggs(l10n),
      CATask.unlockSpecialAntSkill(l10n),
      CATask.specialAntExperience(l10n),
      ...CATask.starUpSpecialAntsList(l10n),
    ];
  }

  static List<CATask> thursday3(AppLocalizations l10n) {
    return [
      CATask.speedupHatchingSoldiers(l10n),
      CATask.speedupEvolving(l10n),
      CATask.speedupBuilding(l10n),
    ];
  }

  static List<CATask> thursday4(AppLocalizations l10n) {
    return [
      CATask.consumeSpore(l10n),
      CATask.redeemSpore(l10n),
      ...CATask.consumeEggs(l10n),
      CATask.unlockSpecialAntSkill(l10n),
      CATask.specialAntExperience(l10n),
      ...CATask.starUpSpecialAntsList(l10n),
    ];
  }

  static List<CATask> thursday5(AppLocalizations l10n) {
    return [CATask.speedupAny(l10n)];
  }

  static List<CATask> thursday6(AppLocalizations l10n) {
    return [
      CATask.consumeSpore(l10n),
      CATask.redeemSpore(l10n),
      ...CATask.consumeEggs(l10n),
      CATask.unlockSpecialAntSkill(l10n),
      CATask.specialAntExperience(l10n),
      ...CATask.starUpSpecialAntsList(l10n),
    ];
  }

  static List<CATask> thursday7(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.speedupHatchingSoldiers(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> thursday8(AppLocalizations l10n) {
    return [
      CATask.redeemSpore(l10n),
      ...CATask.consumeEggs(l10n),
      CATask.unlockSpecialAntSkill(l10n),
      CATask.specialAntExperience(l10n),
      ...CATask.starUpSpecialAntsList(l10n),
    ];
  }

  static List<CATask> friday1(AppLocalizations l10n) {
    return [CATask.speedupAny(l10n)];
  }

  static List<CATask> friday2(AppLocalizations l10n) {
    return [
      CATask.speedupHatchingSoldiers(l10n),
      CATask.speedupEvolving(l10n),
      CATask.speedupBuilding(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainGeneList(l10n),
      ...CATask.consumeGeneList(l10n),
      ...CATask.consumeGeneticFactorList(l10n),
    ];
  }

  static List<CATask> friday3(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.speedupHatchingSoldiers(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> friday4(AppLocalizations l10n) {
    return [
      CATask.speedupHatchingSoldiers(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainGeneList(l10n),
      ...CATask.consumeGeneList(l10n),
      ...CATask.consumeGeneticFactorList(l10n),
    ];
  }

  static List<CATask> friday5(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.speedupHatchingSoldiers(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> friday6(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      ...CATask.hatchSoldierAntsList(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainGeneList(l10n),
      ...CATask.consumeGeneList(l10n),
      ...CATask.consumeGeneticFactorList(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> friday7(AppLocalizations l10n) {
    return [
      CATask.evolutionPower(l10n),
      ...CATask.hatchSoldierAntsList(l10n),
    ];
  }

  static List<CATask> friday8(AppLocalizations l10n) {
    return [
      CATask.speedupAny(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainGeneList(l10n),
      ...CATask.consumeGeneList(l10n),
      ...CATask.consumeGeneticFactorList(l10n),
    ];
  }

  static List<CATask> saturday1(AppLocalizations l10n) {
    return [CATask.speedupAny(l10n)];
  }

  static List<CATask> saturday2(AppLocalizations l10n) {
    return [
      CATask.evolutionPower(l10n),
      CATask.speedupEvolving(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainGermList(l10n),
      ...CATask.consumeGermList(l10n),
      ...CATask.consumeGermMediumList(l10n),
    ];
  }

  static List<CATask> saturday3(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.speedupBuilding(l10n),
      CATask.enhancementPower(l10n),
      CATask.speedupBuildingEnhancement(l10n),
    ];
  }

  static List<CATask> saturday4(AppLocalizations l10n) {
    return [
      CATask.speedupHatchingSoldiers(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainGermList(l10n),
      ...CATask.consumeGermList(l10n),
      ...CATask.consumeGermMediumList(l10n),
    ];
  }

  static List<CATask> saturday5(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.speedupHatchingSoldiers(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> saturday6(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.evolutionPower(l10n),
      CATask.speedupHatchingSoldiers(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainGermList(l10n),
      ...CATask.consumeGermList(l10n),
      ...CATask.consumeGermMediumList(l10n),
      CATask.enhancementPower(l10n),
    ];
  }

  static List<CATask> saturday7(AppLocalizations l10n) {
    return [
      CATask.buildingPower(l10n),
      CATask.enhancementPower(l10n),
      ...CATask.hatchSoldierAntsList(l10n),
    ];
  }

  static List<CATask> saturday8(AppLocalizations l10n) {
    return [
      CATask.evolutionPower(l10n),
      ...CATask.hatchSoldierAntsList(l10n),
      CATask.consumeBioEssence(l10n),
      ...CATask.obtainGermList(l10n),
      ...CATask.consumeGermList(l10n),
      ...CATask.consumeGermMediumList(l10n),
    ];
  }

  static List<CATask> sunday1(AppLocalizations l10n) {
    return [];
  }

  static List<CATask> sunday2(AppLocalizations l10n) {
    return [];
  }

  static List<CATask> sunday3(AppLocalizations l10n) {
    return [];
  }

  static List<CATask> sunday4(AppLocalizations l10n) {
    return [];
  }

  static List<CATask> sunday5(AppLocalizations l10n) {
    return [];
  }

  static List<CATask> sunday6(AppLocalizations l10n) {
    return [];
  }

  static List<CATask> sunday7(AppLocalizations l10n) {
    return [];
  }

  static List<CATask> sunday8(AppLocalizations l10n) {
    return [];
  }
}
