import 'package:flutter/material.dart';

import 'package:ants_companion/domain/soldier_ants/models/soldier_ant.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SoldierCardDetails extends StatelessWidget {
  const SoldierCardDetails({super.key, required this.soldier});

  final SoldierAnt soldier;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Text('${l10n.attack}: ${soldier.attack}'),
            Text('${l10n.defense}: ${soldier.defense}'),
            Text('${l10n.health}: ${soldier.health}'),
            Text('${l10n.power}: ${soldier.power}'),
          ],
        ),
      ),
    );
  }
}
