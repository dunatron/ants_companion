import 'package:ants_companion/domain/ant_skills/ant_skill_set_refs.dart';
import 'package:ants_companion/domain/ant_skills/models/ant_skill_set.dart';
import 'package:ants_companion/domain/ants/models/ant_id.dart';

class AntSkills {
  AntSkillSet skillSetForAnt(final AntId antId) {
    return antId.skillSet();
  }
}

extension on AntId {
  AntSkillSet skillSet() => switch (this) {
        AntId.acidGeneral => AntSkillSetRefs.acidGeneralSkillSet,
        AntId.attaSexdens => AntSkillSetRefs.attaSexdensSkillSet,
        AntId.bansheePanda => AntSkillSetRefs.bansheePandaSkillSet,
        AntId.bansheeVelvet => AntSkillSetRefs.bansheeVelvetSkillSet,
        AntId.blackCancer => AntSkillSetRefs.blackCancerSkillSet,
        AntId.blackKnight => AntSkillSetRefs.blackKnightSkillSet,
        AntId.bloodGiant => AntSkillSetRefs.bloodGiantSkillSet,
        AntId.brownRogue => AntSkillSetRefs.brownRogueSkillSet,
        AntId.bulletAnt => AntSkillSetRefs.bulletAntSkillSet,
        AntId.carpenterAnt => AntSkillSetRefs.carpenterAntSkillSet,
        AntId.crematogasterInflata =>
          AntSkillSetRefs.crematogasterInflataSkillSet,
        AntId.crimsonFragger => AntSkillSetRefs.crimsonFraggerSkillSet,
        AntId.crimsonPearl => AntSkillSetRefs.crimsonPearlSkillSet,
        AntId.cyphomyrmexRimosus => AntSkillSetRefs.cyphomyrmexRimosusSkillSet,
        AntId.darkGiant => AntSkillSetRefs.darkGiantSkillSet,
        AntId.darkHercules => AntSkillSetRefs.darkGiantSkillSet,
        AntId.dolichoderusBispinosus =>
          AntSkillSetRefs.dolichoderusBispinosusSkillSet,
        AntId.driverAnt => AntSkillSetRefs.driverAntSkillSet,
        AntId.duskyLurker => AntSkillSetRefs.duskyLurkerSkillSet,
        AntId.emeraldJewelAnt => AntSkillSetRefs.emeraldJewelAntSkillSet,
        AntId.enigmaticTaylor => AntSkillSetRefs.enigmaticTaylorSkillSet,
        AntId.formicaClara => AntSkillSetRefs.formicaClaraSkillSet,
        AntId.ghostAnt => AntSkillSetRefs.ghostAntSkillSet,
        AntId.giantTooth => AntSkillSetRefs.giantToothSkillSet,
        AntId.goldArmor => AntSkillSetRefs.goldArmorSkillSet,
        AntId.goldenCrystal => AntSkillSetRefs.goldenCrystalSkillSet,
        AntId.goldenSpiny => AntSkillSetRefs.goldenSpinySkillSet,
        AntId.goldenSugar => AntSkillSetRefs.goldenSugarSkillSet,
        AntId.goldenVenom => AntSkillSetRefs.goldenVenomSkillSet,
        AntId.gracefulTwigAnt => AntSkillSetRefs.gracefulTwigAntSkillSet,
        AntId.graveDigger => AntSkillSetRefs.graveDiggerSkillSet,
        AntId.guardGeneral => AntSkillSetRefs.guardGeneralSkillSet,
        AntId.hairyPanther => AntSkillSetRefs.hairyPantherSkillSet,
        AntId.jackJumper => AntSkillSetRefs.jackJumperSkillSet,
        AntId.jetBlack => AntSkillSetRefs.jetBlackSkillSet,
        AntId.lathySniffer => AntSkillSetRefs.lathySnifferSkillSet,
        AntId.leafDevourer => AntSkillSetRefs.leafDevourerSkillSet,
        AntId.leptoglossusPhyllopus =>
          AntSkillSetRefs.leptoglossusPhyllopusSkillSet,
        AntId.leptomyrmexBurwelli =>
          AntSkillSetRefs.leptomyrmexBurwelliSkillSet,
        AntId.merannoplusBicolor => AntSkillSetRefs.merannoplusBicolorSkillSet,
        AntId.merannoplusCastaneus =>
          AntSkillSetRefs.merannoplusCastaneusSkillSet,
        AntId.mimicryMaster => AntSkillSetRefs.mimicryMasterSkillSet,
        AntId.myrmarachneFormicaria =>
          AntSkillSetRefs.myrmarachneFormicariaSkillSet,
        AntId.myrmecotypusRettenmeyeri =>
          AntSkillSetRefs.myrmecotypusRettenmeyeriSkillSet,
        AntId.newWorldGeneral => AntSkillSetRefs.newWorldGeneralSkillSet,
        AntId.nimbleTreeAnt => AntSkillSetRefs.nimbleTreeAntSkillSet,
        AntId.pheidoleNietneri => AntSkillSetRefs.pheidoleNietneriSkillSet,
        AntId.predator => AntSkillSetRefs.predatorSkillSet,
        AntId.proatta => AntSkillSetRefs.proattaSkillSet,
        AntId.procryptocerusAdlerzi => AntSkillSetRefs.proattaSkillSet,
        AntId.reapMaster => AntSkillSetRefs.reapMasterSkillSet,
        AntId.rockBandit => AntSkillSetRefs.rockBanditSkillSet,
        AntId.rubySlender => AntSkillSetRefs.rubySlenderSkillSet,
        AntId.saharanSilverAnt => AntSkillSetRefs.saharanSilverAntSkillSet,
        AntId.shieldWarden => AntSkillSetRefs.shieldWardenSkillSet,
        AntId.shikareeMaster => AntSkillSetRefs.shikareeMasterSkillSet,
        AntId.slimArched => AntSkillSetRefs.slimArchedSkillSet,
        AntId.strumigenysEggersi => AntSkillSetRefs.strumigenysEggersiSkillSet,
        AntId.weaverAnt => AntSkillSetRefs.weaverAntSkillSet,
        AntId.whiteVelvet => AntSkillSetRefs.whiteVelvetSkillSet,
        AntId.wiseBerserker => AntSkillSetRefs.wiseBerserkerSkillSet,
        AntId.tricondylaAptera => AntSkillSetRefs.tricondylaApteraSkillSet,
      };
}
