import 'package:ants_companion/domain/ant_skills/models/ant_skill.dart';

class AntSkillSet {
  const AntSkillSet({
    AntSkill? skill1,
    AntSkill? skill2,
    AntSkill? skill3,
    AntSkill? skill4,
    AntSkill? skill5,
    AntSkill? skill6,
    AntSkill? skill7,
    AntSkill? skill8,
  })  : skill1 = skill1 ?? const DominanceThree(),
        skill2 = skill2 ?? const AntSkillNotImplemented(),
        skill3 =
            skill3 ?? const TertiaryDefense(percentage10: 30, percentage20: 55),
        skill4 =
            skill4 ?? const TertiaryAttack(percentage10: 30, percentage20: 55),
        skill5 = skill5 ?? const AntSkillNotImplemented(),
        skill6 = skill6 ?? const AntSkillNotImplemented(),
        skill7 = skill7 ?? const AntSkillNotImplemented(),
        skill8 = skill8 ?? const AntSkillNotImplemented();

  final AntSkill skill1;
  final AntSkill skill2;
  final AntSkill skill3;
  final AntSkill skill4;
  final AntSkill skill5;
  final AntSkill skill6;
  final AntSkill skill7;
  final AntSkill skill8;

  List<AntSkill> get skillsList =>
      [skill1, skill2, skill3, skill4, skill5, skill6, skill7, skill8];

  Map<int, AntSkill> get skillsMap => {
        1: skill1,
        2: skill2,
        3: skill3,
        4: skill4,
        5: skill5,
        6: skill6,
        7: skill7,
        8: skill8,
      };
}
