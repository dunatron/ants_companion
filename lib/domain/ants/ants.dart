import 'package:ants_companion/common/models/game_mode.dart';
import 'package:ants_companion/data/ants/local_data/local_ants_list.dart';
import 'package:ants_companion/data/ants/meta_troops/meta_troops_local.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/meta_troop.dart';

class Ants {
  static List<Ant> antsList() {
    return localAntsList;
  }

  static List<MetaTroop> metaTroops() {
    return MetaTroopsLocal.metaTroopsList();
  }

  static Ant? antById(String id) =>
      antsList().firstWhere((ant) => ant.id == id);
}
