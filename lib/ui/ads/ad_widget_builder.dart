import 'package:ants_companion/domain/ads/ads_service.dart';
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
    AdsService.preCheck();

    final loadingBox = isSliver
        ? const SliverToBoxAdapter(child: SizedBox())
        : const SizedBox();
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
