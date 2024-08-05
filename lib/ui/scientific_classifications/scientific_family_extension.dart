import 'package:ants_companion/domain/scientific_classifications/models/scientific_family.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ScientificFamilyTranslationExtensions on ScientificFamily {
  // ToDo: internationalize scientific family description
  String description(final AppLocalizations l10n) => switch (this) {
        // https://en.wikipedia.org/wiki/Ampulicidae
        ScientificFamily.ampulicidae => l10n.familyAmpulicidaeDescription,
        // https://en.wikipedia.org/wiki/Coreidae
        ScientificFamily.coreidae => l10n.familyCoreidaeDescription,
        // https://en.wikipedia.org/wiki/Corinnidae
        ScientificFamily.corinnidae => l10n.familyCorinnidaeDescription,
        // https://en.wikipedia.org/wiki/Ant
        ScientificFamily.formicidae => l10n.familyFormicidaeDescription,
        //https://en.wikipedia.org/wiki/Mutillidae
        ScientificFamily.mutillidae => l10n.familyMutillidaeDescription,
        // https://en.wikipedia.org/wiki/Jumping_spider
        ScientificFamily.salticidae => l10n.familySalticidaeDescription,
        // https://en.wikipedia.org/wiki/Thomisidae
        ScientificFamily.thomisidae => l10n.familyThomisidaeDescription,
        // https://en.wikipedia.org/wiki/Reduviidae
        ScientificFamily.reduviidae => l10n.familyReduviidaeDescription,
      };
}
