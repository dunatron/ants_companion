import 'package:ants_companion/app/ants_app_bar.dart';
import 'package:ants_companion/app/app_drawer.dart';

import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  const PageLayout({
    super.key,
    required this.title,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.constraints,
    required this.widgets,
    this.controller,
    this.floatingActionButton,
    this.padding,
  });

  final String title;
  final List<Widget> widgets;

  final ScrollController? controller;

  final Widget? floatingActionButton;

  final CrossAxisAlignment crossAxisAlignment;

  final BoxConstraints? constraints;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final column = Column(
      crossAxisAlignment: crossAxisAlignment,
      children: widgets,
    );

    final childWidget = constraints != null
        ? Center(
            child: Container(
              alignment: Alignment.center,
              constraints: constraints,
              child: column,
            ),
          )
        : column;
    return Scaffold(
      appBar: AntsAppBar(title: title),
      drawer: SafeArea(child: AppDrawer()),
      // body: Center(
      //   child: SingleChildScrollView(
      //     padding: padding,
      //     child: childWidget,
      //   ),
      // ),
      body: SingleChildScrollView(
        padding: padding,
        child: childWidget,
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
