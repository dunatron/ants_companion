import 'package:ants_companion/domain/ant_skills/ant_skills.dart';
import 'package:ants_companion/domain/ants/models/ant_id.dart';
import 'package:ants_companion/ui/ant_skills/ant_skill_circle.dart';
import 'package:ants_companion/ui/ant_skills/ant_skill_details.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AntSkillsViewer extends StatefulWidget {
  const AntSkillsViewer({
    super.key,
    required this.antId,
  });

  final AntId antId;

  @override
  State<AntSkillsViewer> createState() => _AntSkillsViewerState();
}

class _AntSkillsViewerState extends State<AntSkillsViewer> {
  int selectedSkillMapKey = 2;
  @override
  Widget build(BuildContext context) {
    final AntSkills antSkills = GetIt.I();

    final skillsMap = antSkills.skillSetForAnt(widget.antId).skillsMap;

    final selectedSkill = skillsMap[selectedSkillMapKey];

    return Column(
      children: [
        // Top row of four circles
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: skillsMap.entries.take(4).map((entry) {
            int skillKey = entry.key;
            return AntSkillCircle(
              index: skillKey,
              selected: skillKey == selectedSkillMapKey,
              onTap: () {
                setState(() {
                  selectedSkillMapKey = skillKey;
                });
              },
            );
          }).toList(),
        ),
        // Bottom row of four circles
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: skillsMap.entries.skip(4).map((entry) {
            int skillKey = entry.key;
            return AntSkillCircle(
              index: skillKey,
              selected: skillKey == selectedSkillMapKey,
              onTap: () {
                setState(() {
                  selectedSkillMapKey = skillKey;
                });
              },
            );
          }).toList(),
        ),
        if (selectedSkill != null) ...[
          SizedBox(
            height: 16,
          ),
          AntSkillDetails(skill: selectedSkill),
        ],
      ],
    );
  }
}
