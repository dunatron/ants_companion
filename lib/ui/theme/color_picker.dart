import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({
    super.key,
    required this.selectedColor,
    required this.onTap,
  });

  final Color selectedColor;

  final Function(Color color) onTap;

  @override
  Widget build(BuildContext context) {
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
                radius: 40,
                // splashColor: it.withOpacity(0.3), // Splash color
                splashColor: it,
                borderRadius: BorderRadius.all(Radius.circular(100)),
                onTap: () {
                  onTap(it);
                },

                child: Container(
                  padding: EdgeInsets.all(8),
                  child: CustomPaint(
                    size: Size(42, 42),
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
