import 'package:flutter/material.dart';

class ModalSinglePageView extends StatelessWidget {
  const ModalSinglePageView({
    super.key,
    required this.controller,
    required this.child,
  });

  final ScrollController controller;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverToBoxAdapter(child: child),
      ],
    );
  }
}
