import 'package:equatable/equatable.dart';

sealed class AntSkill extends Equatable {
  const AntSkill();

  @override
  List<Object?> get props => [];
}

class DominanceThree extends AntSkill {
  const DominanceThree();
}

class TertiaryDefense extends AntSkill {
  const TertiaryDefense({
    required this.percentage,
  });

  final double percentage;
}

class TertiaryAttack extends AntSkill {
  const TertiaryAttack({
    required this.percentage,
  });

  final double percentage;
}

// Golden Crystal
class BattleFeverSkill extends AntSkill {
  const BattleFeverSkill();
}
