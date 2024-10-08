import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum CaType {
  anthillDevelopment,
  colonyEvolution,
  massDevelopment,
  hatchSoldierAnts,
  specialAntDevelopment
}

extension CaTypeName on CaType {
  String displayName(AppLocalizations l10n) => switch (this) {
        CaType.anthillDevelopment => l10n.caTypeAnthillDevelopment,
        CaType.colonyEvolution => l10n.caTypeColonyEvolution,
        CaType.massDevelopment => l10n.caTypeMassDevelopment,
        CaType.hatchSoldierAnts => l10n.caTypeHatchSoldierAnts,
        CaType.specialAntDevelopment => l10n.caTypeSpecialAntDevelopment,
      };
}

extension ColonyActionName on String {
  CaType colonyActionTypeFromKey() {
    final list = switch (this) {
      // ToDo: think about making these keys type safe
      // Monday
      '1-0' => CaType.anthillDevelopment,
      '1-1' => CaType.colonyEvolution,
      '1-2' => CaType.anthillDevelopment,
      '1-3' => CaType.massDevelopment,
      '1-4' => CaType.anthillDevelopment,
      '1-5' => CaType.anthillDevelopment,
      '1-6' => CaType.massDevelopment,
      '1-7' => CaType.massDevelopment,
      '1-8' => CaType.anthillDevelopment,
      '1-9' => CaType.colonyEvolution,
      '1-10' => CaType.anthillDevelopment,
      '1-11' => CaType.massDevelopment,
      '1-12' => CaType.anthillDevelopment,
      '1-13' => CaType.anthillDevelopment,
      '1-14' => CaType.massDevelopment,
      '1-15' => CaType.massDevelopment,
      '1-16' => CaType.anthillDevelopment,
      '1-17' => CaType.colonyEvolution,
      '1-18' => CaType.anthillDevelopment,
      '1-19' => CaType.massDevelopment,
      '1-20' => CaType.anthillDevelopment,
      '1-21' => CaType.anthillDevelopment,
      '1-22' => CaType.massDevelopment,
      '1-23' => CaType.massDevelopment,
      // Tuesday
      '2-0' => CaType.anthillDevelopment,
      '2-1' => CaType.anthillDevelopment,
      '2-2' => CaType.hatchSoldierAnts,
      '2-3' => CaType.anthillDevelopment,
      '2-4' => CaType.massDevelopment,
      '2-5' => CaType.massDevelopment,
      '2-6' => CaType.massDevelopment,
      '2-7' => CaType.anthillDevelopment,
      '2-8' => CaType.anthillDevelopment,
      '2-9' => CaType.anthillDevelopment,
      '2-10' => CaType.hatchSoldierAnts,
      '2-11' => CaType.anthillDevelopment,
      '2-12' => CaType.massDevelopment,
      '2-13' => CaType.massDevelopment,
      '2-14' => CaType.massDevelopment,
      '2-15' => CaType.anthillDevelopment,
      '2-16' => CaType.anthillDevelopment,
      '2-17' => CaType.anthillDevelopment,
      '2-18' => CaType.hatchSoldierAnts,
      '2-19' => CaType.anthillDevelopment,
      '2-20' => CaType.massDevelopment,
      '2-21' => CaType.massDevelopment,
      '2-22' => CaType.massDevelopment,
      '2-23' => CaType.anthillDevelopment,
      // Wednesday
      '3-0' => CaType.anthillDevelopment,
      '3-1' => CaType.colonyEvolution,
      '3-2' => CaType.hatchSoldierAnts,
      '3-3' => CaType.anthillDevelopment,
      '3-4' => CaType.anthillDevelopment,
      '3-5' => CaType.massDevelopment,
      '3-6' => CaType.massDevelopment,
      '3-7' => CaType.massDevelopment,
      '3-8' => CaType.anthillDevelopment,
      '3-9' => CaType.colonyEvolution,
      '3-10' => CaType.hatchSoldierAnts,
      '3-11' => CaType.anthillDevelopment,
      '3-12' => CaType.anthillDevelopment,
      '3-13' => CaType.massDevelopment,
      '3-14' => CaType.massDevelopment,
      '3-15' => CaType.massDevelopment,
      '3-16' => CaType.anthillDevelopment,
      '3-17' => CaType.colonyEvolution,
      '3-18' => CaType.hatchSoldierAnts,
      '3-19' => CaType.anthillDevelopment,
      '3-20' => CaType.anthillDevelopment,
      '3-21' => CaType.massDevelopment,
      '3-22' => CaType.massDevelopment,
      '3-23' => CaType.massDevelopment,
      // Thursday
      '4-0' => CaType.anthillDevelopment,
      '4-1' => CaType.specialAntDevelopment,
      '4-2' => CaType.massDevelopment,
      '4-3' => CaType.specialAntDevelopment,
      '4-4' => CaType.massDevelopment,
      '4-5' => CaType.specialAntDevelopment,
      '4-6' => CaType.massDevelopment,
      '4-7' => CaType.specialAntDevelopment,
      '4-8' => CaType.anthillDevelopment,
      '4-9' => CaType.specialAntDevelopment,
      '4-10' => CaType.massDevelopment,
      '4-11' => CaType.specialAntDevelopment,
      '4-12' => CaType.massDevelopment,
      '4-13' => CaType.specialAntDevelopment,
      '4-14' => CaType.massDevelopment,
      '4-15' => CaType.specialAntDevelopment,
      '4-16' => CaType.anthillDevelopment,
      '4-17' => CaType.specialAntDevelopment,
      '4-18' => CaType.massDevelopment,
      '4-19' => CaType.specialAntDevelopment,
      '4-20' => CaType.massDevelopment,
      '4-21' => CaType.specialAntDevelopment,
      '4-22' => CaType.massDevelopment,
      '4-23' => CaType.specialAntDevelopment,
      // Friday
      '5-0' => CaType.massDevelopment,
      '5-1' => CaType.massDevelopment,
      '5-2' => CaType.massDevelopment,
      '5-3' => CaType.hatchSoldierAnts,
      '5-4' => CaType.massDevelopment,
      '5-5' => CaType.anthillDevelopment,
      '5-6' => CaType.colonyEvolution,
      '5-7' => CaType.massDevelopment,
      '5-8' => CaType.massDevelopment,
      '5-9' => CaType.massDevelopment,
      '5-10' => CaType.massDevelopment,
      '5-11' => CaType.hatchSoldierAnts,
      '5-12' => CaType.massDevelopment,
      '5-13' => CaType.anthillDevelopment,
      '5-14' => CaType.colonyEvolution,
      '5-15' => CaType.massDevelopment,
      '5-16' => CaType.massDevelopment,
      '5-17' => CaType.massDevelopment,
      '5-18' => CaType.massDevelopment,
      '5-19' => CaType.hatchSoldierAnts,
      '5-20' => CaType.massDevelopment,
      '5-21' => CaType.anthillDevelopment,
      '5-22' => CaType.colonyEvolution,
      '5-23' => CaType.massDevelopment,
      // Saturday
      '6-0' => CaType.massDevelopment,
      '6-1' => CaType.colonyEvolution,
      '6-2' => CaType.anthillDevelopment,
      '6-3' => CaType.hatchSoldierAnts,
      '6-4' => CaType.massDevelopment,
      '6-5' => CaType.massDevelopment,
      '6-6' => CaType.anthillDevelopment,
      '6-7' => CaType.colonyEvolution,
      '6-8' => CaType.massDevelopment,
      '6-9' => CaType.colonyEvolution,
      '6-10' => CaType.anthillDevelopment,
      '6-11' => CaType.hatchSoldierAnts,
      '6-12' => CaType.massDevelopment,
      '6-13' => CaType.massDevelopment,
      '6-14' => CaType.anthillDevelopment,
      '6-15' => CaType.colonyEvolution,
      '6-16' => CaType.massDevelopment,
      '6-17' => CaType.colonyEvolution,
      '6-18' => CaType.anthillDevelopment,
      '6-19' => CaType.hatchSoldierAnts,
      '6-20' => CaType.massDevelopment,
      '6-21' => CaType.massDevelopment,
      '6-22' => CaType.anthillDevelopment,
      '6-23' => CaType.colonyEvolution,
      // Sunday
      '7-0' => CaType.anthillDevelopment,
      '7-1' => CaType.massDevelopment,
      '7-2' => CaType.massDevelopment,
      '7-3' => CaType.colonyEvolution,
      '7-4' => CaType.massDevelopment,
      '7-5' => CaType.hatchSoldierAnts,
      '7-6' => CaType.massDevelopment,
      '7-7' => CaType.massDevelopment,
      '7-8' => CaType.anthillDevelopment,
      '7-9' => CaType.massDevelopment,
      '7-10' => CaType.massDevelopment,
      '7-11' => CaType.colonyEvolution,
      '7-12' => CaType.massDevelopment,
      '7-13' => CaType.hatchSoldierAnts,
      '7-14' => CaType.massDevelopment,
      '7-15' => CaType.massDevelopment,
      '7-16' => CaType.anthillDevelopment,
      '7-17' => CaType.massDevelopment,
      '7-18' => CaType.massDevelopment,
      '7-19' => CaType.colonyEvolution,
      '7-20' => CaType.massDevelopment,
      '7-21' => CaType.hatchSoldierAnts,
      '7-22' => CaType.massDevelopment,
      '7-23' => CaType.massDevelopment,
      _ => CaType.massDevelopment
    };

    return list;
  }
}
