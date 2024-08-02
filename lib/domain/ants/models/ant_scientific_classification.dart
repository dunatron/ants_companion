import 'package:ants_companion/domain/scientific_classifications/models/scientific_classification.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_domain.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_family.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_genus.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_infraorder.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_kingdom.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_order.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_phylum.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_subfamily.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_subphylum.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_tribe.dart';

/// Represents the scientific classification of an ant.
class AntScientificClassification {
  const AntScientificClassification({
    required this.species,
    required this.phylum,
    required this.subphylum,
    required this.classification,
    required this.order,
    required this.infraorder,
    required this.family,
    required this.subfamily,
    required this.tribe,
    required this.genus,
  });

  final String species;

  final ScientificDomain domain = ScientificDomain.eukaryota;

  final ScientificKingdom kingdom = ScientificKingdom.animalia;

  final ScientificPhylum phylum;

  final ScientificSubphylum? subphylum;

  final ScientificClassification classification;

  final ScientificOrder order;

  final ScientificInfraorder? infraorder;

  final ScientificFamily family;

  final ScientificSubfamily? subfamily;

  final ScientificTribe? tribe;

  final ScientificGenus genus;
}
