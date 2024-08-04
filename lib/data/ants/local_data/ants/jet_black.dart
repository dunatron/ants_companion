part of '../local_ants_list.dart';

const jetBlack = Ant(
  id: 'jet_black',
  name: 'Jet Black',
  description: '',
  scientificName: 'Plectroctena cristata',
  type: AntType.guardian,
  role: AntRole.melee,
  tierTags: [
    ...jetBlackPveTags,
    ...jetBlackPvpTags,
  ],
);

const jetBlackPveTags = [
  AntPveTierTag(
    rating: TierRating.f,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason: terribleForPveF,
  ),
];

const jetBlackPvpTags = [
  AntPvpTierTag(
    rating: TierRating.a,
    antType: AntType.guardian,
    rowPosition: RowPosition.front,
    reason:
        'A solid guardian front liner which can punish normal attack spammers',
  ),
];
