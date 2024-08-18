import 'package:flutter/material.dart';

import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:ants_companion/ui/section.dart';
import 'package:ants_companion/ui/ant_tiers/tier_section/tier_section.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tiers_game_mode_selector.dart';
import 'package:ants_companion/ui/ant_tiers/ant_tiers_type_selector.dart';

class AntTiersDisplay extends StatefulWidget {
  const AntTiersDisplay({super.key, required this.ants});

  final List<Ant> ants;

  @override
  State<AntTiersDisplay> createState() => _AntTiersDisplayState();
}

class _AntTiersDisplayState extends State<AntTiersDisplay> {
  AntType _antType = AntType.guardian;

  bool _isPvp = false;

  handlePvpChange(bool isPvp) {
    if (!isPvp && (_antType == AntType.universal || _antType == AntType.gss)) {
      setState(() {
        _antType = AntType.guardian;
        _isPvp = isPvp;
      });
    } else {
      setState(() {
        _isPvp = isPvp;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AntTiersGameModeSelector(
            pvpSelected: _isPvp, onChange: handlePvpChange),
        AntTiersTypeSelector(
          isPvp: _isPvp,
          type: _antType,
          changeAntType: (antType) => setState(() {
            _antType = antType;
          }),
        ),
        const SizedBox(height: 24),
        Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Section(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    ...TierRating.values.map(
                      (tierRating) => TierSection(
                        antType: _antType,
                        tierRating: tierRating,
                        ants: widget.ants,
                        isPvp: _isPvp,
                        availableWidth: constraints.maxWidth,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
