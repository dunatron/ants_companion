enum AntSkillType {
  combatSkill,
  preCombatSkill,
  commandSkill,
  statusSkill;

  String displayName() => switch (this) {
        AntSkillType.combatSkill => 'Combat Skill',
        AntSkillType.preCombatSkill => 'Pre-combat Skill',
        AntSkillType.commandSkill => 'Command Skill',
        AntSkillType.statusSkill => 'Status Skill',
      };
}
