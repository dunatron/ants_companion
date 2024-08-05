import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FeatureMasonryGrid extends StatelessWidget {
  const FeatureMasonryGrid({super.key, required this.items});

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // Define the minimum column count
    const minColumns = 1;
    // Calculate the number of columns based on the screen width, ensuring it's at least minColumns
    final crossAxisCount = (size.width / 300)
        .clamp(minColumns.toDouble(), double.infinity)
        .toInt();
    return SliverMasonryGrid.count(
      crossAxisCount: crossAxisCount,
      childCount: items.length,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      itemBuilder: (context, index) {
        final item = items[index];
        return item;
      },
    );
  }
}
