import 'package:ants_companion/common/models/row_position.dart';
import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:equatable/equatable.dart';

sealed class AntTierTag extends Equatable {
  const AntTierTag({
    required this.rating,
    required this.antType,
    required this.reason,
    required this.rowPosition,
  });

  final TierRating rating;
  final AntType antType;
  final String reason;
  final RowPosition rowPosition;

  @override
  List<Object?> get props => [rating, reason];
}

class AntPveTierTag extends AntTierTag {
  const AntPveTierTag({
    required super.rating,
    required super.antType,
    required super.reason,
    required super.rowPosition,
  });

  factory AntPveTierTag.fakeSkeletonizer({TierRating? rating}) => AntPveTierTag(
        rating: rating ?? TierRating.f,
        antType: AntType.carrier,
        reason: 'This is fake data used for Skeletonizer',
        rowPosition: RowPosition.front,
      );

  @override
  List<Object?> get props => [rating, reason];
}

class AntPvpTierTag extends AntTierTag {
  const AntPvpTierTag({
    required super.rating,
    required super.reason,
    required super.antType,
    required super.rowPosition,
  });

  factory AntPvpTierTag.fakeSkeletonizer({TierRating? rating}) => AntPvpTierTag(
        antType: AntType.carrier,
        rating: rating ?? TierRating.f,
        reason: 'This is fake data used for Skeletonizer',
        rowPosition: RowPosition.front,
      );

  @override
  List<Object?> get props => [rating, reason, rowPosition];
}
