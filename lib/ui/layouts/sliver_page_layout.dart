import 'package:ants_companion/app/ants_app_bar.dart';
import 'package:ants_companion/app/app_drawer.dart';

import 'package:flutter/material.dart';

class SliverPageLayout extends StatelessWidget {
  const SliverPageLayout({
    super.key,
    required this.title,
    this.actions = const [],
    required this.slivers,
    this.controller,
    this.floatingActionButton,
  });

  final String title;
  final List<Widget> actions;
  final List<Widget> slivers;

  final ScrollController? controller;

  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AntsAppBar(
        title: title,
        actions: actions,
      ),
      drawer: const SafeArea(child: AppDrawer()),
      body: CustomScrollView(
        controller: controller,
        slivers: [...slivers],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
