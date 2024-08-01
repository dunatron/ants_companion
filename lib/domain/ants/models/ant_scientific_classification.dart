import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_classification.dart';
import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_domain.dart';
import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_family.dart';
import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_genus.dart';
import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_infraorder.dart';
import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_kingdom.dart';
import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_order.dart';
import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_phylum.dart';
import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_subfamily.dart';
import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_subphylum.dart';
import 'package:ants_companion/domain/ants/models/scientific_classification/scientific_tribe.dart';

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

  /// Species: The most specific taxonomic rank, used to identify individual organisms that can interbreed.
  /// Example: Myrmarachne formicaria (a species of jumping spider)
  final String species;

  /// Domain: The highest taxonomic rank, representing all life forms with complex cell structures.
  /// Example: Eukaryota (organisms with eukaryotic cells)
  final ScientificDomain domain = ScientificDomain.eukaryota;

  /// Kingdom: A major taxonomic rank below domain and above phylum.
  /// Example: Animalia (animals)
  final ScientificKingdom kingdom = ScientificKingdom.animalia;

  /// Phylum: A taxonomic rank below kingdom and above class.
  /// Example: Arthropoda (arthropods)
  final ScientificPhylum phylum;

  /// Subphylum: A rank below phylum and above class, used to further classify organisms within a phylum.
  /// Example: Chelicerata (spiders, scorpions, and related animals)
  final ScientificSubphylum? subphylum;

  /// Class: A taxonomic rank below phylum and above order.
  /// Example: Arachnida (arachnids)
  final ScientificClassification classification;

  /// Order: A rank below class and above family.
  /// Example: Araneae (spiders)
  final ScientificOrder order;

  /// Infraorder: A rank below order and above family, used to classify organisms more precisely.
  /// Example: Araneomorphae (a suborder of spiders)
  final ScientificInfraorder? infraorder;

  /// Family: A rank below order and above genus, grouping together genera with similar characteristics.
  /// Example: Salticidae (jumping spiders)
  final ScientificFamily family;

  /// Subfamily: A rank below family and above genus, used to further classify organisms within a family.
  /// Example: Salticinae (a subfamily of jumping spiders)
  final ScientificSubfamily? subfamily;

  final ScientificTribe? tribe;

  /// Genus: A rank below family and above species, used to group species that are closely related.
  /// Example: Myrmarachne (a genus of jumping spiders known for their ant-like appearance)
  final ScientificGenus genus;
}
