import 'package:flutter/material.dart';

class AntProfileImage extends StatelessWidget {
  const AntProfileImage({
    super.key,
    required this.imagePath,
    this.radius = 65.0,
    this.onTap,
  });

  final String imagePath;
  final double radius;
  final VoidCallback? onTap; // Optional callback for tap events

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        shape: const CircleBorder(),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: onTap,
        ),
      ),
    );
  }
}
