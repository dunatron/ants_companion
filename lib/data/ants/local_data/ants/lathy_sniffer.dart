part of '../local_ants_list.dart';

const lathySniffer = Ant(
  id: 'lathy_sniffer',
  name: 'Lathy Sniffer',
  description: '',
  scientificName: '',
  type: AntType.shooter,
  role: AntRole.ranged,
  tierTags: [
    ...lathySnifferPveTags,
    ...lathySnifferPvpTags,
  ],
);

const lathySnifferPveTags = [
  AntPveTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'Best shooter option for PVE',
  ),
];

const lathySnifferPvpTags = [
  AntPvpTierTag(
    rating: TierRating.s,
    antType: AntType.shooter,
    rowPosition: RowPosition.back,
    reason: 'Simply the best shooter ants in the game. '
        'Deals extremely high ramping damage',
  ),
];
