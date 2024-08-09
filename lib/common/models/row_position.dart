import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum RowPosition {
  front,
  middle,
  back;

  String displayText(AppLocalizations l10n) => switch (this) {
        RowPosition.front => l10n.rowPositionFront,
        RowPosition.middle => l10n.rowPositionMiddle,
        RowPosition.back => l10n.rowPositionBack,
      };
}
