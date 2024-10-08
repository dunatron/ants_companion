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
    this.forceAsHome = false,
  });

  final String title;
  final List<Widget> actions;
  final List<Widget> slivers;

  final ScrollController? controller;

  final Widget? floatingActionButton;

  final bool forceAsHome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AntsAppBar(
        title: title,
        actions: actions,
        forceAsHome: forceAsHome,
      ),
      drawer: SafeArea(child: AppDrawer()),
      body: CustomScrollView(
        controller: controller,
        slivers: [...slivers],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
