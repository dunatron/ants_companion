enum AntSkillType {
  combatSkill,
  preCombatSkill,
  commandSkill;

  String displayName() => switch (this) {
        AntSkillType.combatSkill => 'Combat Skill',
        AntSkillType.preCombatSkill => 'Pre-combat Skill',
        AntSkillType.commandSkill => 'Command Skill',
      };
}
