enum AntSkillTargetType {
  itsSquad,
  allSquadsInTroop,
  oneRandomEnemyWithinRange,
  twoRandomEnemyWithinRange,
  threeRandomEnemyWithinRange,
  oneRandomFriendlyWithinRange,
  twoRandomFriendlyWithinRange,
  twoOtherFriendlyWithinRange,
  enemyFrontline,
  enemySquadInLastRow,
  ourFrontline,
  enemySquadWithHighestPower,
  itsSquadAndOneFriendlyWithinRange,
  allSquadsInCombat;

  String displayName() => switch (this) {
        AntSkillTargetType.itsSquad => 'Its squad',
        AntSkillTargetType.allSquadsInTroop => 'All squads in its troop',
        AntSkillTargetType.oneRandomEnemyWithinRange =>
          'One random enemy squad within effective range',
        AntSkillTargetType.twoRandomEnemyWithinRange =>
          'Two random enemy squads within effective range',
        AntSkillTargetType.threeRandomEnemyWithinRange =>
          'Three random enemy squads within effective range',
        AntSkillTargetType.twoRandomFriendlyWithinRange =>
          'Two random friendly squads within effective range',
        AntSkillTargetType.twoOtherFriendlyWithinRange =>
          '2 other friendly squads within effective range',
        AntSkillTargetType.enemyFrontline => 'Enemys Front Line',
        AntSkillTargetType.enemySquadInLastRow =>
          'The enemy squad in the last row',
        AntSkillTargetType.oneRandomFriendlyWithinRange =>
          '1 random friendly squad within effective range',
        AntSkillTargetType.ourFrontline => 'Our Front Line',
        AntSkillTargetType.enemySquadWithHighestPower =>
          'The Enemy Squad with the Highest Power',
        AntSkillTargetType.itsSquadAndOneFriendlyWithinRange =>
          'Its squad and 1 random friendly squad within effective range',
        AntSkillTargetType.allSquadsInCombat => 'All squads in combat',
      };
}
