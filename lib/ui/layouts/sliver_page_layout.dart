import 'package:ants_companion/app/ants_app_bar.dart';
import 'package:ants_companion/app/app_drawer.dart';

import 'package:flutter/material.dart';

class SliverPageLayout extends StatelessWidget {
  const SliverPageLayout({
    super.key,
    required this.title,
    required this.slivers,
    this.controller,
    this.floatingActionButton,
  });

  final String title;
  final List<Widget> slivers;

  final ScrollController? controller;

  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AntsAppBar(title: title),
      drawer: const SafeArea(child: AppDrawer()),
      body: CustomScrollView(
        controller: controller,
        slivers: [...slivers],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
