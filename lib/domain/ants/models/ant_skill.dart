import 'package:equatable/equatable.dart';

sealed class AntSkill extends Equatable {
  const AntSkill({
    required this.name,
    required this.description,
    required this.effects,
  });

  final String name;
  final String description;

  final List<SkillEffect> effects;

  @override
  List<Object?> get props => [name, description];
}

class CommandSkill extends AntSkill {
  const CommandSkill({
    required super.name,
    required super.description,
    super.effects = const [],
  });
}

class PreCombatSkill extends AntSkill {
  const PreCombatSkill({
    required super.name,
    required super.description,
    super.effects = const [],
  });
}

class CombatSkill extends AntSkill {
  const CombatSkill({
    required super.name,
    required super.description,
    required this.range,
    required this.chance,
    super.effects = const [],
  });

  final int range;
  final double chance;
}

sealed class SkillEffect {
  const SkillEffect();
}

class DamageSkillEffect extends SkillEffect {
  const DamageSkillEffect(this.damage);
  final int damage;
}
