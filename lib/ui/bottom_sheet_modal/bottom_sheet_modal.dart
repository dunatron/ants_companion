import 'package:ants_companion/ui/modal_single_page_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<T?> buildBottomSheetModal<T>(
  final BuildContext context,
  final Widget widget,
) =>
    showModalBottomSheet(
      // backgroundColor: Theme.of(context).canvasColor,
      // backgroundColor: Theme.of(context).colorScheme.surface,
      // Probably surfaceContainerLowest or straight surface
      // backgroundColor: Theme.of(context).colorScheme.surface,
      // backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (BuildContext _) => BottomSheetModal(child: widget),
    );

class BottomSheetModal extends StatelessWidget {
  const BottomSheetModal({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DraggableScrollableSheet(
        maxChildSize: 1,
        initialChildSize: kIsWeb ? 0.8 : 0.5,
        expand: false,
        builder: (
          BuildContext context,
          ScrollController scrollController,
        ) =>
            ModalSinglePageView(
          controller: scrollController,
          child: child,
        ),
      ),
    );
  }
}
