import 'package:flutter/material.dart';

class AntSkillCircle extends StatelessWidget {
  const AntSkillCircle({
    super.key,
    required this.index,
    required this.selected,
    required this.onTap,
  });

  final int index;

  final bool selected;

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final circleColor = selected
        ? theme.colorScheme.primary
        : theme.colorScheme.surfaceContainerHigh;

    final textColor =
        selected ? theme.colorScheme.onPrimary : theme.colorScheme.onSurface;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: circleColor),
        child: Center(
          child: Text(
            '$index',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
