import 'package:ants_companion/common/models/game_mode.dart';
import 'package:ants_companion/domain/ants/models/meta_troop.dart';

class MetaTroopsLocal {
  static List<MetaTroop> metaTroopsList() {
    return [
      guardianEnvironmentMeta(),
      guardianEnvironmentMetaFree(),
      shooterEnvironmentMeta(),
      shooterEnvironmentMetaFree(),
      carrierEnvironmentMeta(),
      carrierEnvironmentMetaFree(),
    ];
  }

  // Guardians
  static MetaTroop guardianEnvironmentMeta() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: false,
        gameMode: GameMode.pve,
        frontRowAntId: 'proatta',
        middleRowAntId: 'atta_sexdens',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );

  static MetaTroop guardianEnvironmentMetaFree() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: true,
        gameMode: GameMode.pve,
        frontRowAntId: 'gold_armor',
        middleRowAntId: 'Leaf devouror',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );

  static MetaTroop guardianPlayerMeta() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: false,
        gameMode: GameMode.pve,
        frontRowAntId: 'proatta',
        middleRowAntId: 'atta_sexdens',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );

  static MetaTroop guardianPlayerMetaFree() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: false,
        gameMode: GameMode.pve,
        frontRowAntId: 'proatta',
        middleRowAntId: 'atta_sexdens',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );
  // Shooters
  static MetaTroop shooterEnvironmentMeta() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: false,
        gameMode: GameMode.pve,
        frontRowAntId: 'proatta',
        middleRowAntId: 'atta_sexdens',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );

  static MetaTroop shooterEnvironmentMetaFree() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: true,
        gameMode: GameMode.pve,
        frontRowAntId: 'gold_armor',
        middleRowAntId: 'Leaf devouror',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );

  static MetaTroop shooterPlayerMeta() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: false,
        gameMode: GameMode.pve,
        frontRowAntId: 'proatta',
        middleRowAntId: 'atta_sexdens',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );

  static MetaTroop shooterPlayerMetaFree() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: false,
        gameMode: GameMode.pve,
        frontRowAntId: 'proatta',
        middleRowAntId: 'atta_sexdens',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );
  // Carriers
  static MetaTroop carrierEnvironmentMeta() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: false,
        gameMode: GameMode.pve,
        frontRowAntId: 'proatta',
        middleRowAntId: 'atta_sexdens',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );

  static MetaTroop carrierEnvironmentMetaFree() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: true,
        gameMode: GameMode.pve,
        frontRowAntId: 'gold_armor',
        middleRowAntId: 'Leaf devouror',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );

  static MetaTroop carrierPlayerMeta() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: false,
        gameMode: GameMode.pve,
        frontRowAntId: 'proatta',
        middleRowAntId: 'atta_sexdens',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );

  static MetaTroop carrierPlayerMetaFree() => MetaTroop(
        troopMakeupType: TroopMakeupType.guardian,
        freeToPlay: false,
        gameMode: GameMode.pve,
        frontRowAntId: 'proatta',
        middleRowAntId: 'atta_sexdens',
        backRowAntId: 'hairy_panther',
        reason: "These 3 ants are the best for guardian PVP",
      );
}
