import 'package:ants_companion/domain/scientific_classifications/models/scientific_genus.dart';

extension ScientificGenusExtension on ScientificGenus {
  /// will take in intl
  String title() => switch (this) {
        ScientificGenus.myrmarachne => 'myrmarachne',
        ScientificGenus.mystrium => 'mystrium',
        ScientificGenus.atta => 'atta',
        ScientificGenus.euspinolia => 'euspinolia',
        // TODO: Handle this case.
        ScientificGenus.aphantochilus => throw UnimplementedError(),
        // TODO: Handle this case.
        ScientificGenus.camponotus => throw UnimplementedError(),
        // TODO: Handle this case.
        ScientificGenus.cephalotes => throw UnimplementedError(),
        // TODO: Handle this case.
        ScientificGenus.dasymutilla => throw UnimplementedError(),
        // TODO: Handle this case.
        ScientificGenus.myrmaplata => throw UnimplementedError(),
        // TODO: Handle this case.
        ScientificGenus.nomamyrmex => throw UnimplementedError(),
        // TODO: Handle this case.
        ScientificGenus.paraponera => throw UnimplementedError(),
      };
}
