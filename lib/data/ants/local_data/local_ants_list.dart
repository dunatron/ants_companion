import 'package:ants_companion/common/models/row_position.dart';
import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_external_link.dart';
import 'package:ants_companion/domain/ants/models/ant_role.dart';
import 'package:ants_companion/domain/ants/models/ant_scientific_classification.dart';
import 'package:ants_companion/domain/ants/models/ant_skill.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_classification.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_family.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_genus.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_infraorder.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_order.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_phylum.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_subfamily.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_subphylum.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_tribe.dart';
import 'package:ants_companion/domain/ants/models/species.dart';

part 'ants/acid_general.dart';
part 'ants/atta_sexdens.dart';
part 'ants/banshee_panda.dart';
part 'ants/banshee_velvet.dart';
part 'ants/black_cancer.dart';
part 'ants/black_knight.dart';
part 'ants/blood_giant.dart';
part 'ants/brown_rogue.dart';
part 'ants/bullet_ant.dart';
part 'ants/crimson_fragger.dart';
part 'ants/crimson_pearl.dart';
part 'ants/dark_giant.dart';
part 'ants/dark_hercules.dart';
part 'ants/dolichoderus_bispinosus.dart';
part 'ants/driver_ant.dart';
part 'ants/dusky_lurker.dart';
part 'ants/emerald_jewel_ant.dart';
part 'ants/enigmatic_taylor.dart';
part 'ants/formica_clara.dart';
part 'ants/ghost_ant.dart';
part 'ants/giant_tooth.dart';
part 'ants/gold_armor.dart';
part 'ants/golden_crystal.dart';
part 'ants/golden_spiny.dart';
part 'ants/golden_sugar.dart';
part 'ants/golden_venom.dart';
part 'ants/graceful_twig_ant.dart';
part 'ants/grave_digger.dart';
part 'ants/guard_general.dart';
part 'ants/hairy_panther.dart';
part 'ants/jack_jumper.dart';
part 'ants/jet_black.dart';
part 'ants/lathy_sniffer.dart';
part 'ants/leaf_devourer.dart';
part 'ants/leptoglossus_phyllopus.dart';
part 'ants/leptomyrmex_burwelli.dart';
part 'ants/mimicry_master.dart';
part 'ants/myrmarachne_formicaria.dart';
part 'ants/myrmecotypus_rettenmeyeri.dart';
part 'ants/new_world_general.dart';
part 'ants/nimble_tree_ant.dart';
part 'ants/pheidole_nietneri.dart';
part 'ants/predator.dart';
part 'ants/proatta.dart';
part 'ants/procryptocerus_adlerzi.dart';
part 'ants/reap_master.dart';
part 'ants/rock_bandit.dart';
part 'ants/ruby_slender.dart';
part 'ants/shield_warden.dart';
part 'ants/shikaree_master.dart';
part 'ants/slim_arched.dart';
part 'ants/strumigenys_eggersi.dart';
part 'ants/weaver_ant.dart';
part 'ants/white_velvet.dart';
part 'ants/wise_berserker.dart';
part 'ants/merannoplus_bicolor.dart';
part 'ants/merannoplus_castaneus.dart';
part 'ants/carpenter_ant.dart';
part 'ants/cyphomyrmex_rimosus.dart';
part 'ants/saharan_silver_ant.dart';
part 'ants/crematogaster_inflata.dart';

const notTheWorstB = 'This does work but there are better options';
const betterOptionsAvailableC = 'There are better options available';
const terribleForPveF = "Terrible ant for PVE. Underground maze only";
const terribleForPvpF =
    'Terrible ant for PVP. Not worth investing for any row. '
    'Underground maze only';

const examplePveTags = [
  AntPveTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const examplePvpTags = [
  AntPvpTierTag(
    rating: TierRating.d,
    antType: AntType.shooter,
    rowPosition: RowPosition.front,
    reason: terribleForPvpF,
  ),
];

const List<Ant> localAntsList = [
  acidGeneral,
  attaSexdens,
  bansheePanda,
  bansheeVelvet,
  blackCancer,
  blackKnight,
  bloodGiant,
  brownRogue,
  bulletAnt,
  carpenterAnt,
  crematogasterInflata,
  crimsonFragger,
  crimsonPearl,
  cyphomyrmexRimosus,
  darkGiant,
  darkHercules,
  dolichoderusBispinosus,
  driverAnt,
  duskyLurker,
  emeraldJewelAnt,
  enigmaticTaylor,
  formicaClara,
  ghostAnt,
  giantTooth,
  goldArmor,
  goldenCrystal,
  goldenSpiny,
  goldenSugar,
  goldenVenom,
  gracefulTwigAnt,
  graveDigger,
  guardGeneral,
  hairyPanther,
  jackJumper,
  jetBlack,
  lathySniffer,
  leafDevourer,
  leptoglossusPhyllopus,
  leptomyrmexBurwelli,
  merannoplusBicolor,
  merannoplusCastaneus,
  mimicryMaster,
  myrmarachneFormicaria,
  myrmecotypusRettenmeyeri,
  newWorldGeneral,
  nimbleTreeAnt,
  pheidoleNietneri,
  predator,
  proatta,
  procryptocerusAdlerzi,
  reapMaster,
  rockBandit,
  rubySlender,
  saharanSilverAnt,
  shieldWarden,
  shikareeMaster,
  slimArched,
  strumigenysEggersi,
  weaverAnt,
  whiteVelvet,
  wiseBerserker,
];
