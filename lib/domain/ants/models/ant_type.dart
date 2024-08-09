import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum AntType {
  guardian,
  shooter,
  carrier,
  universal,
  gss;

  String displayText(AppLocalizations l10n) => switch (this) {
        AntType.guardian => l10n.antTypeGuardian,
        AntType.shooter => l10n.antTypeShooter,
        AntType.carrier => l10n.antTypeCarrier,
        AntType.universal => l10n.antTypeUniversal,
        AntType.gss => '${l10n.antTypeGuardian.substring(0, 1)}'
            '${l10n.antTypeShooter.substring(0, 1)}'
            '${l10n.antTypeShooter.substring(0, 1)}',
        // AntType.gss => l10n.antTypeGSS,
      };
}
