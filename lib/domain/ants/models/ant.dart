import 'package:ants_companion/common/models/tier_rating.dart';
import 'package:ants_companion/domain/ants/models/ant_external_link.dart';
import 'package:ants_companion/domain/ants/models/ant_id.dart';
import 'package:ants_companion/domain/ants/models/ant_scientific_classification.dart';
import 'package:ants_companion/domain/ants/models/ant_role.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:ants_companion/domain/ants/models/ant_type.dart';
import 'package:ants_companion/domain/scientific_classifications/models/scientific_species.dart';
import 'package:equatable/equatable.dart';

class Ant extends Equatable {
  const Ant({
    required this.id,
    required this.name,
    required this.scientificName,
    required this.species,
    this.scientificClassification,
    this.externalLinks = const [],
    required this.type,
    required this.role,
    required this.tierTags,
  });

  final AntId id;
  final String name;
  final String scientificName;
  final ScientificSpecies species;
  final AntScientificClassification? scientificClassification;
  final List<AntExternalLink> externalLinks;

  String get profilePath =>
      'assets/ant_profile_images/${id.profilePathKey()}.jpg';

  final AntType type;
  final AntRole role;

  final List<AntTierTag> tierTags;

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

  @override
  List<Object?> get props => [name];
}

extension on List<AntTierTag> {
  List<AntTierTag> sortByRating() {
    final tags = this;
    tags.sort((a, b) => a.rating.order.compareTo(b.rating.order));
    return tags;
  }

  TierRating topTierRating() {
    if (isEmpty) {
      return TierRating.d;
    }
    return map((e) => e.rating)
        .reduce((current, next) => current.order < next.order ? current : next);
  }
}
