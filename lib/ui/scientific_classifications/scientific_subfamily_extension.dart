import 'package:ants_companion/domain/scientific_classifications/models/scientific_subfamily.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ScientificSubfamilyTranslationExtensions on ScientificSubfamily {
  String description(final AppLocalizations l10n) => switch (this) {
        ScientificSubfamily.amblyoponinae =>
          l10n.subFamilyAmblyoponinaeDescription,
        ScientificSubfamily.dolichoderinae =>
          l10n.subFamilyDolichoderinaeDescription,
        ScientificSubfamily.dorylinae => l10n.subFamilyDorylinaeDescription,
        ScientificSubfamily.ectatomminae =>
          l10n.subFamilyEctatomminaeDescription,
        ScientificSubfamily.formicinae => l10n.subFamilyFormicinaeDescription,
        ScientificSubfamily.harpactorinae =>
          l10n.subFamilyHarpactorinaeDescription,
        ScientificSubfamily.myrmeciinae => l10n.subFamilyMyrmeciinaeDescription,
        ScientificSubfamily.myrmicinae => l10n.subFamilyMyrmicinaeDescription,
        ScientificSubfamily.paraponerinae =>
          l10n.subFamilyParaponerinaeDescription,
        ScientificSubfamily.ponerinae => l10n.subFamilyPonerinaeDescription,
        ScientificSubfamily.pseudomyrmecinae =>
          l10n.subFamilyPseudomyrmecinaeDescription,
        ScientificSubfamily.salticinae => l10n.subFamilySalticinaeDescription,
      };
}
