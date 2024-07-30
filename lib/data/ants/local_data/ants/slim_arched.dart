part of '../local_ants_list.dart';

const slimArched = Ant(
  id: 'slim_arched',
  name: 'Slim Arched',
  description: '',
  type: AntType.universal,
  role: AntRole.melee,
  tierTags: [
    ...slimArchedPveTags,
    ...slimArchedPvpTags,
  ],
);

const slimArchedPveTags = [
  AntPveTierTag(
    rating: TierRating.b,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason: 'Deals an ok amount of damage',
  ),
];

const slimArchedPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.universal,
    rowPosition: RowPosition.front,
    reason:
        'Deals an ok amount of damage while providing crowd control and self healing',
  ),
];
