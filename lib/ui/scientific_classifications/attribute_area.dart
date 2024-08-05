import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';

class AttributeArea<T> extends StatelessWidget {
  const AttributeArea({
    super.key,
    required this.title,
    required this.description,
    required this.antsWithAttribute,
    required this.totalAnts,
    required this.items,
    required this.nameItemBuilder,
    required this.onPressed,
    this.padding = const EdgeInsets.all(Spacing.vl),
  });

  final String title;

  final String description;

  final int antsWithAttribute;

  final int totalAnts;

  final String Function(T item, int index) nameItemBuilder;

  final Function(T v) onPressed;

  final List<T> items;

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: textTheme.headlineMedium),
          const SizedBox(height: Spacing.l),
          Text(description, style: textTheme.bodyLarge),
          const SizedBox(height: Spacing.l),
          Text('$antsWithAttribute / $totalAnts have a $title',
              style: textTheme.bodyLarge),
          const SizedBox(height: Spacing.l),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: List.generate(items.length, (index) {
              final item = items[index];
              return ElevatedButton(
                onPressed: () => onPressed(item),
                child: Text(nameItemBuilder(item, index)),
              );
            }),
          )
        ],
      ),
    );
  }
}
