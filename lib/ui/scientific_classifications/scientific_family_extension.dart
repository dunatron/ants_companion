import 'package:ants_companion/domain/scientific_classifications/models/scientific_family.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ScientificFamilyTranslationExtensions on ScientificFamily {
  String description(final AppLocalizations l10n) => switch (this) {
        //https://en.wikipedia.org/wiki/Mutillidae
        ScientificFamily.mutillidae => l10n.familyMutillidaeDescription,
        // https://en.wikipedia.org/wiki/Jumping_spider
        ScientificFamily.salticidae => l10n.familySalticidaeDescription,
        // https://en.wikipedia.org/wiki/Ant
        ScientificFamily.formicidae => l10n.familyFormicidaeDescription,
        // https://en.wikipedia.org/wiki/Thomisidae
        ScientificFamily.thomisidae => l10n.familyThomisidaeDescription,
      };
}
