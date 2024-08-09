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
  List<Object?> get props => [rating, antType, reason, rowPosition];
}

class AntPveTierTag extends AntTierTag {
  const AntPveTierTag({
    required super.rating,
    required super.antType,
    required super.reason,
    required super.rowPosition,
  });

  @override
  List<Object?> get props => [...super.props];
}

class AntPvpTierTag extends AntTierTag {
  const AntPvpTierTag({
    required super.rating,
    required super.reason,
    required super.antType,
    required super.rowPosition,
  });

  @override
  List<Object?> get props => [...super.props];
}
