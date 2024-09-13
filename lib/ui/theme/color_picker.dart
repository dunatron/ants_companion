import 'package:ants_companion/common/spacing.dart';
import 'package:flutter/material.dart';

// DO not do premature optimize
// leave it raw for as long as possible.
// optimize for memory, not us
// Do not forget us, make code Beautiful
// It means abstract late, just make sure ya do :)
class ColorPicker extends StatelessWidget {
  const ColorPicker({
    super.key,
    required this.selectedColor,
    required this.onTap,
  });

  final Color selectedColor;

  final Function(Color color) onTap;

/*
Laving some comments for a breadcrumb.
Bahhh
*/
  @override
  Widget build(BuildContext context) {
    const circleBorderRadius = BorderRadius.all(Radius.circular(100));

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...Colors.primaries.map(
            (it) => Container(
              decoration: BoxDecoration(
                border: selectedColor == it
                    ? Border.all(color: it, width: 2)
                    : Border.all(color: Colors.transparent, width: 2),
                shape: BoxShape.circle,
              ),
              child: InkWell(
                radius: 40, // optimize
                splashColor: it,
                borderRadius: circleBorderRadius,
                onTap: () => onTap(it),
                child: Container(
                  padding: const EdgeInsets.all(Spacing.n),
                  child: CustomPaint(
                    size: const Size(42, 42), // optimize i.e why its
                    // calculating a number known for so many entries
                    painter: CirclePainter(color: it),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final Color color;

  CirclePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill; // Use fill style to paint the circle

    final radius = size.width / 2;
    final center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
