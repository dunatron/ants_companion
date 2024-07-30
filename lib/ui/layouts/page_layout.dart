import 'package:ants_companion/app/ants_app_bar.dart';
import 'package:ants_companion/app/app_drawer.dart';

import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  const PageLayout({
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
      drawer: const AppDrawer(),
      body: CustomScrollView(
        controller: controller,
        slivers: [
          AntsAppBar(title: title),
          ...slivers,
        ],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
