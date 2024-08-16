import 'package:ants_companion/ui/ant_tiers/ant_tier_details/view_model/ant_tier_details_view_model.dart';
// import 'package:ants_companion/ui/section.dart';
import 'package:flutter/material.dart';

class AntTierDetailsReason extends StatelessWidget {
  const AntTierDetailsReason({super.key, required this.viewModel});

  final AntTierDetailsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
    // return StreamBuilder(
    //   stream: viewModel.data(),
    //   builder: (context, snapshot) {
    //     final data = snapshot.data;
    //     if (data == null) {
    //       return const SizedBox();
    //     }
    //     return Section(
    //       child: Text(
    //         data.tierTag.reason,
    //         style: Theme.of(context).textTheme.bodyLarge,
    //       ),
    //     );
    //   },
    // );
  }
}
