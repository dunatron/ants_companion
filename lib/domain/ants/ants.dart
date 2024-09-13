import 'package:collection/collection.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/meta_troop.dart';
import 'package:ants_companion/domain/ants/models/ant_id.dart';

// These font belong here fella
import 'package:ants_companion/data/ants/local_data/local_ants_list.dart';
import 'package:ants_companion/data/ants/meta_troops/meta_troops_local.dart';

class Ants {
  static List<Ant> antsList() {
    return localAntsList;
  }

  static List<MetaTroop> metaTroops() {
    return MetaTroopsLocal.metaTroopsList();
  }

  static Ant? antById(AntId id) =>
      antsList().firstWhereOrNull((ant) => ant.id == id);
}
