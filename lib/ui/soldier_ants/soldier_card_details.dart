import 'package:flutter/material.dart';

import 'package:ants_companion/domain/soldier_ants/models/soldier_ant.dart';

class SoldierCardDetails extends StatelessWidget {
  const SoldierCardDetails({super.key, required this.soldier});

  final SoldierAnt soldier;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('Attack: ${soldier.attack}'),
          Text('Defense: ${soldier.defense}'),
          Text('Health: ${soldier.health}'),
          Text('Power: ${soldier.power}'),
        ],
      ),
    );
  }
}
