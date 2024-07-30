import 'package:ants_companion/domain/ants/ants.dart';

import 'package:ants_companion/ui/layouts/page_layout.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tiers_display.dart';
import 'package:flutter/material.dart';

class AntTiersScreen extends StatelessWidget {
  const AntTiersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: 'Ant Tiers',
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [...Ants.metaTroops().map((it) => Text(it.backRowAntId))],
          ),
        ),
        SliverToBoxAdapter(
          child: AntTiersDisplay(ants: Ants.antsList()),
        )
      ],
    );
  }
}
