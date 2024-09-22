import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:ants_companion/domain/user_consent/user_consent.dart';
import 'package:flutter/material.dart';

class AdWidgetBuilder extends StatelessWidget {
  const AdWidgetBuilder({
    super.key,
    required this.child,
    this.isSliver = false,
  });

  final bool isSliver;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // UserConsent.initialize();
    final loadingBox = isSliver
        ? const SliverToBoxAdapter(child: SizedBox())
        : const SizedBox();
    // return FutureBuilder(
    //   future: AdsService.enabled(),
    //   builder: (context, snapshot) {
    //     final data = snapshot.data;

    //     if (data == null) return loadingBox;
    //     if (data == false) return loadingBox;
    //     return child;
    //   },
    // );
    return StreamBuilder(
      stream: AdsService.enabled(),
      builder: (context, snapshot) {
        final data = snapshot.data;

        if (data == null) return loadingBox;
        if (data == false) return loadingBox;
        return child;
      },
    );
  }
}
