import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_family.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_genus.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_subfamily.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_tribe.dart';

class ScientificClassifications {
  const ScientificClassifications({required this.ants});

  final List<Ant> ants;

  List<Ant> antsForFamily(ScientificFamily family) => ants
      .where((ant) => ant.scientificClassification?.family == family)
      .toList();

  int countAntsWithFamily() =>
      ants.where((ant) => ant.scientificClassification?.family != null).length;

  List<Ant> antsForSubfamily(ScientificSubfamily subfamily) => ants
      .where((ant) => ant.scientificClassification?.subfamily == subfamily)
      .toList();

  int countAntsWithSubfamily() => ants
      .where((ant) => ant.scientificClassification?.subfamily != null)
      .length;

  List<Ant> antsForTribe(ScientificTribe tribe) => ants
      .where((ant) => ant.scientificClassification?.tribe == tribe)
      .toList();

  int countAntsWithTribe() =>
      ants.where((ant) => ant.scientificClassification?.tribe != null).length;

  List<Ant> antsForGenus(ScientificGenus genus) => ants
      .where((ant) => ant.scientificClassification?.genus == genus)
      .toList();

  int countAntsWithGenus() =>
      ants.where((ant) => ant.scientificClassification?.genus != null).length;
}
