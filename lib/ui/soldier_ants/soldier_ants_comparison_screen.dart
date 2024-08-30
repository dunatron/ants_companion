import 'dart:math' as math;
import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/ui/soldier_ants/soldier_card_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

import 'package:ants_companion/domain/soldier_ants/models/soldier_ant.dart';
import 'package:ants_companion/ui/layouts/page_layout.dart';

class SoldierAntsComparisonScreen extends StatefulWidget {
  const SoldierAntsComparisonScreen({super.key});

  @override
  State<SoldierAntsComparisonScreen> createState() =>
      _SoldierAntsComparisonScreenState();
}

class _SoldierAntsComparisonScreenState
    extends State<SoldierAntsComparisonScreen> {
  int _selectedTier = 4;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final locale = AppLocalizations.of(context).localeName;

    NumberFormat numberFormat = NumberFormat.decimalPatternDigits(
      locale: locale,
      decimalDigits: 2,
    );

    final tiers = List.generate(10, (index) => index + 1);

    final guard = _selectedTier.soldierAntFromTier(SoldierType.guardian);
    final shooter = _selectedTier.soldierAntFromTier(SoldierType.shooter);
    final carrier = _selectedTier.soldierAntFromTier(SoldierType.carrier);

    int ants = 339600; // Example number of ants

    // double attackBonus = 0.2; // Example attack bonus
    double attackBonus = 1372; // Example attack bonus

    double attackPower = math.sqrt(ants) * carrier.attack * (1 + attackBonus);

    String typeOnTypeText(SoldierType type1, SoldierType type2,
        SoldierAnt soldier1, SoldierAnt soldier2) {
      return '${l10n.typeOnType(
        type1.displayName(l10n),
        type2.displayName(l10n),
      )} ${numberFormat.format(
        SoldierAnt.lostPerNormalAttack(soldier1, soldier2),
      )}';
    }

    return PageLayout(
      title: 'Soldier Stats',
      widgets: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Coming Soon',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tiers.length,
            itemBuilder: (context, index) {
              final tier = tiers[index];
              final isSelected = _selectedTier == tier;
              return Padding(
                padding: const EdgeInsets.all(Spacing.s),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedTier = tier;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : null,
                  ),
                  child: Text(
                    tier.toString(),
                    style: TextStyle(
                      color: isSelected
                          ? Theme.of(context).colorScheme.onPrimary
                          : null,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SoldierCardDetails(soldier: guard),
            SoldierCardDetails(soldier: shooter),
            SoldierCardDetails(soldier: carrier),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Text(numberFormat.format(
            //     SoldierAnt.calculateDamage(5, guard.attack, guard.defense))),
            Text(typeOnTypeText(
                SoldierType.guardian, SoldierType.guardian, guard, guard)),
            Text(typeOnTypeText(
                SoldierType.guardian, SoldierType.shooter, guard, shooter)),
            Text(typeOnTypeText(
                SoldierType.guardian, SoldierType.carrier, guard, carrier)),
            Text(typeOnTypeText(
                SoldierType.shooter, SoldierType.guardian, shooter, guard)),
            Text(typeOnTypeText(
                SoldierType.shooter, SoldierType.shooter, shooter, shooter)),
            Text(typeOnTypeText(
                SoldierType.shooter, SoldierType.carrier, shooter, carrier)),
            Text(typeOnTypeText(
                SoldierType.carrier, SoldierType.guardian, carrier, guard)),
            Text(typeOnTypeText(
                SoldierType.carrier, SoldierType.shooter, carrier, shooter)),
            Text(typeOnTypeText(
                SoldierType.carrier, SoldierType.carrier, carrier, carrier)),
            const SizedBox(height: 60),
            Text(l10n.damageFromSquadLabel),
            Text(numberFormat.format(attackPower)),
          ],
        ),
      ],
    );
  }
}

extension on SoldierType {
  String displayName(AppLocalizations l10n) => switch (this) {
        SoldierType.guardian => l10n.antTypeGuardian,
        SoldierType.shooter => l10n.antTypeShooter,
        SoldierType.carrier => l10n.antTypeCarrier,
      };
}

// refactor this code.
// there are 3 types carrier, guardian, shooter
// and 9 tiers
// it must be able to get the correct SoldierAnt based on tier and type
extension on int {
  SoldierAnt soldierAntFromTier(SoldierType type) {
    final val = switch (type) {
      SoldierType.guardian => SoldierAnt.guardians[this],
      SoldierType.shooter => SoldierAnt.shooters[this],
      SoldierType.carrier => SoldierAnt.carriers[this],
    };

    if (val == null) {
      return SoldierAnt.guardianT1;
      // throw Exception('soldierAntFromTier is null');
    }

    return val;
  }
}
