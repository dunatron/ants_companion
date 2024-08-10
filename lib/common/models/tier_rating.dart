// enum TierRating { meta, f2pMeta, s, a, b, f,  }

import 'package:flutter/material.dart';

enum TierRating {
  sPlus(
    order: 2,
    color: Colors.red,
  ),
  s(
    order: 2,
    color: Colors.orange,
  ),
  a(
    order: 3,
    color: Colors.purple,
  ),
  b(
    order: 4,
    color: Colors.green,
  ),
  c(
    order: 5,
    color: Colors.teal,
  ),
  d(
    order: 5,
    color: Colors.lightBlue,
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
        TierRating.sPlus => 'S+',
        TierRating.s => 'S',
        TierRating.a => 'A',
        TierRating.b => 'B',
        TierRating.c => 'C',
        TierRating.d => 'D',
        TierRating.f => 'F',
      };

  final int order;
  final Color color;
}
