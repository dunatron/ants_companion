// import 'package:ants_companion/app/ants_app_bar.dart';
// import 'package:ants_companion/app/app_drawer.dart';

// import 'package:flutter/material.dart';

// class PageLayout extends StatelessWidget {
//   const PageLayout({
//     super.key,
//     required this.title,
//     required this.slivers,
//     this.controller,
//     this.floatingActionButton,
//   });
//   final String title;
//   final List<Widget> slivers;

//   final ScrollController? controller;

//   final Widget? floatingActionButton;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             pinned: false,
//             floating: true,
//             expandedHeight: 80,
//             flexibleSpace: FlexibleSpaceBar(
//               centerTitle: true,
//               title: Row(
//                 children: [],
//               ),
//             ),
//           ),
//           // SliverPersistentHeader(
//           //     pinned: true,
//           //     delegate: SafeAreaPersistentHeaderDelegate(
//           //         expandedHeight: 200,
//           //         child: Image.asset('assets/YOUR_IMAGE.png'))),
//           SliverSafeArea(
//               sliver: SliverList(
//             delegate: SliverChildListDelegate(
//               [
//                 ...slivers,
//               ],
//             ),
//           ))
//         ],
//       ),
//     );
//   }
// }

// class SafeAreaPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
//   final Widget child;

//   final double expandedHeight;

//   SafeAreaPersistentHeaderDelegate(
//       {required this.child, required this.expandedHeight});

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return SafeArea(bottom: false, child: SizedBox.expand(child: child));
//   }

//   @override
//   double get maxExtent => expandedHeight;

//   @override
//   double get minExtent => kToolbarHeight;

//   @override
//   bool shouldRebuild(SafeAreaPersistentHeaderDelegate old) {
//     if (old.child != child) {
//       return true;
//     }
//     return false;
//   }
// }

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
      drawer: const SafeArea(child: AppDrawer()),
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
