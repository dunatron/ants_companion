import 'dart:math';

import 'package:flutter/material.dart';

class ConstrainedSliverWidth extends StatelessWidget {
  const ConstrainedSliverWidth({
    super.key,
    required this.maxWidth,
    required this.child,
  });

  final double maxWidth;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var padding = (size.width - maxWidth) / 2;
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: max(padding, 0)),
      sliver: child,
    );
  }
}
