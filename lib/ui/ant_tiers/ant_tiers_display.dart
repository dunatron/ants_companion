import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:ants_companion/ui/draggable_scroll_configuration.dart';
import 'package:ants_companion/ui/section.dart';
import 'package:ants_companion/ui/ant_tiers/tier_section.dart';

import 'package:flutter/material.dart';

class AntTiersDisplay extends StatefulWidget {
  const AntTiersDisplay({super.key, required this.ants});

  final List<Ant> ants;

  @override
  State<AntTiersDisplay> createState() => _AntTiersDisplayState();
}

class _AntTiersDisplayState extends State<AntTiersDisplay> {
  AntType _antType = AntType.guardian;

  bool _isPvp = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    foregroundColor: !_isPvp
                        ? MaterialStateProperty.all<Color>(
                            Theme.of(context).colorScheme.onPrimary,
                          )
                        : null,
                    backgroundColor: !_isPvp
                        ? MaterialStateProperty.all<Color>(
                            Theme.of(context).colorScheme.primary,
                          )
                        : null),
                onPressed: () {
                  setState(() {
                    _isPvp = false;
                  });
                },
                child: Text('PVE'),
              ),
              SizedBox(
                width: 16,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    foregroundColor: _isPvp
                        ? MaterialStateProperty.all<Color>(
                            Theme.of(context).colorScheme.onPrimary,
                          )
                        : null,
                    backgroundColor: _isPvp
                        ? MaterialStateProperty.all<Color>(
                            Theme.of(context).colorScheme.primary,
                          )
                        : null),
                onPressed: () {
                  setState(() {
                    _isPvp = true;
                  });
                },
                child: Text('PVP'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DraggableScrollConfiguration(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AntType.values.map(
                    (antType) => (!_isPvp && antType == AntType.universal)
                        ? Container()
                        : Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  visualDensity: VisualDensity.compact,
                                  foregroundColor: antType == _antType
                                      ? MaterialStateProperty.all<Color>(
                                          Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        )
                                      : null,
                                  backgroundColor: antType == _antType
                                      ? MaterialStateProperty.all<Color>(
                                          Theme.of(context).colorScheme.primary,
                                        )
                                      : null),
                              onPressed: () {
                                setState(() {
                                  _antType = antType;
                                });
                              },
                              child: Text(
                                antType.name.toUpperCase(),
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.fontSize,
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Section(
          children: [
            ...TierRating.values.map(
              (tierRating) => TierSection(
                antType: _antType,
                tierRating: tierRating,
                ants: widget.ants,
                isPvp: _isPvp,
              ),
            ),
          ],
        )
      ],
    );
  }
}
