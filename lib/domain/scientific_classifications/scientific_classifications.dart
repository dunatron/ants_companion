import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_family.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_genus.dart';

class ScientificClassifications {
  const ScientificClassifications({required this.ants});

  final List<Ant> ants;

  List<Ant> antsForFamily(ScientificFamily family) => ants
      .where((ant) => ant.scientificClassification?.family == family)
      .toList();

  List<Ant> antsForGenus(ScientificGenus genus) => ants
      .where((ant) => ant.scientificClassification?.genus == genus)
      .toList();
}
