import 'package:ants_companion/data/ants/local_data/local_ants_list.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';

class Ants {
  static List<Ant> antsList() {
    return localAntsList;
  }

  static Ant? antById(String id) =>
      antsList().firstWhere((ant) => ant.id == id);
}
