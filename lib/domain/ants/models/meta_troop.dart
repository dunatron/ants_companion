import 'package:ants_companion/common/models/game_mode.dart';

/// A model representing a meta lineup for either PVP or PVE
/// Contains three ants for the lineup
class MetaTroop {
  MetaTroop({
    required this.freeToPlay,
    required this.gameMode,
    required this.troopMakeupType,
    required this.frontRowAntId,
    required this.middleRowAntId,
    required this.backRowAntId,
    required this.reason,
  });

  final bool freeToPlay;

  final GameMode gameMode;

  final TroopMakeupType troopMakeupType;

  final String frontRowAntId;
  final String middleRowAntId;
  final String backRowAntId;
  final String reason;
}

enum TroopMakeupType { guardian, shooter, carrier, gss }
