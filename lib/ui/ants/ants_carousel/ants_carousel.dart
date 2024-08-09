import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/ants/models/ant.dart';

import 'package:ants_companion/ui/ants/ant_card/ant_card_2.dart';
import 'package:ants_companion/ui/draggable_scroll_configuration.dart';

import 'package:flutter/material.dart';

final GlobalKey antsCarouselKey = GlobalKey();

class AntsCarousel extends StatefulWidget {
  const AntsCarousel({
    super.key,
    required this.id,
    required this.ants,
    this.onCardImageTap,
  });

  final String id;
  final List<Ant> ants;

  final Function(Ant ant)? onCardImageTap;

  @override
  State<AntsCarousel> createState() => _AntsCarouselState();
}

class _AntsCarouselState extends State<AntsCarousel>
    with WidgetsBindingObserver {
  late CarouselController _carouselController;

  double availableItemWidth = 400;

  void goToIndex(final int pageIndex) => _carouselController.animateTo(
        pageIndex * 400,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    _initializePageController();

    super.initState();
  }

  /// Get size screen
  Size get screenSize => MediaQuery.of(context).size;

  void _initializePageController() {
    _carouselController = CarouselController(initialItem: 0);
    _carouselController.addListener(() {
      Scrollable.ensureVisible(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        antsCarouselKey.currentContext!,
      );
    });
  }

  @override
  void dispose() {
    _carouselController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double height = 300;

    // Convert the set to a list
    List<String> sortedLetters = widget.ants.getFirstLetters().toList();

    // Sort the list alphabetically
    sortedLetters.sort();

    return Column(
      key: antsCarouselKey,
      children: [
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: height),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 400) {
                  availableItemWidth = constraints.maxWidth;
                }

                return CarouselView(
                  controller: _carouselController,
                  itemSnapping: true,
                  itemExtent: 400,
                  shrinkExtent: 240,
                  shape: Border.all(width: 2, color: Colors.transparent),
                  padding: const EdgeInsets.all(8),
                  onTap: (index) {
                    final ant = widget.ants[index];
                    widget.onCardImageTap!(ant);
                  },
                  children: List<Widget>.generate(
                    widget.ants.length,
                    (int index) => AntCard2(ant: widget.ants[index]),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
              Spacing.l, Spacing.l, Spacing.l, Spacing.vl),
          child: DraggableScrollConfiguration(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...sortedLetters.map(
                    (letter) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ElevatedButton(
                          onPressed: () => goToIndex(widget.ants
                              .indexOfFirstLetterFoundOnName(letter)),
                          child: Text(letter)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

extension on List<Ant> {
  Set<String> getFirstLetters() {
    Set<String> firstLetters = <String>{};

    for (Ant item in this) {
      if (item.name.isNotEmpty) {
        firstLetters.add(item.name[0]);
      }
    }

    return firstLetters;
  }

  int indexOfFirstLetterFoundOnName(String letter) {
    for (int i = 0; i < length; i++) {
      if (this[i].name.isNotEmpty &&
          this[i].name[0].toUpperCase() == letter.toUpperCase()) {
        return i;
      }
    }
    return -1;
  }
}
