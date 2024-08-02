import 'package:ants_companion/domain/scientific_classifications/models/scientific_genus.dart';

extension ScientificGenusExtension on ScientificGenus {
  /// will take in intl
  String title() => switch (this) {
        ScientificGenus.myrmarachne => 'myrmarachne',
        ScientificGenus.mystrium => 'mystrium',
        ScientificGenus.atta => 'atta',
        ScientificGenus.euspinolia => 'euspinolia',
      };
}
