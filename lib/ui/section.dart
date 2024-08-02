import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    this.padding,
    required this.child,
  });

  final EdgeInsetsGeometry? padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.fromLTRB(16, 0, 16, 24),
      child: child,
    );
  }
}
