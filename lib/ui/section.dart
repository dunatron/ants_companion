import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    this.padding,
    this.color,
    required this.child,
  });

  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: padding ?? const EdgeInsets.fromLTRB(16, 0, 16, 24),
      child: child,
    );
  }
}
