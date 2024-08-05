import 'package:flutter/material.dart';

class NestedPageLayout extends StatelessWidget {
  const NestedPageLayout({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              title: Text(
                "Responsive Sliver",
              ),
              centerTitle: true,
              pinned: true,
              floating: true,
            ),
          ];
        },
        body: child,
      ),
    );
  }
}
