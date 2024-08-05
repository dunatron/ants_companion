import 'package:ants_companion/domain/ants/ants.dart';

import 'package:ants_companion/ui/layouts/page_layout.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tiers_display.dart';
import 'package:ants_companion/ui/layouts/sliver_page_layout.dart';
import 'package:flutter/material.dart';

class AntTiersScreen extends StatelessWidget {
  const AntTiersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: 'Ant Tiers',
      widgets: [_buildAntTiersDisplay()],
    );
  }

  _buildAntTiersDisplay() => AntTiersDisplay(ants: Ants.antsList());
}
