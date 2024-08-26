import 'package:ants_companion/domain/ant_skills/ant_skill_sets.dart';
import 'package:ants_companion/domain/ant_skills/models/ant_skill_set.dart';
import 'package:ants_companion/domain/ants/models/ant_id.dart';

class AntSkills {
  AntSkillSet skillSetForAnt(final AntId antId) {
    return antId.skillSet();
  }
}

extension on AntId {
  AntSkillSet skillSet() => switch (this) {
        AntId.acidGeneral => AntSkillSets.acidGeneralSkillSet,
        AntId.attaSexdens => AntSkillSets.attaSexdensSkillSet,
        AntId.bansheePanda => AntSkillSets.bansheePandaSkillSet,
        AntId.bansheeVelvet => AntSkillSets.bansheeVelvetSkillSet,
        AntId.blackCancer => AntSkillSets.blackCancerSkillSet,
        AntId.blackKnight => AntSkillSets.blackKnightSkillSet,
        AntId.bloodGiant => AntSkillSets.bloodGiantSkillSet,
        AntId.brownRogue => AntSkillSets.brownRogueSkillSet,
        AntId.bulletAnt => AntSkillSets.bulletAntSkillSet,
        AntId.carpenterAnt => AntSkillSets.carpenterAntSkillSet,
        AntId.crematogasterInflata => AntSkillSets.crematogasterInflataSkillSet,
        AntId.crimsonFragger => AntSkillSets.crimsonFraggerSkillSet,
        AntId.crimsonPearl => AntSkillSets.crimsonPearlSkillSet,
        AntId.cyphomyrmexRimosus => AntSkillSets.cyphomyrmexRimosusSkillSet,
        AntId.darkGiant => AntSkillSets.darkGiantSkillSet,
        AntId.darkHercules => AntSkillSets.darkGiantSkillSet,
        AntId.dolichoderusBispinosus =>
          AntSkillSets.dolichoderusBispinosusSkillSet,
        AntId.driverAnt => AntSkillSets.driverAntSkillSet,
        AntId.duskyLurker => AntSkillSets.duskyLurkerSkillSet,
        AntId.emeraldJewelAnt => AntSkillSets.emeraldJewelAntSkillSet,
        AntId.enigmaticTaylor => AntSkillSets.enigmaticTaylorSkillSet,
        AntId.formicaClara => AntSkillSets.formicaClaraSkillSet,
        AntId.ghostAnt => AntSkillSets.ghostAntSkillSet,
        AntId.giantTooth => AntSkillSets.giantToothSkillSet,
        AntId.goldArmor => AntSkillSets.goldArmorSkillSet,
        AntId.goldenCrystal => AntSkillSets.goldenCrystalSkillSet,
        AntId.goldenSpiny => AntSkillSets.goldenSpinySkillSet,
        AntId.goldenSugar => AntSkillSets.goldenSugarSkillSet,
        AntId.goldenVenom => AntSkillSets.goldenVenomSkillSet,
        AntId.gracefulTwigAnt => AntSkillSets.gracefulTwigAntSkillSet,
        AntId.graveDigger => AntSkillSets.graveDiggerSkillSet,
        AntId.guardGeneral => AntSkillSets.guardGeneralSkillSet,
        AntId.hairyPanther => AntSkillSets.hairyPantherSkillSet,
        AntId.jackJumper => AntSkillSets.jackJumperSkillSet,
        AntId.jetBlack => AntSkillSets.jetBlackSkillSet,
        AntId.lathySniffer => AntSkillSets.lathySnifferSkillSet,
        AntId.leafDevourer => AntSkillSets.leafDevourerSkillSet,
        AntId.leptoglossusPhyllopus =>
          AntSkillSets.leptoglossusPhyllopusSkillSet,
        AntId.leptomyrmexBurwelli => AntSkillSets.leptomyrmexBurwelliSkillSet,
        AntId.merannoplusBicolor => AntSkillSets.merannoplusBicolorSkillSet,
        AntId.merannoplusCastaneus => AntSkillSets.merannoplusCastaneusSkillSet,
        AntId.mimicryMaster => AntSkillSets.mimicryMasterSkillSet,
        AntId.myrmarachneFormicaria =>
          AntSkillSets.myrmarachneFormicariaSkillSet,
        AntId.myrmecotypusRettenmeyeri =>
          AntSkillSets.myrmecotypusRettenmeyeriSkillSet,
        AntId.newWorldGeneral => AntSkillSets.newWorldGeneralSkillSet,
        AntId.nimbleTreeAnt => AntSkillSets.nimbleTreeAntSkillSet,
        AntId.pheidoleNietneri => AntSkillSets.pheidoleNietneriSkillSet,
        AntId.predator => AntSkillSets.predatorSkillSet,
        AntId.proatta => AntSkillSets.proattaSkillSet,
        AntId.procryptocerusAdlerzi => AntSkillSets.proattaSkillSet,
        AntId.reapMaster => AntSkillSets.reapMasterSkillSet,
        AntId.rockBandit => AntSkillSets.rockBanditSkillSet,
        AntId.rubySlender => AntSkillSets.rubySlenderSkillSet,
        AntId.saharanSilverAnt => AntSkillSets.saharanSilverAntSkillSet,
        AntId.shieldWarden => AntSkillSets.shieldWardenSkillSet,
        AntId.shikareeMaster => AntSkillSets.shieldWardenSkillSet,
        AntId.slimArched => AntSkillSets.slimArchedSkillSet,
        AntId.strumigenysEggersi => AntSkillSets.strumigenysEggersiSkillSet,
        AntId.weaverAnt => AntSkillSets.weaverAntSkillSet,
        AntId.whiteVelvet => AntSkillSets.whiteVelvetSkillSet,
        AntId.wiseBerserker => AntSkillSets.wiseBerserkerSkillSet,
      };
}
