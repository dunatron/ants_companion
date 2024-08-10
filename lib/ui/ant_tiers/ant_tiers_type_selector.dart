import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:ants_companion/ui/draggable_scroll_configuration.dart';

class AntTiersTypeSelector extends StatelessWidget {
  const AntTiersTypeSelector({
    super.key,
    required this.isPvp,
    required this.type,
    required this.changeAntType,
  });

  final bool isPvp;
  final AntType type;

  final Function(AntType antType) changeAntType;

  bool ignoreType(AntType antType) {
    return (!isPvp && (antType == AntType.universal || antType == AntType.gss));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DraggableScrollConfiguration(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...AntType.values.map(
                (antType) => ignoreType(antType)
                    ? Container()
                    : Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              visualDensity: VisualDensity.compact,
                              foregroundColor: antType == type
                                  ? WidgetStateProperty.all<Color>(
                                      Theme.of(context).colorScheme.onPrimary,
                                    )
                                  : null,
                              backgroundColor: antType == type
                                  ? WidgetStateProperty.all<Color>(
                                      Theme.of(context).colorScheme.primary,
                                    )
                                  : null),
                          onPressed: () => changeAntType(antType),
                          child: Text(
                            antType.displayText(l10n).toUpperCase(),
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
    );
  }
}
