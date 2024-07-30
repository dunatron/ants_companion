// enum TierRating { meta, f2pMeta, s, a, b, f,  }

import 'package:flutter/material.dart';

enum TierRating {
  s(
    order: 2,
    color: Colors.yellow,
  ),
  a(
    order: 3,
    color: Colors.purple,
  ),
  b(
    order: 4,
    color: Colors.blue,
  ),
  c(
    order: 5,
    color: Colors.green,
  ),
  f(
    order: 6,
    color: Colors.grey,
  );

  const TierRating({
    required this.order,
    required this.color,
  });

  String get displayText => switch (this) {
        TierRating.s => 'S',
        TierRating.a => 'A',
        TierRating.b => 'B',
        TierRating.c => 'C',
        TierRating.f => 'F',
      };

  final int order;
  final Color color;
}
