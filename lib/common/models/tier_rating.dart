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
      };

  int get starCount => switch (this) {
        TierRating.sPlus => 6,
        TierRating.s => 5,
        TierRating.a => 4,
        TierRating.b => 3,
        TierRating.c => 2,
        TierRating.d => 1,
      };

  final int order;
  final Color color;
}
