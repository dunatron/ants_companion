import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ants_companion/domain/ant_skills/models/ant_skill.dart';
import 'package:ants_companion/ui/ant_skills/extensions/ant_skill_description.dart';
import 'package:ants_companion/ui/ant_skills/extensions/ant_skill_title_extension.dart';

class AntSkillDetails extends StatelessWidget {
  const AntSkillDetails({super.key, required this.skill});

  final AntSkill skill;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    return Card(
      elevation: 0,
      // color: theme.colorScheme.surfaceContainerHighest,
      color: theme.colorScheme.surfaceContainerHigh,
      child: Container(
        margin: const EdgeInsets.all(16),
        width: double.infinity,
        constraints: const BoxConstraints(maxWidth: 400),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              skill.type.displayName(),
              style: theme.textTheme.labelSmall,
            ),
            Text(
              skill.skillTitle(l10n),
              style: theme.textTheme.bodyLarge,
            ),
            Text(
              skill.targetType.displayName(),
              style: theme.textTheme.bodySmall,
            ),
            const SizedBox(height: 8),
            if (skill.effectiveRange != null) ...[
              Text(
                'Effective Range: ${skill.effectiveRange}',
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
            ],
            Text(
              'Level 10',
              style: theme.textTheme.labelSmall,
            ),
            Text(skill.skillDescriptionLevel10(l10n)),
            const SizedBox(height: 16),
            Text(
              'Level 20',
              style: theme.textTheme.labelSmall,
            ),
            Text(skill.skillDescriptionLevel20(l10n)),
          ],
        ),
      ),
    );
  }
}
