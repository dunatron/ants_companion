import 'package:ants_companion/domain/ants/ants.dart';

import 'package:ants_companion/ui/layouts/page_layout.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tiers_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AntTiersScreen extends StatelessWidget {
  const AntTiersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return PageLayout(
      title: l10n.antTiersTitle,
      widgets: [_buildAntTiersDisplay()],
    );
  }

  _buildAntTiersDisplay() => AntTiersDisplay(ants: Ants.antsList());
}
