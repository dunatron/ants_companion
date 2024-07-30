import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant_skill.dart';
import 'package:ants_companion/domain/ants/models/ant_role.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:equatable/equatable.dart';

class Ant extends Equatable {
  const Ant({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.role,
    required this.tierTags,
    this.skills = const [],
  });

  final String id;
  final String name;
  final String description;

  // String get profilePath => 'assets/ants/profile_images/$id.jpg';
  String get profilePath => 'assets/ants/tiny/profile_images/$id.jpg';

  final AntType type;
  final AntRole role;

  final List<AntTierTag> tierTags;

  final List<AntSkill> skills;

  TierRating topPveRating() =>
      tierTags.whereType<AntPveTierTag>().toList().topTierRating();

  TierRating topPvpRating() =>
      tierTags.whereType<AntPvpTierTag>().toList().topTierRating();

  List<AntTierTag> tierTagsByType<AntTierTag>() =>
      tierTags.whereType<AntTierTag>().toList();

  List<AntPveTierTag> get pveTierTags {
    final tags = tierTags.whereType<AntPveTierTag>().toList();
    tags.sortByRating();
    return tags;
  }

  List<AntPvpTierTag> get pvpTierTags {
    final tags = tierTags.whereType<AntPvpTierTag>().toList();
    tags.sortByRating();
    return tags;
  }

  factory Ant.empty() => emptyAnt;

  factory Ant.fakeSkeletonizer() => fakeSkeletonizerAnt;

  @override
  List<Object?> get props => [name, description];
}

const emptyAnt = Ant(
  id: '',
  name: '',
  description: '',
  type: AntType.universal,
  role: AntRole.melee,
  tierTags: [],
);

final fakeSkeletonizerAnt = Ant(
  id: '',
  name: 'Fake Skeletonizer',
  description: 'Fake skeletonizer description text',
  type: AntType.universal,
  role: AntRole.melee,
  tierTags: [
    AntPvpTierTag.fakeSkeletonizer(),
    AntPvpTierTag.fakeSkeletonizer(rating: TierRating.meta),
    AntPveTierTag.fakeSkeletonizer(),
    AntPveTierTag.fakeSkeletonizer(rating: TierRating.meta)
  ],
);

extension on List<AntTierTag> {
  List<AntTierTag> sortByRating() {
    final tags = this;
    tags.sort((a, b) => a.rating.order.compareTo(b.rating.order));
    return tags;
  }

  TierRating topTierRating() {
    if (isEmpty) {
      return TierRating.f;
    }
    return map((e) => e.rating)
        .reduce((current, next) => current.order < next.order ? current : next);
  }
}
