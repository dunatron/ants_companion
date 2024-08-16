import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';

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

    bool ignoreType(AntType antType) {
      return !isPvp && (antType == AntType.universal || antType == AntType.gss);
    }

    final antTypes = [
      ...AntType.values.where((antType) => !ignoreType(antType))
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DropdownButton<AntType>(
        value: type,
        items: List<DropdownMenuItem<AntType>>.from(
          antTypes.map(
            (antType) => DropdownMenuItem<AntType>(
              value: antType,
              child: Text(antType.displayText(l10n)),
            ),
          ),
        ),
        onChanged: (newAntType) =>
            newAntType != null ? changeAntType(newAntType) : null,
      ),
    );
  }
}
