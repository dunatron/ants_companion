import 'package:ants_companion/domain/ants/models/ant.dart';
import 'package:ants_companion/domain/ants/models/ant_tier_tag.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

class AntTierDetailsViewModelData extends Equatable {
  const AntTierDetailsViewModelData({
    required this.ant,
    required this.tierTag,
  });
  final Ant ant;

  final AntTierTag tierTag;

  AntTierDetailsViewModelData copyWith({
    final Ant? ant,
    final AntTierTag? tierTag,
  }) =>
      AntTierDetailsViewModelData(
        ant: ant ?? this.ant,
        tierTag: tierTag ?? this.tierTag,
      );

  @override
  List<Object?> get props => [ant, tierTag];
}

class AntTierDetailsViewModel {
  AntTierDetailsViewModel({
    required Ant ant,
    required AntTierTag tierTag,
  }) : _subject = BehaviorSubject.seeded(
          AntTierDetailsViewModelData(ant: ant, tierTag: tierTag),
        );

  final BehaviorSubject<AntTierDetailsViewModelData> _subject;

  Stream<AntTierDetailsViewModelData> data() =>
      _subject.stream.asBroadcastStream();

  changeSelectedTierTag(final AntTierTag tierTag) {
    final newValue = _subject.stream.value.copyWith(tierTag: tierTag);

    _subject.add(newValue);
  }

  void dispose() {
    _subject.close();
  }
}
